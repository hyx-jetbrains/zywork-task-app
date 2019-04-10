package top.zywork.dos;

import java.math.BigDecimal;
import java.util.Date;

/**
 * WeixinTaskAppealDO数据对象实体类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinTaskAppealDO extends BaseDO {

    private static final long serialVersionUID = -9223372035529433744L;

    // 申诉编号
	private Long id;
	// 任务编号
	private Long taskId;
	// 申诉用户编号
	private Long userId;
	// 申诉描述
	private String appealDes;
	// 申诉状态
	private Byte appealStatus;
	// 处理时间
	private Date handleTime;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 版本号
	private Integer version;
	// 是否激活
	private Byte isActive;
	
    public WeixinTaskAppealDO () {}

    public WeixinTaskAppealDO (Long id, Long taskId, Long userId, String appealDes, Byte appealStatus, Date handleTime, Date createTime, Date updateTime, Integer version, Byte isActive) {
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
        return "WeixinTaskAppealDO {" +
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
