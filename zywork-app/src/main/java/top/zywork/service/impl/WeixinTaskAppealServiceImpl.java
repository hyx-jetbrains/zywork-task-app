package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.zywork.common.BeanUtils;
import top.zywork.dao.MessageDAO;
import top.zywork.dao.UserMessageDAO;
import top.zywork.dao.WeixinTaskAppealDAO;
import top.zywork.dos.WeixinTaskAppealDO;
import top.zywork.dto.WeixinTaskAppealDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.WeixinTaskAppealService;
import top.zywork.vo.MessageVO;
import top.zywork.vo.UserMessageVO;
import top.zywork.vo.WeixinTaskAppealVO;
import top.zywork.vo.WeixinTaskVO;

import javax.annotation.PostConstruct;

/**
 * WeixinTaskAppealServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinTaskAppealService")
@Transactional(rollbackFor = Exception.class)
public class WeixinTaskAppealServiceImpl extends AbstractBaseService implements WeixinTaskAppealService {

    private WeixinTaskAppealDAO weixinTaskAppealDAO;

    private UserMessageDAO userMessageDAO;

    private MessageDAO messageDAO;

    @Autowired
    public void setWeixinTaskAppealDAO(WeixinTaskAppealDAO weixinTaskAppealDAO) {
        super.setBaseDAO(weixinTaskAppealDAO);
        this.weixinTaskAppealDAO = weixinTaskAppealDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinTaskAppealDO.class, WeixinTaskAppealDTO.class);
    }

    @Override
    public Object getByTaskId(Long taskId, Long userId) {
        return weixinTaskAppealDAO.getByTaskId(taskId, userId);
    }

    @Override
    public int appeal(WeixinTaskAppealVO weixinTaskAppealVO, WeixinTaskVO weixinTaskVO) {
        MessageVO messageVO = new MessageVO();
        messageVO.setTitle("加友申诉");
        messageVO.setContent("您的微信任务:'"+weixinTaskVO.getTitle()+"',有一名用户正在进行申诉，请尽快进行确认操作");
        messageDAO.save(messageVO);

        UserMessageVO userMessageVO = new UserMessageVO();
        userMessageVO.setMessageId(messageVO.getId());
        userMessageVO.setUserId(weixinTaskVO.getUserId());
        userMessageDAO.save(userMessageVO);

        Object obj = weixinTaskAppealDAO.getByTaskId(weixinTaskVO.getId(), weixinTaskAppealVO.getUserId());
        if(obj != null) {
            WeixinTaskAppealVO appeal = BeanUtils.copy(obj, WeixinTaskAppealVO.class);
            WeixinTaskAppealVO appealVo = new WeixinTaskAppealVO();
            appealVo.setId(appeal.getId());
            appealVo.setAppealStatus((byte) 2);
            appealVo.setVersion(appeal.getVersion() + 1);
            weixinTaskAppealDAO.update(appealVo);
        }

        return weixinTaskAppealDAO.save(weixinTaskAppealVO);
    }

    @Autowired
    public void setUserMessageDAO(UserMessageDAO userMessageDAO) {
        this.userMessageDAO = userMessageDAO;
    }

    @Autowired
    public void setMessageDAO(MessageDAO messageDAO) {
        this.messageDAO = messageDAO;
    }
}
