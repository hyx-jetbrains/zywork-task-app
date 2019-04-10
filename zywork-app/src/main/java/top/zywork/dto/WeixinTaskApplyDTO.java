package top.zywork.dto;

import java.math.BigDecimal;
import java.util.Date;

/**
 * WeixinTaskApplyDTO数据传输对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinTaskApplyDTO extends BaseDTO {

    private static final long serialVersionUID = -9223372036127209891L;

    // 报名编号
	private Long id;
	// 任务编号
	private Long taskId;
	// 报名用户编号
	private Long userId;
	// 发布方确认状态
	private Byte pubConfirmStatus;
	// 发布方确认时间
	private Date pubConfirmTime;
	// 报名方确认状态
	private Byte appConfirmStatus;
	// 报名方确认时间
	private Date appConfirmTime;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 版本号
	private Integer version;
	// 是否激活
	private Byte isActive;
	
    public WeixinTaskApplyDTO () {}

    public WeixinTaskApplyDTO (Long id, Long taskId, Long userId, Byte pubConfirmStatus, Date pubConfirmTime, Byte appConfirmStatus, Date appConfirmTime, Date createTime, Date updateTime, Integer version, Byte isActive) {
        this.id = id;
		this.taskId = taskId;
		this.userId = userId;
		this.pubConfirmStatus = pubConfirmStatus;
		this.pubConfirmTime = pubConfirmTime;
		this.appConfirmStatus = appConfirmStatus;
		this.appConfirmTime = appConfirmTime;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.version = version;
		this.isActive = isActive;
		
    }

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getTaskId() {
		return taskId;
	}

	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Byte getPubConfirmStatus() {
		return pubConfirmStatus;
	}

	public void setPubConfirmStatus(Byte pubConfirmStatus) {
		this.pubConfirmStatus = pubConfirmStatus;
	}

	public Date getPubConfirmTime() {
		return pubConfirmTime;
	}

	public void setPubConfirmTime(Date pubConfirmTime) {
		this.pubConfirmTime = pubConfirmTime;
	}

	public Byte getAppConfirmStatus() {
		return appConfirmStatus;
	}

	public void setAppConfirmStatus(Byte appConfirmStatus) {
		this.appConfirmStatus = appConfirmStatus;
	}

	public Date getAppConfirmTime() {
		return appConfirmTime;
	}

	public void setAppConfirmTime(Date appConfirmTime) {
		this.appConfirmTime = appConfirmTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Byte getIsActive() {
		return isActive;
	}

	public void setIsActive(Byte isActive) {
		this.isActive = isActive;
	}

	
    @Override
    public String toString() {
        return "WeixinTaskApplyDTO {" +
                "id = " + id + 
				", taskId = " + taskId + 
				", userId = " + userId + 
				", pubConfirmStatus = " + pubConfirmStatus + 
				", pubConfirmTime = " + pubConfirmTime + 
				", appConfirmStatus = " + appConfirmStatus + 
				", appConfirmTime = " + appConfirmTime + 
				", createTime = " + createTime + 
				", updateTime = " + updateTime + 
				", version = " + version + 
				", isActive = " + isActive + 
				" }";
    }

}
