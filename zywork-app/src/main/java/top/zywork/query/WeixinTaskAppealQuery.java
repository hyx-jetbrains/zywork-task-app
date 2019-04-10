package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinTaskAppealQuery查询对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinTaskAppealQuery extends PageQuery {

    private static final long serialVersionUID = -9223372036205020444L;

    // 申诉编号
	private Long id;
	// 申诉编号（最小值）
	private Long idMin;
	// 申诉编号（最大值）
	private Long idMax;
	// 任务编号
	private Long taskId;
	// 任务编号（最小值）
	private Long taskIdMin;
	// 任务编号（最大值）
	private Long taskIdMax;
	// 申诉用户编号
	private Long userId;
	// 申诉用户编号（最小值）
	private Long userIdMin;
	// 申诉用户编号（最大值）
	private Long userIdMax;
	// 申诉描述
	private String appealDes;
	// 申诉状态
	private Byte appealStatus;
	// 申诉状态（最小值）
	private Byte appealStatusMin;
	// 申诉状态（最大值）
	private Byte appealStatusMax;
	// 处理时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date handleTime;
	// 处理时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date handleTimeMin;
	// 处理时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date handleTimeMax;
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
	
    public WeixinTaskAppealQuery () {}

    public WeixinTaskAppealQuery (Long id, Long idMin, Long idMax, Long taskId, Long taskIdMin, Long taskIdMax, Long userId, Long userIdMin, Long userIdMax, String appealDes, Byte appealStatus, Byte appealStatusMin, Byte appealStatusMax, Date handleTime, Date handleTimeMin, Date handleTimeMax, Date createTime, Date createTimeMin, Date createTimeMax, Date updateTime, Date updateTimeMin, Date updateTimeMax, Integer version, Integer versionMin, Integer versionMax, Byte isActive, Byte isActiveMin, Byte isActiveMax) {
        this.id = id;
		this.idMin = idMin;
		this.idMax = idMax;
		this.taskId = taskId;
		this.taskIdMin = taskIdMin;
		this.taskIdMax = taskIdMax;
		this.userId = userId;
		this.userIdMin = userIdMin;
		this.userIdMax = userIdMax;
		this.appealDes = appealDes;
		this.appealStatus = appealStatus;
		this.appealStatusMin = appealStatusMin;
		this.appealStatusMax = appealStatusMax;
		this.handleTime = handleTime;
		this.handleTimeMin = handleTimeMin;
		this.handleTimeMax = handleTimeMax;
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

	public String getAppealDes() {
		return appealDes;
	}

	public void setAppealDes(String appealDes) {
		this.appealDes = appealDes;
	}

	public Byte getAppealStatus() {
		return appealStatus;
	}

	public void setAppealStatus(Byte appealStatus) {
		this.appealStatus = appealStatus;
	}

	public Byte getAppealStatusMin() {
		return appealStatusMin;
	}

	public void setAppealStatusMin(Byte appealStatusMin) {
		this.appealStatusMin = appealStatusMin;
	}

	public Byte getAppealStatusMax() {
		return appealStatusMax;
	}

	public void setAppealStatusMax(Byte appealStatusMax) {
		this.appealStatusMax = appealStatusMax;
	}

	public Date getHandleTime() {
		return handleTime;
	}

	public void setHandleTime(Date handleTime) {
		this.handleTime = handleTime;
	}

	public Date getHandleTimeMin() {
		return handleTimeMin;
	}

	public void setHandleTimeMin(Date handleTimeMin) {
		this.handleTimeMin = handleTimeMin;
	}

	public Date getHandleTimeMax() {
		return handleTimeMax;
	}

	public void setHandleTimeMax(Date handleTimeMax) {
		this.handleTimeMax = handleTimeMax;
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
        return "WeixinTaskAppealQuery {" +
                "id = " + id + 
				", idMin = " + idMin + 
				", idMax = " + idMax + 
				", taskId = " + taskId + 
				", taskIdMin = " + taskIdMin + 
				", taskIdMax = " + taskIdMax + 
				", userId = " + userId + 
				", userIdMin = " + userIdMin + 
				", userIdMax = " + userIdMax + 
				", appealDes = " + appealDes + 
				", appealStatus = " + appealStatus + 
				", appealStatusMin = " + appealStatusMin + 
				", appealStatusMax = " + appealStatusMax + 
				", handleTime = " + handleTime + 
				", handleTimeMin = " + handleTimeMin + 
				", handleTimeMax = " + handleTimeMax + 
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
