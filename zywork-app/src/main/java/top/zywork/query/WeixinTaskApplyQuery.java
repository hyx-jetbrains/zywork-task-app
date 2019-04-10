package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinTaskApplyQuery查询对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinTaskApplyQuery extends PageQuery {

    private static final long serialVersionUID = -9223372036755978919L;

    // 报名编号
	private Long id;
	// 报名编号（最小值）
	private Long idMin;
	// 报名编号（最大值）
	private Long idMax;
	// 任务编号
	private Long taskId;
	// 任务编号（最小值）
	private Long taskIdMin;
	// 任务编号（最大值）
	private Long taskIdMax;
	// 报名用户编号
	private Long userId;
	// 报名用户编号（最小值）
	private Long userIdMin;
	// 报名用户编号（最大值）
	private Long userIdMax;
	// 发布方确认状态
	private Byte pubConfirmStatus;
	// 发布方确认状态（最小值）
	private Byte pubConfirmStatusMin;
	// 发布方确认状态（最大值）
	private Byte pubConfirmStatusMax;
	// 发布方确认时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date pubConfirmTime;
	// 发布方确认时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date pubConfirmTimeMin;
	// 发布方确认时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date pubConfirmTimeMax;
	// 报名方确认状态
	private Byte appConfirmStatus;
	// 报名方确认状态（最小值）
	private Byte appConfirmStatusMin;
	// 报名方确认状态（最大值）
	private Byte appConfirmStatusMax;
	// 报名方确认时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date appConfirmTime;
	// 报名方确认时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date appConfirmTimeMin;
	// 报名方确认时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date appConfirmTimeMax;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;
	// 创建时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTimeMin;
	// 创建时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTimeMax;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTime;
	// 更新时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTimeMin;
	// 更新时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTimeMax;
	// 版本号
	private Integer version;
	// 版本号（最小值）
	private Integer versionMin;
	// 版本号（最大值）
	private Integer versionMax;
	// 是否激活
	private Byte isActive;
	// 是否激活（最小值）
	private Byte isActiveMin;
	// 是否激活（最大值）
	private Byte isActiveMax;
	
    public WeixinTaskApplyQuery () {}

    public WeixinTaskApplyQuery (Long id, Long idMin, Long idMax, Long taskId, Long taskIdMin, Long taskIdMax, Long userId, Long userIdMin, Long userIdMax, Byte pubConfirmStatus, Byte pubConfirmStatusMin, Byte pubConfirmStatusMax, Date pubConfirmTime, Date pubConfirmTimeMin, Date pubConfirmTimeMax, Byte appConfirmStatus, Byte appConfirmStatusMin, Byte appConfirmStatusMax, Date appConfirmTime, Date appConfirmTimeMin, Date appConfirmTimeMax, Date createTime, Date createTimeMin, Date createTimeMax, Date updateTime, Date updateTimeMin, Date updateTimeMax, Integer version, Integer versionMin, Integer versionMax, Byte isActive, Byte isActiveMin, Byte isActiveMax) {
        this.id = id;
		this.idMin = idMin;
		this.idMax = idMax;
		this.taskId = taskId;
		this.taskIdMin = taskIdMin;
		this.taskIdMax = taskIdMax;
		this.userId = userId;
		this.userIdMin = userIdMin;
		this.userIdMax = userIdMax;
		this.pubConfirmStatus = pubConfirmStatus;
		this.pubConfirmStatusMin = pubConfirmStatusMin;
		this.pubConfirmStatusMax = pubConfirmStatusMax;
		this.pubConfirmTime = pubConfirmTime;
		this.pubConfirmTimeMin = pubConfirmTimeMin;
		this.pubConfirmTimeMax = pubConfirmTimeMax;
		this.appConfirmStatus = appConfirmStatus;
		this.appConfirmStatusMin = appConfirmStatusMin;
		this.appConfirmStatusMax = appConfirmStatusMax;
		this.appConfirmTime = appConfirmTime;
		this.appConfirmTimeMin = appConfirmTimeMin;
		this.appConfirmTimeMax = appConfirmTimeMax;
		this.createTime = createTime;
		this.createTimeMin = createTimeMin;
		this.createTimeMax = createTimeMax;
		this.updateTime = updateTime;
		this.updateTimeMin = updateTimeMin;
		this.updateTimeMax = updateTimeMax;
		this.version = version;
		this.versionMin = versionMin;
		this.versionMax = versionMax;
		this.isActive = isActive;
		this.isActiveMin = isActiveMin;
		this.isActiveMax = isActiveMax;
		
    }

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getIdMin() {
		return idMin;
	}

	public void setIdMin(Long idMin) {
		this.idMin = idMin;
	}

	public Long getIdMax() {
		return idMax;
	}

	public void setIdMax(Long idMax) {
		this.idMax = idMax;
	}

	public Long getTaskId() {
		return taskId;
	}

	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}

	public Long getTaskIdMin() {
		return taskIdMin;
	}

	public void setTaskIdMin(Long taskIdMin) {
		this.taskIdMin = taskIdMin;
	}

	public Long getTaskIdMax() {
		return taskIdMax;
	}

	public void setTaskIdMax(Long taskIdMax) {
		this.taskIdMax = taskIdMax;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getUserIdMin() {
		return userIdMin;
	}

	public void setUserIdMin(Long userIdMin) {
		this.userIdMin = userIdMin;
	}

	public Long getUserIdMax() {
		return userIdMax;
	}

	public void setUserIdMax(Long userIdMax) {
		this.userIdMax = userIdMax;
	}

	public Byte getPubConfirmStatus() {
		return pubConfirmStatus;
	}

	public void setPubConfirmStatus(Byte pubConfirmStatus) {
		this.pubConfirmStatus = pubConfirmStatus;
	}

	public Byte getPubConfirmStatusMin() {
		return pubConfirmStatusMin;
	}

	public void setPubConfirmStatusMin(Byte pubConfirmStatusMin) {
		this.pubConfirmStatusMin = pubConfirmStatusMin;
	}

	public Byte getPubConfirmStatusMax() {
		return pubConfirmStatusMax;
	}

	public void setPubConfirmStatusMax(Byte pubConfirmStatusMax) {
		this.pubConfirmStatusMax = pubConfirmStatusMax;
	}

	public Date getPubConfirmTime() {
		return pubConfirmTime;
	}

	public void setPubConfirmTime(Date pubConfirmTime) {
		this.pubConfirmTime = pubConfirmTime;
	}

	public Date getPubConfirmTimeMin() {
		return pubConfirmTimeMin;
	}

	public void setPubConfirmTimeMin(Date pubConfirmTimeMin) {
		this.pubConfirmTimeMin = pubConfirmTimeMin;
	}

	public Date getPubConfirmTimeMax() {
		return pubConfirmTimeMax;
	}

	public void setPubConfirmTimeMax(Date pubConfirmTimeMax) {
		this.pubConfirmTimeMax = pubConfirmTimeMax;
	}

	public Byte getAppConfirmStatus() {
		return appConfirmStatus;
	}

	public void setAppConfirmStatus(Byte appConfirmStatus) {
		this.appConfirmStatus = appConfirmStatus;
	}

	public Byte getAppConfirmStatusMin() {
		return appConfirmStatusMin;
	}

	public void setAppConfirmStatusMin(Byte appConfirmStatusMin) {
		this.appConfirmStatusMin = appConfirmStatusMin;
	}

	public Byte getAppConfirmStatusMax() {
		return appConfirmStatusMax;
	}

	public void setAppConfirmStatusMax(Byte appConfirmStatusMax) {
		this.appConfirmStatusMax = appConfirmStatusMax;
	}

	public Date getAppConfirmTime() {
		return appConfirmTime;
	}

	public void setAppConfirmTime(Date appConfirmTime) {
		this.appConfirmTime = appConfirmTime;
	}

	public Date getAppConfirmTimeMin() {
		return appConfirmTimeMin;
	}

	public void setAppConfirmTimeMin(Date appConfirmTimeMin) {
		this.appConfirmTimeMin = appConfirmTimeMin;
	}

	public Date getAppConfirmTimeMax() {
		return appConfirmTimeMax;
	}

	public void setAppConfirmTimeMax(Date appConfirmTimeMax) {
		this.appConfirmTimeMax = appConfirmTimeMax;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getCreateTimeMin() {
		return createTimeMin;
	}

	public void setCreateTimeMin(Date createTimeMin) {
		this.createTimeMin = createTimeMin;
	}

	public Date getCreateTimeMax() {
		return createTimeMax;
	}

	public void setCreateTimeMax(Date createTimeMax) {
		this.createTimeMax = createTimeMax;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getUpdateTimeMin() {
		return updateTimeMin;
	}

	public void setUpdateTimeMin(Date updateTimeMin) {
		this.updateTimeMin = updateTimeMin;
	}

	public Date getUpdateTimeMax() {
		return updateTimeMax;
	}

	public void setUpdateTimeMax(Date updateTimeMax) {
		this.updateTimeMax = updateTimeMax;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Integer getVersionMin() {
		return versionMin;
	}

	public void setVersionMin(Integer versionMin) {
		this.versionMin = versionMin;
	}

	public Integer getVersionMax() {
		return versionMax;
	}

	public void setVersionMax(Integer versionMax) {
		this.versionMax = versionMax;
	}

	public Byte getIsActive() {
		return isActive;
	}

	public void setIsActive(Byte isActive) {
		this.isActive = isActive;
	}

	public Byte getIsActiveMin() {
		return isActiveMin;
	}

	public void setIsActiveMin(Byte isActiveMin) {
		this.isActiveMin = isActiveMin;
	}

	public Byte getIsActiveMax() {
		return isActiveMax;
	}

	public void setIsActiveMax(Byte isActiveMax) {
		this.isActiveMax = isActiveMax;
	}

	
    @Override
    public String toString() {
        return "WeixinTaskApplyQuery {" +
                "id = " + id + 
				", idMin = " + idMin + 
				", idMax = " + idMax + 
				", taskId = " + taskId + 
				", taskIdMin = " + taskIdMin + 
				", taskIdMax = " + taskIdMax + 
				", userId = " + userId + 
				", userIdMin = " + userIdMin + 
				", userIdMax = " + userIdMax + 
				", pubConfirmStatus = " + pubConfirmStatus + 
				", pubConfirmStatusMin = " + pubConfirmStatusMin + 
				", pubConfirmStatusMax = " + pubConfirmStatusMax + 
				", pubConfirmTime = " + pubConfirmTime + 
				", pubConfirmTimeMin = " + pubConfirmTimeMin + 
				", pubConfirmTimeMax = " + pubConfirmTimeMax + 
				", appConfirmStatus = " + appConfirmStatus + 
				", appConfirmStatusMin = " + appConfirmStatusMin + 
				", appConfirmStatusMax = " + appConfirmStatusMax + 
				", appConfirmTime = " + appConfirmTime + 
				", appConfirmTimeMin = " + appConfirmTimeMin + 
				", appConfirmTimeMax = " + appConfirmTimeMax + 
				", createTime = " + createTime + 
				", createTimeMin = " + createTimeMin + 
				", createTimeMax = " + createTimeMax + 
				", updateTime = " + updateTime + 
				", updateTimeMin = " + updateTimeMin + 
				", updateTimeMax = " + updateTimeMax + 
				", version = " + version + 
				", versionMin = " + versionMin + 
				", versionMax = " + versionMax + 
				", isActive = " + isActive + 
				", isActiveMin = " + isActiveMin + 
				", isActiveMax = " + isActiveMax + 
				" }";
    }

}
