package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zywork.dao.WeixinTaskAppealDAO;
import top.zywork.dos.WeixinTaskAppealDO;
import top.zywork.dto.WeixinTaskAppealDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.WeixinTaskAppealService;

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
public class WeixinTaskAppealServiceImpl extends AbstractBaseService implements WeixinTaskAppealService {

    private WeixinTaskAppealDAO weixinTaskAppealDAO;

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
}
