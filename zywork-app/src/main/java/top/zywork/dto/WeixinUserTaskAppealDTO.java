package top.zywork.dto;

import java.math.BigDecimal;
import java.util.Date;

/**
 * WeixinUserTaskAppealDTO数据传输对象类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserTaskAppealDTO extends BaseDTO {

    private static final long serialVersionUID = -9223372036079683422L;

    //t_weixin_task_appeal表的字段对应的属性
	// 申诉编号
	private Long weixinTaskAppealId;
	// 任务编号
	private Long weixinTaskAppealTaskId;
	// 申诉用户编号
	private Long weixinTaskAppealUserId;
	// 申诉描述
	private String weixinTaskAppealAppealDes;
	// 申诉状态
	private Byte weixinTaskAppealAppealStatus;
	// 处理时间
	private Date weixinTaskAppealHandleTime;
	// 创建时间
	private Date weixinTaskAppealCreateTime;
	// 更新时间
	private Date weixinTaskAppealUpdateTime;
	// 版本号
	private Integer weixinTaskAppealVersion;
	// 是否激活
	private Byte weixinTaskAppealIsActive;
	//t_user表的字段对应的属性
	// 手机号
	private String userPhone;
	//t_user_detail表的字段对应的属性
	// 昵称
	private String userDetailNickname;
	
    public WeixinUserTaskAppealDTO () {}

    public WeixinUserTaskAppealDTO (Long weixinTaskAppealId, Long weixinTaskAppealTaskId, Long weixinTaskAppealUserId, String weixinTaskAppealAppealDes, Byte weixinTaskAppealAppealStatus, Date weixinTaskAppealHandleTime, Date weixinTaskAppealCreateTime, Date weixinTaskAppealUpdateTime, Integer weixinTaskAppealVersion, Byte weixinTaskAppealIsActive, String userPhone, String userDetailNickname) {
        this.weixinTaskAppealId = weixinTaskAppealId;
		this.weixinTaskAppealTaskId = weixinTaskAppealTaskId;
		this.weixinTaskAppealUserId = weixinTaskAppealUserId;
		this.weixinTaskAppealAppealDes = weixinTaskAppealAppealDes;
		this.weixinTaskAppealAppealStatus = weixinTaskAppealAppealStatus;
		this.weixinTaskAppealHandleTime = weixinTaskAppealHandleTime;
		this.weixinTaskAppealCreateTime = weixinTaskAppealCreateTime;
		this.weixinTaskAppealUpdateTime = weixinTaskAppealUpdateTime;
		this.weixinTaskAppealVersion = weixinTaskAppealVersion;
		this.weixinTaskAppealIsActive = weixinTaskAppealIsActive;
		this.userPhone = userPhone;
		this.userDetailNickname = userDetailNickname;
		
    }

    public Long getWeixinTaskAppealId() {
		return weixinTaskAppealId;
	}

	public void setWeixinTaskAppealId(Long weixinTaskAppealId) {
		this.weixinTaskAppealId = weixinTaskAppealId;
	}

	public Long getWeixinTaskAppealTaskId() {
		return weixinTaskAppealTaskId;
	}

	public void setWeixinTaskAppealTaskId(Long weixinTaskAppealTaskId) {
		this.weixinTaskAppealTaskId = weixinTaskAppealTaskId;
	}

	public Long getWeixinTaskAppealUserId() {
		return weixinTaskAppealUserId;
	}

	public void setWeixinTaskAppealUserId(Long weixinTaskAppealUserId) {
		this.weixinTaskAppealUserId = weixinTaskAppealUserId;
	}

	public String getWeixinTaskAppealAppealDes() {
		return weixinTaskAppealAppealDes;
	}

	public void setWeixinTaskAppealAppealDes(String weixinTaskAppealAppealDes) {
		this.weixinTaskAppealAppealDes = weixinTaskAppealAppealDes;
	}

	public Byte getWeixinTaskAppealAppealStatus() {
		return weixinTaskAppealAppealStatus;
	}

	public void setWeixinTaskAppealAppealStatus(Byte weixinTaskAppealAppealStatus) {
		this.weixinTaskAppealAppealStatus = weixinTaskAppealAppealStatus;
	}

	public Date getWeixinTaskAppealHandleTime() {
		return weixinTaskAppealHandleTime;
	}

	public void setWeixinTaskAppealHandleTime(Date weixinTaskAppealHandleTime) {
		this.weixinTaskAppealHandleTime = weixinTaskAppealHandleTime;
	}

	public Date getWeixinTaskAppealCreateTime() {
		return weixinTaskAppealCreateTime;
	}

	public void setWeixinTaskAppealCreateTime(Date weixinTaskAppealCreateTime) {
		this.weixinTaskAppealCreateTime = weixinTaskAppealCreateTime;
	}

	public Date getWeixinTaskAppealUpdateTime() {
		return weixinTaskAppealUpdateTime;
	}

	public void setWeixinTaskAppealUpdateTime(Date weixinTaskAppealUpdateTime) {
		this.weixinTaskAppealUpdateTime = weixinTaskAppealUpdateTime;
	}

	public Integer getWeixinTaskAppealVersion() {
		return weixinTaskAppealVersion;
	}

	public void setWeixinTaskAppealVersion(Integer weixinTaskAppealVersion) {
		this.weixinTaskAppealVersion = weixinTaskAppealVersion;
	}

	public Byte getWeixinTaskAppealIsActive() {
		return weixinTaskAppealIsActive;
	}

	public void setWeixinTaskAppealIsActive(Byte weixinTaskAppealIsActive) {
		this.weixinTaskAppealIsActive = weixinTaskAppealIsActive;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserDetailNickname() {
		return userDetailNickname;
	}

	public void setUserDetailNickname(String userDetailNickname) {
		this.userDetailNickname = userDetailNickname;
	}

	
    @Override
    public String toString() {
        return "WeixinUserTaskAppealDTO {" +
                "weixinTaskAppealId = " + weixinTaskAppealId + 
				", weixinTaskAppealTaskId = " + weixinTaskAppealTaskId + 
				", weixinTaskAppealUserId = " + weixinTaskAppealUserId + 
				", weixinTaskAppealAppealDes = " + weixinTaskAppealAppealDes + 
				", weixinTaskAppealAppealStatus = " + weixinTaskAppealAppealStatus + 
				", weixinTaskAppealHandleTime = " + weixinTaskAppealHandleTime + 
				", weixinTaskAppealCreateTime = " + weixinTaskAppealCreateTime + 
				", weixinTaskAppealUpdateTime = " + weixinTaskAppealUpdateTime + 
				", weixinTaskAppealVersion = " + weixinTaskAppealVersion + 
				", weixinTaskAppealIsActive = " + weixinTaskAppealIsActive + 
				", userPhone = " + userPhone + 
				", userDetailNickname = " + userDetailNickname + 
				" }";
    }

}
