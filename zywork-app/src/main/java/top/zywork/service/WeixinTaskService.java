package top.zywork.service;

import org.apache.ibatis.annotations.Param;
import top.zywork.dos.RateConfig;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.WeixinTaskVO;

/**
 * WeixinTaskService服务接口<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public interface WeixinTaskService extends BaseService {

    ResponseStatusVO createTask(WeixinTaskVO weixinTaskVO, RateConfig rateConfig);

    int updateById(@Param("id") Long id);
}
