package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zywork.dao.WeixinUserTaskAppealDAO;
import top.zywork.dos.WeixinUserTaskAppealDO;
import top.zywork.dto.WeixinUserTaskAppealDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.WeixinUserTaskAppealService;

import javax.annotation.PostConstruct;
import java.util.List;

/**
 * WeixinUserTaskAppealServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinUserTaskAppealService")
public class WeixinUserTaskAppealServiceImpl extends AbstractBaseService implements WeixinUserTaskAppealService {

    private WeixinUserTaskAppealDAO weixinUserTaskAppealDAO;

    @Autowired
    public void setWeixinUserTaskAppealDAO(WeixinUserTaskAppealDAO weixinUserTaskAppealDAO) {
        super.setBaseDAO(weixinUserTaskAppealDAO);
        this.weixinUserTaskAppealDAO = weixinUserTaskAppealDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinUserTaskAppealDO.class, WeixinUserTaskAppealDTO.class);
    }

    @Override
    public List<Object> listAllByTaskId(Object obj) {
        return weixinUserTaskAppealDAO.listAllByTaskId(obj);
    }
}
