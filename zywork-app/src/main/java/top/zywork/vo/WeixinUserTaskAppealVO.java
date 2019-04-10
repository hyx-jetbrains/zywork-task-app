package top.zywork.vo;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinUserTaskAppealVO值对象类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserTaskAppealVO extends BaseVO {

    private static final long serialVersionUID = -9223372036607057702L;

    //t_weixin_task_appeal表的字段对应的属性
	// 申诉编号
	private Long weixinTaskAppealId;
	// 任务编号
	@NotNull(message = "此项是必须项")
	private Long weixinTaskAppealTaskId;
	// 申诉用户编号
	@NotNull(message = "此项是必须项")
	private Long weixinTaskAppealUserId;
	// 申诉描述
	@NotBlank(message = "此项是必须项")
	@Size(min = 1, max = 200, message = "必须是1-200个字符")
	private String weixinTaskAppealAppealDes;
	// 申诉状态
	private Byte weixinTaskAppealAppealStatus;
	// 处理时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealHandleTime;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealCreateTime;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealUpdateTime;
	// 版本号
	private Integer weixinTaskAppealVersion;
	// 是否激活
	private Byte weixinTaskAppealIsActive;
	//t_user表的字段对应的属性
	// 手机号
	@Size(min = 0, max = 11, message = "必须小于11个字符")
	private String userPhone;
	//t_user_detail表的字段对应的属性
	// 昵称
	@Size(min = 0, max = 20, message = "必须小于20个字符")
	private String userDetailNickname;
	
    public WeixinUserTaskAppealVO () {}

    public WeixinUserTaskAppealVO (Long weixinTaskAppealId, Long weixinTaskAppealTaskId, Long weixinTaskAppealUserId, String weixinTaskAppealAppealDes, Byte weixinTaskAppealAppealStatus, Date weixinTaskAppealHandleTime, Date weixinTaskAppealCreateTime, Date weixinTaskAppealUpdateTime, Integer weixinTaskAppealVersion, Byte weixinTaskAppealIsActive, String userPhone, String userDetailNickname) {
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
        return "WeixinUserTaskAppealVO {" +
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
