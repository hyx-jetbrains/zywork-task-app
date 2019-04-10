package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zywork.dao.WeixinUserCertificationDAO;
import top.zywork.dos.WeixinUserCertificationDO;
import top.zywork.dto.WeixinUserCertificationDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.WeixinUserCertificationService;

import javax.annotation.PostConstruct;

/**
 * WeixinUserCertificationServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinUserCertificationService")
public class WeixinUserCertificationServiceImpl extends AbstractBaseService implements WeixinUserCertificationService {

    private WeixinUserCertificationDAO weixinUserCertificationDAO;

    @Autowired
    public void setWeixinUserCertificationDAO(WeixinUserCertificationDAO weixinUserCertificationDAO) {
        super.setBaseDAO(weixinUserCertificationDAO);
        this.weixinUserCertificationDAO = weixinUserCertificationDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinUserCertificationDO.class, WeixinUserCertificationDTO.class);
    }
}
