package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.zywork.common.BeanUtils;
import top.zywork.common.TransactionNoGenerator;
import top.zywork.dao.AccountDetailDAO;
import top.zywork.dao.UserWalletDAO;
import top.zywork.dao.WeixinTaskDAO;
import top.zywork.dos.RateConfig;
import top.zywork.dos.WeixinTaskDO;
import top.zywork.dto.WeixinTaskDTO;
import top.zywork.enums.FundsChangeTypeEnum;
import top.zywork.enums.SysConfigEnum;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.SysConfigService;
import top.zywork.service.WeixinTaskService;
import top.zywork.vo.AccountDetailVO;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.UserWalletVO;
import top.zywork.vo.WeixinTaskVO;

import javax.annotation.PostConstruct;
import java.util.Date;

/**
 * WeixinTaskServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinTaskService")
@Transactional
public class WeixinTaskServiceImpl extends AbstractBaseService implements WeixinTaskService {

    private WeixinTaskDAO weixinTaskDAO;

    private UserWalletDAO userWalletDAO;

    private AccountDetailDAO accountDetailDAO;

    @Autowired
    public void setWeixinTaskDAO(WeixinTaskDAO weixinTaskDAO) {
        super.setBaseDAO(weixinTaskDAO);
        this.weixinTaskDAO = weixinTaskDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinTaskDO.class, WeixinTaskDTO.class);
    }

    @Override
    public ResponseStatusVO createTask(WeixinTaskVO weixinTaskVO, RateConfig rateConfig) {
        int version = userWalletDAO.getVersionById(weixinTaskVO.getUserId());
        Object obj = userWalletDAO.getById(weixinTaskVO.getUserId());
        if(obj != null) {
            UserWalletVO userWalletVO = BeanUtils.copy(obj, UserWalletVO.class);
            if(userWalletVO != null) {
                int model = rateConfig.getMode();
                Long integral = 0L;// 总消耗积分：手续费 + 奖励积分 * 加友总数
                Long fee = 0L;// 手续费： 第一种：按比例算==> 比例 * (奖励积分 * 加友总数) ， 第二种：按数量算： 数量
                if(model == 1) {
                    integral = ((rateConfig.getProfitPercents().get("percentage").longValue()/100) * (weixinTaskVO.getIntegral()* weixinTaskVO.getTotalNumber())) + (weixinTaskVO.getIntegral()* weixinTaskVO.getTotalNumber());
                    fee = rateConfig.getProfitPercents().get("percentage").longValue()/100 * (weixinTaskVO.getIntegral()* weixinTaskVO.getTotalNumber());
                } else {
                    integral = rateConfig.getProfitPercents().get("number").longValue() + (weixinTaskVO.getIntegral() * weixinTaskVO.getTotalNumber());
                    fee = rateConfig.getProfitPercents().get("number").longValue();
                }

                if (userWalletVO.getUsableRmbBalance() >= integral) {
                    UserWalletVO wallet = new UserWalletVO();
                    wallet.setId(userWalletVO.getId());
                    wallet.setRmbBalance(userWalletVO.getRmbBalance() - fee);
                    wallet.setUsableRmbBalance(userWalletVO.getUsableRmbBalance() - integral);
                    wallet.setFrozenRmbBalance(userWalletVO.getFrozenRmbBalance() + (weixinTaskVO.getIntegral()* weixinTaskVO.getTotalNumber()));
                    wallet.setVersion(version + 1);
                    wallet.setUpdateTime(new Date());
                    userWalletDAO.update(wallet);

                    AccountDetailVO accountDetailVO = new AccountDetailVO();
                    accountDetailVO.setTransactionNo(TransactionNoGenerator.generateNo());
                    accountDetailVO.setUserId(weixinTaskVO.getUserId());
                    accountDetailVO.setAmount(fee);
                    accountDetailVO.setType((byte) 2);
                    accountDetailVO.setSubType(FundsChangeTypeEnum.FEE.getValue());
                    accountDetailDAO.save(accountDetailVO);

                    weixinTaskDAO.save(weixinTaskVO);
                    return ResponseStatusVO.ok("添加成功", null);
                }
                return ResponseStatusVO.dataError("账户可用积分不足","");
            }
        }
        return ResponseStatusVO.dataError("用户钱包信息不存在","");
    }

    @Autowired
    public void setUserWalletDAO(UserWalletDAO userWalletDAO) {
        this.userWalletDAO = userWalletDAO;
    }

    @Autowired
    public void setAccountDetailDAO(AccountDetailDAO accountDetailDAO) {
        this.accountDetailDAO = accountDetailDAO;
    }
}
