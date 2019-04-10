package top.zywork.service;

import org.apache.ibatis.annotations.Param;
import top.zywork.dto.PagerDTO;

import java.util.List;

/**
 * WeixinUserTaskService服务接口<br/>
 *
 * 创建于2019-04-08<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public interface WeixinUserTaskService extends BaseService {

    PagerDTO listJoin(@Param("query") Object queryObj);
}
