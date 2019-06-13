package top.zywork.dto;

import java.math.BigDecimal;
import java.util.Date;

/**
 * WeixinTaskDTO数据传输对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinTaskDTO extends BaseDTO {

    private static final long serialVersionUID = -9223372035625371071L;

    // 任务编号
	private Long id;
	// 发布用户编号
	private Long userId;
	// 任务标题
	private String title;
	// 加友总数
	private Integer totalNumber;
	// 已确认数
	private Integer confirmNumber;
	// 奖励积分
	private Long integral;
	private String groupChatQrcode;
	// 任务描述
	private String description;
	// 任务状态
	private Integer taskStatus;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 版本号
	private Integer version;
	// 是否激活
	private Byte isActive;
	
    public WeixinTaskDTO () {}

    public WeixinTaskDTO (Long id, Long userId, String title, Integer totalNumber, Integer confirmNumber, Long integral, String description, Integer taskStatus, Date createTime, Date updateTime, Integer version, Byte isActive) {
        this.id = id;
		this.userId = userId;
		this.title = title;
		this.totalNumber = totalNumber;
		this.confirmNumber = confirmNumber;
		this.integral = integral;
		this.description = description;
		this.taskStatus = taskStatus;
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

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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

	public Integer getConfirmNumber() {
		return confirmNumber;
	}

	public void setConfirmNumber(Integer confirmNumber) {
		this.confirmNumber = confirmNumber;
	}

	public Long getIntegral() {
		return integral;
	}

	public void setIntegral(Long integral) {
		this.integral = integral;
	}

	public String getGroupChatQrcode() {
		return groupChatQrcode;
	}

	public void setGroupChatQrcode(String groupChatQrcode) {
		this.groupChatQrcode = groupChatQrcode;
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
        return "WeixinTaskDTO {" +
                "id = " + id + 
				", userId = " + userId + 
				", title = " + title + 
				", totalNumber = " + totalNumber + 
				", confirmNumber = " + confirmNumber + 
				", integral = " + integral + 
				", description = " + description + 
				", taskStatus = " + taskStatus + 
				", createTime = " + createTime + 
				", updateTime = " + updateTime + 
				", version = " + version + 
				", isActive = " + isActive + 
				" }";
    }

}
