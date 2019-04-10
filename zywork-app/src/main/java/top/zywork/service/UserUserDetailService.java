package top.zywork.service;

import org.apache.ibatis.annotations.Param;
import top.zywork.dto.PagerDTO;

import java.util.List;

/**
 * UserUserDetailService服务接口<br/>
 *
 * 创建于2018-12-18<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
public interface UserUserDetailService extends BaseService {

    PagerDTO weiXinFriend(@Param("query") Object queryObj);
}
