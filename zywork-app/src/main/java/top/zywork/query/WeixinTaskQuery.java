package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinTaskQuery查询对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinTaskQuery extends PageQuery {

    private static final long serialVersionUID = -9223372036656999122L;

    // 任务编号
	private Long id;
	// 任务编号（最小值）
	private Long idMin;
	// 任务编号（最大值）
	private Long idMax;
	// 发布用户编号
	private Long userId;
	// 发布用户编号（最小值）
	private Long userIdMin;
	// 发布用户编号（最大值）
	private Long userIdMax;
	// 任务标题
	private String title;
	// 加友总数
	private Integer totalNumber;
	// 加友总数（最小值）
	private Integer totalNumberMin;
	// 加友总数（最大值）
	private Integer totalNumberMax;
	// 已确认数
	private Integer confirmNumber;
	// 已确认数（最小值）
	private Integer confirmNumberMin;
	// 已确认数（最大值）
	private Integer confirmNumberMax;
	// 奖励积分
	private Long integral;
	// 奖励积分（最小值）
	private Long integralMin;
	// 奖励积分（最大值）
	private Long integralMax;
	// 任务描述
	private String description;
	// 任务状态
	private Integer taskStatus;
	// 任务状态（最小值）
	private Integer taskStatusMin;
	// 任务状态（最大值）
	private Integer taskStatusMax;
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
	
    public WeixinTaskQuery () {}

    public WeixinTaskQuery (Long id, Long idMin, Long idMax, Long userId, Long userIdMin, Long userIdMax, String title, Integer totalNumber, Integer totalNumberMin, Integer totalNumberMax, Integer confirmNumber, Integer confirmNumberMin, Integer confirmNumberMax, Long integral, Long integralMin, Long integralMax, String description, Integer taskStatus, Integer taskStatusMin, Integer taskStatusMax, Date createTime, Date createTimeMin, Date createTimeMax, Date updateTime, Date updateTimeMin, Date updateTimeMax, Integer version, Integer versionMin, Integer versionMax, Byte isActive, Byte isActiveMin, Byte isActiveMax) {
        this.id = id;
		this.idMin = idMin;
		this.idMax = idMax;
		this.userId = userId;
		this.userIdMin = userIdMin;
		this.userIdMax = userIdMax;
		this.title = title;
		this.totalNumber = totalNumber;
		this.totalNumberMin = totalNumberMin;
		this.totalNumberMax = totalNumberMax;
		this.confirmNumber = confirmNumber;
		this.confirmNumberMin = confirmNumberMin;
		this.confirmNumberMax = confirmNumberMax;
		this.integral = integral;
		this.integralMin = integralMin;
		this.integralMax = integralMax;
		this.description = description;
		this.taskStatus = taskStatus;
		this.taskStatusMin = taskStatusMin;
		this.taskStatusMax = taskStatusMax;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(Integer totalNumber) {
		this.totalNumber = totalNumber;
	}

	public Integer getTotalNumberMin() {
		return totalNumberMin;
	}

	public void setTotalNumberMin(Integer totalNumberMin) {
		this.totalNumberMin = totalNumberMin;
	}

	public Integer getTotalNumberMax() {
		return totalNumberMax;
	}

	public void setTotalNumberMax(Integer totalNumberMax) {
		this.totalNumberMax = totalNumberMax;
	}

	public Integer getConfirmNumber() {
		return confirmNumber;
	}

	public void setConfirmNumber(Integer confirmNumber) {
		this.confirmNumber = confirmNumber;
	}

	public Integer getConfirmNumberMin() {
		return confirmNumberMin;
	}

	public void setConfirmNumberMin(Integer confirmNumberMin) {
		this.confirmNumberMin = confirmNumberMin;
	}

	public Integer getConfirmNumberMax() {
		return confirmNumberMax;
	}

	public void setConfirmNumberMax(Integer confirmNumberMax) {
		this.confirmNumberMax = confirmNumberMax;
	}

	public Long getIntegral() {
		return integral;
	}

	public void setIntegral(Long integral) {
		this.integral = integral;
	}

	public Long getIntegralMin() {
		return integralMin;
	}

	public void setIntegralMin(Long integralMin) {
		this.integralMin = integralMin;
	}

	public Long getIntegralMax() {
		return integralMax;
	}

	public void setIntegralMax(Long integralMax) {
		this.integralMax = integralMax;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getTaskStatus() {
		return taskStatus;
	}

	public void setTaskStatus(Integer taskStatus) {
		this.taskStatus = taskStatus;
	}

	public Integer getTaskStatusMin() {
		return taskStatusMin;
	}

	public void setTaskStatusMin(Integer taskStatusMin) {
		this.taskStatusMin = taskStatusMin;
	}

	public Integer getTaskStatusMax() {
		return taskStatusMax;
	}

	public void setTaskStatusMax(Integer taskStatusMax) {
		this.taskStatusMax = taskStatusMax;
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
        return "WeixinTaskQuery {" +
                "id = " + id + 
				", idMin = " + idMin + 
				", idMax = " + idMax + 
				", userId = " + userId + 
				", userIdMin = " + userIdMin + 
				", userIdMax = " + userIdMax + 
				", title = " + title + 
				", totalNumber = " + totalNumber + 
				", totalNumberMin = " + totalNumberMin + 
				", totalNumberMax = " + totalNumberMax + 
				", confirmNumber = " + confirmNumber + 
				", confirmNumberMin = " + confirmNumberMin + 
				", confirmNumberMax = " + confirmNumberMax + 
				", integral = " + integral + 
				", integralMin = " + integralMin + 
				", integralMax = " + integralMax + 
				", description = " + description + 
				", taskStatus = " + taskStatus + 
				", taskStatusMin = " + taskStatusMin + 
				", taskStatusMax = " + taskStatusMax + 
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
