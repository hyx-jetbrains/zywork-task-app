package top.zywork.vo;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinTaskAppealVO值对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinTaskAppealVO extends BaseVO {

    private static final long serialVersionUID = -9223372034855662460L;

    // 申诉编号
	private Long id;
	// 任务编号
	@NotNull(message = "此项是必须项")
	private Long taskId;
	// 申诉用户编号
	//@NotNull(message = "此项是必须项")
	private Long userId;
	// 申诉描述
	@NotBlank(message = "此项是必须项")
	@Size(min = 1, max = 200, message = "必须是1-200个字符")
	private String appealDes;
	// 申诉状态
	private Byte appealStatus;
	// 处理时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date handleTime;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTime;
	// 版本号
	private Integer version;
	// 是否激活
	private Byte isActive;
	
    public WeixinTaskAppealVO () {}

    public WeixinTaskAppealVO (Long id, Long taskId, Long userId, String appealDes, Byte appealStatus, Date handleTime, Date createTime, Date updateTime, Integer version, Byte isActive) {
        this.id = id;
		this.taskId = taskId;
		this.userId = userId;
		this.appealDes = appealDes;
		this.appealStatus = appealStatus;
		this.handleTime = handleTime;
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

	public Date getHandleTime() {
		return handleTime;
	}

	public void setHandleTime(Date handleTime) {
		this.handleTime = handleTime;
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
        return "WeixinTaskAppealVO {" +
                "id = " + id + 
				", taskId = " + taskId + 
				", userId = " + userId + 
				", appealDes = " + appealDes + 
				", appealStatus = " + appealStatus + 
				", handleTime = " + handleTime + 
				", createTime = " + createTime + 
				", updateTime = " + updateTime + 
				", version = " + version + 
				", isActive = " + isActive + 
				" }";
    }

}
