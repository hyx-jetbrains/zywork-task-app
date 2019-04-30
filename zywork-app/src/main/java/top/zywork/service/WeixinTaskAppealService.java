package top.zywork.service;

import org.apache.ibatis.annotations.Param;
import top.zywork.vo.WeixinTaskVO;

/**
 * WeixinTaskAppealService服务接口<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public interface WeixinTaskAppealService extends BaseService {

    Object getByTaskId(@Param("taskId") Long taskId, @Param("userId") Long userId);

    int appeal(Object obj, WeixinTaskVO weixinTaskVO);
}
