package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zywork.dao.WeixinUserTaskDAO;
import top.zywork.dos.WeixinUserTaskDO;
import top.zywork.dto.PagerDTO;
import top.zywork.dto.WeixinUserTaskDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.WeixinUserTaskService;

import javax.annotation.PostConstruct;
import java.util.List;

/**
 * WeixinUserTaskServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-08<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinUserTaskService")
public class WeixinUserTaskServiceImpl extends AbstractBaseService implements WeixinUserTaskService {

    private WeixinUserTaskDAO weixinUserTaskDAO;

    @Autowired
    public void setWeixinUserTaskDAO(WeixinUserTaskDAO weixinUserTaskDAO) {
        super.setBaseDAO(weixinUserTaskDAO);
        this.weixinUserTaskDAO = weixinUserTaskDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinUserTaskDO.class, WeixinUserTaskDTO.class);
    }

    @Override
    public PagerDTO listJoin(Object queryObj) {
        PagerDTO pageDTO = new PagerDTO();
        Long count = weixinUserTaskDAO.listJoinCount(queryObj);
        if(count > 0) {
            List<Object> list = weixinUserTaskDAO.listJoin(queryObj);
            pageDTO.setRows(list);
            pageDTO.setTotal(count);
        }
        return pageDTO;
    }
}
