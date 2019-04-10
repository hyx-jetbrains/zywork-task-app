package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zywork.dao.WeixinUserTaskApplyDAO;
import top.zywork.dos.WeixinUserTaskApplyDO;
import top.zywork.dto.WeixinUserTaskApplyDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.WeixinUserTaskApplyService;

import javax.annotation.PostConstruct;

/**
 * WeixinUserTaskApplyServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinUserTaskApplyService")
public class WeixinUserTaskApplyServiceImpl extends AbstractBaseService implements WeixinUserTaskApplyService {

    private WeixinUserTaskApplyDAO weixinUserTaskApplyDAO;

    @Autowired
    public void setWeixinUserTaskApplyDAO(WeixinUserTaskApplyDAO weixinUserTaskApplyDAO) {
        super.setBaseDAO(weixinUserTaskApplyDAO);
        this.weixinUserTaskApplyDAO = weixinUserTaskApplyDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinUserTaskApplyDO.class, WeixinUserTaskApplyDTO.class);
    }
}
