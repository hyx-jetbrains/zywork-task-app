package top.zywork.service;

import org.apache.ibatis.annotations.Param;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.WeixinTaskApplyVO;
import top.zywork.vo.WeixinTaskVO;

/**
 * WeixinTaskApplyService服务接口<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public interface WeixinTaskApplyService extends BaseService {

    ResponseStatusVO confirmTaskApply(Long userId, WeixinTaskApplyVO weixinTaskApplyVO);

    ResponseStatusVO joinWeixinTask(WeixinTaskApplyVO weixinTaskApplyVO);

    Object getWeixinTaskApplyDetail(WeixinTaskApplyVO weixinTaskApplyVO);
}
