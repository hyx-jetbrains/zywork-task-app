package top.zywork.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.zywork.dao.UserUserDetailDAO;
import top.zywork.dos.UserUserDetailDO;
import top.zywork.dto.PagerDTO;
import top.zywork.dto.UserUserDetailDTO;
import top.zywork.service.AbstractBaseService;
import top.zywork.service.UserUserDetailService;

import javax.annotation.PostConstruct;
import java.util.List;

/**
 * UserUserDetailServiceImpl服务接口实现类<br/>
 *
 * 创建于2018-12-18<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
@Service(value = "userUserDetailService")
public class UserUserDetailServiceImpl extends AbstractBaseService implements UserUserDetailService {

    private UserUserDetailDAO userUserDetailDAO;

    @Autowired
    public void setUserUserDetailDAO(UserUserDetailDAO userUserDetailDAO) {
        super.setBaseDAO(userUserDetailDAO);
        this.userUserDetailDAO = userUserDetailDAO;
    }

    @PostConstruct
    public void init() {
        super.init(UserUserDetailDO.class, UserUserDetailDTO.class);
    }

    @Override
    public PagerDTO weiXinFriend(Object queryObj) {
        PagerDTO pagerDTO = new PagerDTO();
        Long count = userUserDetailDAO.weiXinFriendCount(queryObj);
        if(count > 0) {
            List<Object> list = userUserDetailDAO.weiXinFriend(queryObj);
            pagerDTO.setRows(list);
            pagerDTO.setTotal(count);
        }
        return pagerDTO;
    }
}
