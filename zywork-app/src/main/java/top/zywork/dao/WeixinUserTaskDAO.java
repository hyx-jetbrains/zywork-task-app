package top.zywork.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import top.zywork.query.PageQuery;

import java.util.List;

/**
 * WeixinUserTaskDAO数据访问接口<br/>
 *
 * 创建于2019-04-08<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@Repository
public interface WeixinUserTaskDAO extends BaseDAO {

    @Override
    List<Object> listAllByCondition(@Param("query") Object queryObj);

    @Override
    List<Object> listPageByCondition(@Param("query") Object queryObj);

    @Override
    Long countByCondition(@Param("query") Object queryObj);

    List<Object> listJoin(@Param("query") Object queryObj);

    Long listJoinCount(@Param("query") Object queryObj);

    Object getByweixinTaskId(@Param("weixinTaskId") Long weixinTaskId);
}
