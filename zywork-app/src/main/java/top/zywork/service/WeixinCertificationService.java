package top.zywork.service;

import org.apache.ibatis.annotations.Param;

/**
 * WeixinCertificationService服务接口<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public interface WeixinCertificationService extends BaseService {

    Object getByUserId(@Param("userId") Long userId);
}
