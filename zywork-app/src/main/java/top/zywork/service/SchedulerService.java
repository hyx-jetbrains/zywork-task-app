package top.zywork.service;

/**
 * SchedulerService服务接口<br/>
 *
 * 创建于2019-01-18<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
public interface SchedulerService extends BaseService {

    /**
     * 启动所有需要自动启动的作业
     */
    void startAutoJobs();

}
