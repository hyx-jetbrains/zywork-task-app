package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zywork.dao.WeixinCertificationDAO;
import top.zywork.dos.WeixinCertificationDO;
import top.zywork.dto.WeixinCertificationDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.WeixinCertificationService;

import javax.annotation.PostConstruct;

/**
 * WeixinCertificationServiceImpl服务接口实现类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Service(value = "weixinCertificationService")
public class WeixinCertificationServiceImpl extends AbstractBaseService implements WeixinCertificationService {

    private WeixinCertificationDAO weixinCertificationDAO;

    @Autowired
    public void setWeixinCertificationDAO(WeixinCertificationDAO weixinCertificationDAO) {
        super.setBaseDAO(weixinCertificationDAO);
        this.weixinCertificationDAO = weixinCertificationDAO;
    }

    @PostConstruct
    public void init() {
        super.init(WeixinCertificationDO.class, WeixinCertificationDTO.class);
    }

    @Override
    public Object getByUserId(Long userId) {
        return weixinCertificationDAO.getByUserId(userId);
    }
}
