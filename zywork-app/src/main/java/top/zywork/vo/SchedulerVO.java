package top.zywork.vo;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * SchedulerVO值对象类<br/>
 *
 * 创建于2019-01-28<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
public class SchedulerVO extends BaseVO {

    private static final long serialVersionUID = -9223372036086062918L;

    // 作业编号
	private Long id;
	// 作业名称
	@NotBlank(message = "此项是必须项")
	@Size(min = 1, max = 50, message = "必须是1-50个字符")
	private String name;
	// 完整类名
	@NotBlank(message = "此项是必须项")
	@Size(min = 1, max = 200, message = "必须是1-200个字符")
	private String className;
	// cron表达式
	@NotBlank(message = "此项是必须项")
	@Size(min = 1, max = 50, message = "必须是1-50个字符")
	private String cronExpression;
	// 作业组名称
	@Size(min = 0, max = 50, message = "必须小于50个字符")
	private String groupName;
	// 触发器名称
	@Size(min = 0, max = 50, message = "必须小于50个字符")
	private String triggerName;
	// 触发器组
	@Size(min = 0, max = 50, message = "必须小于50个字符")
	private String triggerGroup;
	// 作业描述
	@Size(min = 0, max = 500, message = "必须小于500个字符")
	private String description;
	// 作业状态
	private Byte jobStatus;
	// 状态更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date jobStatusTime;
	// 自动启动
	private Byte autoStart;
	// 版本号
	private Integer version;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTime;
	// 是否激活
	private Byte isActive;
	
    public SchedulerVO () {}

    public SchedulerVO (Long id, String name, String className, String cronExpression, String groupName, String triggerName, String triggerGroup, String description, Byte jobStatus, Date jobStatusTime, Byte autoStart, Integer version, Date createTime, Date updateTime, Byte isActive) {
        this.id = id;
		this.name = name;
		this.className = className;
		this.cronExpression = cronExpression;
		this.groupName = groupName;
		this.triggerName = triggerName;
		this.triggerGroup = triggerGroup;
		this.description = description;
		this.jobStatus = jobStatus;
		this.jobStatusTime = jobStatusTime;
		this.autoStart = autoStart;
		this.version = version;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.isActive = isActive;
		
    }

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getCronExpression() {
		return cronExpression;
	}

	public void setCronExpression(String cronExpression) {
		this.cronExpression = cronExpression;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getTriggerName() {
		return triggerName;
	}

	public void setTriggerName(String triggerName) {
		this.triggerName = triggerName;
	}

	public String getTriggerGroup() {
		return triggerGroup;
	}

	public void setTriggerGroup(String triggerGroup) {
		this.triggerGroup = triggerGroup;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Byte getJobStatus() {
		return jobStatus;
	}

	public void setJobStatus(Byte jobStatus) {
		this.jobStatus = jobStatus;
	}

	public Date getJobStatusTime() {
		return jobStatusTime;
	}

	public void setJobStatusTime(Date jobStatusTime) {
		this.jobStatusTime = jobStatusTime;
	}

	public Byte getAutoStart() {
		return autoStart;
	}

	public void setAutoStart(Byte autoStart) {
		this.autoStart = autoStart;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
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

	public Byte getIsActive() {
		return isActive;
	}

	public void setIsActive(Byte isActive) {
		this.isActive = isActive;
	}

	
    @Override
    public String toString() {
        return "SchedulerVO {" +
                "id = " + id + 
				", name = " + name + 
				", className = " + className + 
				", cronExpression = " + cronExpression + 
				", groupName = " + groupName + 
				", triggerName = " + triggerName + 
				", triggerGroup = " + triggerGroup + 
				", description = " + description + 
				", jobStatus = " + jobStatus + 
				", jobStatusTime = " + jobStatusTime + 
				", autoStart = " + autoStart + 
				", version = " + version + 
				", createTime = " + createTime + 
				", updateTime = " + updateTime + 
				", isActive = " + isActive + 
				" }";
    }

}
