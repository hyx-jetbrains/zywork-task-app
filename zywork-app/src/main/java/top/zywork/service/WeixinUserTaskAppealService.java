package top.zywork.service;

import java.util.List;

/**
 * WeixinUserTaskAppealService服务接口<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public interface WeixinUserTaskAppealService extends BaseService {

    List<Object> listAllByTaskId(Object obj);
}
