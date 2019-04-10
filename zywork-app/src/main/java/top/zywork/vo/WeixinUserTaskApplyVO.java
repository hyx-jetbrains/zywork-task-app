package top.zywork.vo;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinUserTaskApplyVO值对象类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserTaskApplyVO extends BaseVO {

    private static final long serialVersionUID = -9223372034917086881L;

    //t_weixin_task_apply表的字段对应的属性
	// 报名编号
	private Long weixinTaskApplyId;
	// 任务编号
	@NotNull(message = "此项是必须项")
	private Long weixinTaskApplyTaskId;
	// 报名用户编号
	@NotNull(message = "此项是必须项")
	private Long weixinTaskApplyUserId;
	// 发布方确认状态
	private Byte weixinTaskApplyPubConfirmStatus;
	// 发布方确认时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyPubConfirmTime;
	// 报名方确认状态
	private Byte weixinTaskApplyAppConfirmStatus;
	// 报名方确认时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyAppConfirmTime;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyCreateTime;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyUpdateTime;
	// 版本号
	private Integer weixinTaskApplyVersion;
	// 是否激活
	private Byte weixinTaskApplyIsActive;
	//t_user_detail表的字段对应的属性
	// 昵称
	@Size(min = 0, max = 20, message = "必须小于20个字符")
	private String userDetailNickname;
	//t_user表的字段对应的属性
	// 手机号
	@Size(min = 0, max = 11, message = "必须小于11个字符")
	private String userPhone;
	
    public WeixinUserTaskApplyVO () {}

    public WeixinUserTaskApplyVO (Long weixinTaskApplyId, Long weixinTaskApplyTaskId, Long weixinTaskApplyUserId, Byte weixinTaskApplyPubConfirmStatus, Date weixinTaskApplyPubConfirmTime, Byte weixinTaskApplyAppConfirmStatus, Date weixinTaskApplyAppConfirmTime, Date weixinTaskApplyCreateTime, Date weixinTaskApplyUpdateTime, Integer weixinTaskApplyVersion, Byte weixinTaskApplyIsActive, String userDetailNickname, String userPhone) {
        this.weixinTaskApplyId = weixinTaskApplyId;
		this.weixinTaskApplyTaskId = weixinTaskApplyTaskId;
		this.weixinTaskApplyUserId = weixinTaskApplyUserId;
		this.weixinTaskApplyPubConfirmStatus = weixinTaskApplyPubConfirmStatus;
		this.weixinTaskApplyPubConfirmTime = weixinTaskApplyPubConfirmTime;
		this.weixinTaskApplyAppConfirmStatus = weixinTaskApplyAppConfirmStatus;
		this.weixinTaskApplyAppConfirmTime = weixinTaskApplyAppConfirmTime;
		this.weixinTaskApplyCreateTime = weixinTaskApplyCreateTime;
		this.weixinTaskApplyUpdateTime = weixinTaskApplyUpdateTime;
		this.weixinTaskApplyVersion = weixinTaskApplyVersion;
		this.weixinTaskApplyIsActive = weixinTaskApplyIsActive;
		this.userDetailNickname = userDetailNickname;
		this.userPhone = userPhone;
		
    }

    public Long getWeixinTaskApplyId() {
		return weixinTaskApplyId;
	}

	public void setWeixinTaskApplyId(Long weixinTaskApplyId) {
		this.weixinTaskApplyId = weixinTaskApplyId;
	}

	public Long getWeixinTaskApplyTaskId() {
		return weixinTaskApplyTaskId;
	}

	public void setWeixinTaskApplyTaskId(Long weixinTaskApplyTaskId) {
		this.weixinTaskApplyTaskId = weixinTaskApplyTaskId;
	}

	public Long getWeixinTaskApplyUserId() {
		return weixinTaskApplyUserId;
	}

	public void setWeixinTaskApplyUserId(Long weixinTaskApplyUserId) {
		this.weixinTaskApplyUserId = weixinTaskApplyUserId;
	}

	public Byte getWeixinTaskApplyPubConfirmStatus() {
		return weixinTaskApplyPubConfirmStatus;
	}

	public void setWeixinTaskApplyPubConfirmStatus(Byte weixinTaskApplyPubConfirmStatus) {
		this.weixinTaskApplyPubConfirmStatus = weixinTaskApplyPubConfirmStatus;
	}

	public Date getWeixinTaskApplyPubConfirmTime() {
		return weixinTaskApplyPubConfirmTime;
	}

	public void setWeixinTaskApplyPubConfirmTime(Date weixinTaskApplyPubConfirmTime) {
		this.weixinTaskApplyPubConfirmTime = weixinTaskApplyPubConfirmTime;
	}

	public Byte getWeixinTaskApplyAppConfirmStatus() {
		return weixinTaskApplyAppConfirmStatus;
	}

	public void setWeixinTaskApplyAppConfirmStatus(Byte weixinTaskApplyAppConfirmStatus) {
		this.weixinTaskApplyAppConfirmStatus = weixinTaskApplyAppConfirmStatus;
	}

	public Date getWeixinTaskApplyAppConfirmTime() {
		return weixinTaskApplyAppConfirmTime;
	}

	public void setWeixinTaskApplyAppConfirmTime(Date weixinTaskApplyAppConfirmTime) {
		this.weixinTaskApplyAppConfirmTime = weixinTaskApplyAppConfirmTime;
	}

	public Date getWeixinTaskApplyCreateTime() {
		return weixinTaskApplyCreateTime;
	}

	public void setWeixinTaskApplyCreateTime(Date weixinTaskApplyCreateTime) {
		this.weixinTaskApplyCreateTime = weixinTaskApplyCreateTime;
	}

	public Date getWeixinTaskApplyUpdateTime() {
		return weixinTaskApplyUpdateTime;
	}

	public void setWeixinTaskApplyUpdateTime(Date weixinTaskApplyUpdateTime) {
		this.weixinTaskApplyUpdateTime = weixinTaskApplyUpdateTime;
	}

	public Integer getWeixinTaskApplyVersion() {
		return weixinTaskApplyVersion;
	}

	public void setWeixinTaskApplyVersion(Integer weixinTaskApplyVersion) {
		this.weixinTaskApplyVersion = weixinTaskApplyVersion;
	}

	public Byte getWeixinTaskApplyIsActive() {
		return weixinTaskApplyIsActive;
	}

	public void setWeixinTaskApplyIsActive(Byte weixinTaskApplyIsActive) {
		this.weixinTaskApplyIsActive = weixinTaskApplyIsActive;
	}

	public String getUserDetailNickname() {
		return userDetailNickname;
	}

	public void setUserDetailNickname(String userDetailNickname) {
		this.userDetailNickname = userDetailNickname;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	
    @Override
    public String toString() {
        return "WeixinUserTaskApplyVO {" +
                "weixinTaskApplyId = " + weixinTaskApplyId + 
				", weixinTaskApplyTaskId = " + weixinTaskApplyTaskId + 
				", weixinTaskApplyUserId = " + weixinTaskApplyUserId + 
				", weixinTaskApplyPubConfirmStatus = " + weixinTaskApplyPubConfirmStatus + 
				", weixinTaskApplyPubConfirmTime = " + weixinTaskApplyPubConfirmTime + 
				", weixinTaskApplyAppConfirmStatus = " + weixinTaskApplyAppConfirmStatus + 
				", weixinTaskApplyAppConfirmTime = " + weixinTaskApplyAppConfirmTime + 
				", weixinTaskApplyCreateTime = " + weixinTaskApplyCreateTime + 
				", weixinTaskApplyUpdateTime = " + weixinTaskApplyUpdateTime + 
				", weixinTaskApplyVersion = " + weixinTaskApplyVersion + 
				", weixinTaskApplyIsActive = " + weixinTaskApplyIsActive + 
				", userDetailNickname = " + userDetailNickname + 
				", userPhone = " + userPhone + 
				" }";
    }

}
