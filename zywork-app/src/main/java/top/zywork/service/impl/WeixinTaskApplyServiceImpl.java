package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.zywork.common.BeanUtils;
import top.zywork.dao.WeixinTaskApplyDAO;
import top.zywork.dao.WeixinTaskDAO;
import top.zywork.dos.WeixinTaskApplyDO;
import top.zywork.dto.WeixinTaskApplyDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.UserTransferService;
import top.zywork.service.WeixinTaskApplyService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.WeixinTaskApplyVO;
import top.zywork.vo.WeixinTaskVO;

import javax.annotation.PostConstruct;
import java.util.Date;

/**
 * WeixinTaskApplyServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinTaskApplyService")
@Transactional
public class WeixinTaskApplyServiceImpl extends AbstractBaseService implements WeixinTaskApplyService {

    private WeixinTaskApplyDAO weixinTaskApplyDAO;

    private WeixinTaskDAO weixinTaskDAO;

    private UserTransferService userTransferService;

    @Autowired
    public void setWeixinTaskApplyDAO(WeixinTaskApplyDAO weixinTaskApplyDAO) {
        super.setBaseDAO(weixinTaskApplyDAO);
        this.weixinTaskApplyDAO = weixinTaskApplyDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinTaskApplyDO.class, WeixinTaskApplyDTO.class);
    }

    @Override
    public ResponseStatusVO confirmTaskApply(WeixinTaskApplyVO weixinTaskApplyVO) {
        Object obj  = weixinTaskDAO.getById(weixinTaskApplyVO.getTaskId());
        if(obj != null) {
            WeixinTaskVO weixinTaskVO = BeanUtils.copy(obj, WeixinTaskVO.class);
            weixinTaskApplyVO.setTaskId(weixinTaskVO.getId());
            Object applyobj = weixinTaskApplyDAO.getByTaskId(weixinTaskApplyVO);
            WeixinTaskApplyVO apply = BeanUtils.copy(applyobj, WeixinTaskApplyVO.class);

            weixinTaskApplyVO.setId(apply.getId());
            if(apply.getUserId() == weixinTaskApplyVO.getUserId()) { // 报名方确认
                weixinTaskApplyVO.setAppConfirmStatus((byte)1);
                weixinTaskApplyVO.setAppConfirmTime(new Date());

                userTransferService.saveTransferFrozen(weixinTaskVO.getUserId(), apply.getUserId(), weixinTaskVO.getIntegral());
            } else { // 发布方确认
                weixinTaskApplyVO.setPubConfirmStatus((byte)1);
                weixinTaskApplyVO.setPubConfirmTime(new Date());
            }
            weixinTaskApplyDAO.update(weixinTaskApplyVO);
            return ResponseStatusVO.ok("确认成功", null);
        }
        return ResponseStatusVO.error("微信任务不存在", null);
    }

    @Autowired
    public void setWeixinTaskDAO(WeixinTaskDAO weixinTaskDAO) {
        this.weixinTaskDAO = weixinTaskDAO;
    }

    @Autowired
    public void setUserTransferService(UserTransferService userTransferService) {
        this.userTransferService = userTransferService;
    }
}
