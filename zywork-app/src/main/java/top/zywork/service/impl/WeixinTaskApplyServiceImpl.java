package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.zywork.common.BeanUtils;
import top.zywork.dao.UserDetailDAO;
import top.zywork.dao.WeixinCertificationDAO;
import top.zywork.dao.WeixinTaskApplyDAO;
import top.zywork.dao.WeixinTaskDAO;
import top.zywork.dos.WeixinTaskApplyDO;
import top.zywork.dto.WeixinTaskApplyDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.UserTransferService;
import top.zywork.service.WeixinTaskAppealService;
import top.zywork.service.WeixinTaskApplyService;
import top.zywork.vo.*;

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
@Transactional(rollbackFor = Exception.class)
public class WeixinTaskApplyServiceImpl extends AbstractBaseService implements WeixinTaskApplyService {

    private WeixinTaskApplyDAO weixinTaskApplyDAO;

    private WeixinTaskDAO weixinTaskDAO;

    private UserTransferService userTransferService;

    private WeixinCertificationDAO weixinCertificationDAO;

    private UserDetailDAO userDetailDAO;

    private WeixinTaskAppealService weixinTaskAppealService;

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
    public ResponseStatusVO confirmTaskApply(Long userId, WeixinTaskApplyVO weixinTaskApplyVO) {
        Object obj  = weixinTaskDAO.getById(weixinTaskApplyVO.getTaskId());
        if (obj == null) {
            return ResponseStatusVO.dataError("微信任务不存在", null);
        }

        WeixinTaskVO weixinTaskVO = BeanUtils.copy(obj, WeixinTaskVO.class);
        if(weixinTaskVO.getTotalNumber() == weixinTaskVO.getConfirmNumber()) {
            return ResponseStatusVO.dataError("任务人数需要已达到要求", null);
        }

        weixinTaskApplyVO.setTaskId(weixinTaskVO.getId());
        // 如果是报名方确认，此时的weixinTaskApplyVO里的userId为空
        if (weixinTaskApplyVO.getUserId() == null) {
            weixinTaskApplyVO.setUserId(userId);
        }

        // 通过taskId 和报名方Id查询 报名记录
        Object appObj = weixinTaskApplyDAO.getByUserId(weixinTaskVO.getId(), weixinTaskApplyVO.getUserId());
        if (appObj == null) {
            return ResponseStatusVO.dataError("不存在的任务或用户未报名该任务", null);
        }

        WeixinTaskApplyVO apply = BeanUtils.copy(appObj, WeixinTaskApplyVO.class);
        weixinTaskApplyVO.setId(apply.getId());
        weixinTaskApplyVO.setVersion(apply.getVersion() + 1);
        if (userId == weixinTaskVO.getUserId()) { // 发布方
            weixinTaskApplyVO.setPubConfirmStatus((byte) 1);
            weixinTaskApplyVO.setPubConfirmTime(new Date());

            Object appealObj = weixinTaskAppealService.getByTaskId(weixinTaskVO.getId(), apply.getUserId());
            if(appealObj != null) {
                WeixinTaskAppealVO AppealVO = BeanUtils.copy(appealObj, WeixinTaskAppealVO.class);

                WeixinTaskAppealVO weixinTaskAppealVO = new WeixinTaskAppealVO();
                weixinTaskAppealVO.setId(AppealVO.getId());
                weixinTaskAppealVO.setAppealStatus((byte) 2);
                weixinTaskAppealVO.setVersion(AppealVO.getVersion() + 1);
                weixinTaskAppealService.update(weixinTaskAppealVO);
            }
        } else { // 报名方确认
            weixinTaskApplyVO.setAppConfirmStatus((byte) 1);
            weixinTaskApplyVO.setAppConfirmTime(new Date());

            if(weixinTaskVO.getConfirmNumber() == (weixinTaskVO.getTotalNumber() -1)) {
                weixinTaskVO.setTaskStatus(1);
            }
            WeixinTaskVO taskVo = new WeixinTaskVO();
            taskVo.setId(weixinTaskVO.getId());
            taskVo.setConfirmNumber(weixinTaskVO.getConfirmNumber() + 1);
            taskVo.setVersion(weixinTaskVO.getVersion() + 1);
            weixinTaskDAO.update(taskVo);

            userTransferService.saveTransferFrozen(weixinTaskVO.getUserId(), weixinTaskApplyVO.getUserId(), weixinTaskVO.getIntegral());
        }
        weixinTaskApplyDAO.update(weixinTaskApplyVO);
        return ResponseStatusVO.ok("确认成功", null);
    }

    @Override
    public ResponseStatusVO joinWeixinTask(WeixinTaskApplyVO weixinTaskApplyVO) {
        Object obj  = weixinTaskDAO.getById(weixinTaskApplyVO.getTaskId());
        if (obj == null) {
            return ResponseStatusVO.dataError("微信任务不存在", null);
        }
        WeixinTaskVO weixinTaskVO = BeanUtils.copy(obj, WeixinTaskVO.class);
        if(weixinTaskVO.getUserId() == weixinTaskApplyVO.getUserId()) {
            return ResponseStatusVO.dataError("不能参加自己发布的微信任务", null);
        }

        Object usetDetailObj = userDetailDAO.getById(weixinTaskApplyVO.getUserId());
        if(usetDetailObj == null) {
            return ResponseStatusVO.dataError("报名用户不存在", null);
        }
        UserDetailVO userDetailVO = BeanUtils.copy(usetDetailObj, UserDetailVO.class);

        if(userDetailVO.getWechatQrcode() == null) {
            return ResponseStatusVO.dataError("请先上传微信二维码", null);
        }

        Object cerObj = weixinCertificationDAO.getByUserId(weixinTaskApplyVO.getUserId());
        if(cerObj == null) {
            return ResponseStatusVO.dataError("请先上传微信银行卡认证截图", null);
        }

        WeixinCertificationVO weixinCertificationVO = BeanUtils.copy(cerObj, WeixinCertificationVO.class);
        if(weixinCertificationVO.getCheckStatus() == 0 || weixinCertificationVO.getCheckStatus() == 2) {
            return ResponseStatusVO.dataError("微信银行卡认证成功后才能参与任务", null);
        }

        Long count = weixinTaskApplyDAO.getWeixinFriendCount(weixinTaskVO.getUserId(), weixinTaskApplyVO.getUserId());
        if (count == 0) {

            Object appObj = weixinTaskApplyDAO.getByUserId(weixinTaskVO.getId(), weixinTaskApplyVO.getUserId());
            if (appObj == null) {
                weixinTaskApplyDAO.save(weixinTaskApplyVO);
                return ResponseStatusVO.ok("成功参加任务，请在参与的任务中查看微信群聊二维码", null);
            }
            return ResponseStatusVO.dataError("你已参加任务，请勿重新参加", null);
        }
        return ResponseStatusVO.dataError("已经是对方好友,请勿重新参加", null);
    }

    @Override
    public Object getWeixinTaskApplyDetail(WeixinTaskApplyVO weixinTaskApplyVO) {
        return weixinTaskApplyDAO.getByUserId(weixinTaskApplyVO.getTaskId(), weixinTaskApplyVO.getUserId());
    }

    @Autowired
    public void setWeixinTaskDAO(WeixinTaskDAO weixinTaskDAO) {
        this.weixinTaskDAO = weixinTaskDAO;
    }

    @Autowired
    public void setUserTransferService(UserTransferService userTransferService) {
        this.userTransferService = userTransferService;
    }

    @Autowired
    public void setWeixinCertificationDAO(WeixinCertificationDAO weixinCertificationDAO) {
        this.weixinCertificationDAO = weixinCertificationDAO;
    }

    @Autowired
    public void setUserDetailDAO(UserDetailDAO userDetailDAO) {
        this.userDetailDAO = userDetailDAO;
    }

    @Autowired
    public void setWeixinTaskAppealService(WeixinTaskAppealService weixinTaskAppealService) {
        this.weixinTaskAppealService = weixinTaskAppealService;
    }
}
