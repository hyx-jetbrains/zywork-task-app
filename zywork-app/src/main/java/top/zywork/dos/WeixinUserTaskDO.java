package top.zywork.dos;

import java.math.BigDecimal;
import java.util.Date;

/**
 * WeixinUserTaskDO数据对象实体类<br/>
 *
 * 创建于2019-04-08<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserTaskDO extends BaseDO {

    private static final long serialVersionUID = -9223372036613853487L;

    //t_weixin_task表的字段对应的属性
	// 任务编号
	private Long weixinTaskId;
	// 发布用户编号
	private Long weixinTaskUserId;
	// 任务标题
	private String weixinTaskTitle;
	// 加友总数
	private Integer weixinTaskTotalNumber;
	// 已确认数
	private Integer weixinTaskConfirmNumber;
	// 奖励积分
	private Long weixinTaskIntegral;

	private String weixinTaskGroupChatQrcode;
	// 任务描述
	private String weixinTaskDescription;
	// 任务状态
	private Integer weixinTaskTaskStatus;
	// 创建时间
	private Date weixinTaskCreateTime;
	// 更新时间
	private Date weixinTaskUpdateTime;
	// 版本号
	private Integer weixinTaskVersion;
	// 是否激活
	private Byte weixinTaskIsActive;
	//t_user_detail表的字段对应的属性
	// 昵称
	private String userDetailNickname;
	// 头像地址
	private String userDetailHeadicon;
	//t_user表的字段对应的属性
	// 手机号
	private String userPhone;
	
    public WeixinUserTaskDO () {}

    public WeixinUserTaskDO (Long weixinTaskId, Long weixinTaskUserId, String weixinTaskTitle, Integer weixinTaskTotalNumber, Integer weixinTaskConfirmNumber, Long weixinTaskIntegral, String weixinTaskDescription, Integer weixinTaskTaskStatus, Date weixinTaskCreateTime, Date weixinTaskUpdateTime, Integer weixinTaskVersion, Byte weixinTaskIsActive, String userDetailNickname, String userDetailHeadicon, String userPhone) {
        this.weixinTaskId = weixinTaskId;
		this.weixinTaskUserId = weixinTaskUserId;
		this.weixinTaskTitle = weixinTaskTitle;
		this.weixinTaskTotalNumber = weixinTaskTotalNumber;
		this.weixinTaskConfirmNumber = weixinTaskConfirmNumber;
		this.weixinTaskIntegral = weixinTaskIntegral;
		this.weixinTaskDescription = weixinTaskDescription;
		this.weixinTaskTaskStatus = weixinTaskTaskStatus;
		this.weixinTaskCreateTime = weixinTaskCreateTime;
		this.weixinTaskUpdateTime = weixinTaskUpdateTime;
		this.weixinTaskVersion = weixinTaskVersion;
		this.weixinTaskIsActive = weixinTaskIsActive;
		this.userDetailNickname = userDetailNickname;
		this.userDetailHeadicon = userDetailHeadicon;
		this.userPhone = userPhone;
		
    }

    public Long getWeixinTaskId() {
		return weixinTaskId;
	}

	public void setWeixinTaskId(Long weixinTaskId) {
		this.weixinTaskId = weixinTaskId;
	}

	public Long getWeixinTaskUserId() {
		return weixinTaskUserId;
	}

	public void setWeixinTaskUserId(Long weixinTaskUserId) {
		this.weixinTaskUserId = weixinTaskUserId;
	}

	public String getWeixinTaskTitle() {
		return weixinTaskTitle;
	}

	public void setWeixinTaskTitle(String weixinTaskTitle) {
		this.weixinTaskTitle = weixinTaskTitle;
	}

	public Integer getWeixinTaskTotalNumber() {
		return weixinTaskTotalNumber;
	}

	public void setWeixinTaskTotalNumber(Integer weixinTaskTotalNumber) {
		this.weixinTaskTotalNumber = weixinTaskTotalNumber;
	}

	public Integer getWeixinTaskConfirmNumber() {
		return weixinTaskConfirmNumber;
	}

	public void setWeixinTaskConfirmNumber(Integer weixinTaskConfirmNumber) {
		this.weixinTaskConfirmNumber = weixinTaskConfirmNumber;
	}

	public Long getWeixinTaskIntegral() {
		return weixinTaskIntegral;
	}

	public void setWeixinTaskIntegral(Long weixinTaskIntegral) {
		this.weixinTaskIntegral = weixinTaskIntegral;
	}

	public String getWeixinTaskGroupChatQrcode() {
		return weixinTaskGroupChatQrcode;
	}

	public void setWeixinTaskGroupChatQrcode(String weixinTaskGroupChatQrcode) {
		this.weixinTaskGroupChatQrcode = weixinTaskGroupChatQrcode;
	}

	public String getWeixinTaskDescription() {
		return weixinTaskDescription;
	}

	public void setWeixinTaskDescription(String weixinTaskDescription) {
		this.weixinTaskDescription = weixinTaskDescription;
	}

	public Integer getWeixinTaskTaskStatus() {
		return weixinTaskTaskStatus;
	}

	public void setWeixinTaskTaskStatus(Integer weixinTaskTaskStatus) {
		this.weixinTaskTaskStatus = weixinTaskTaskStatus;
	}

	public Date getWeixinTaskCreateTime() {
		return weixinTaskCreateTime;
	}

	public void setWeixinTaskCreateTime(Date weixinTaskCreateTime) {
		this.weixinTaskCreateTime = weixinTaskCreateTime;
	}

	public Date getWeixinTaskUpdateTime() {
		return weixinTaskUpdateTime;
	}

	public void setWeixinTaskUpdateTime(Date weixinTaskUpdateTime) {
		this.weixinTaskUpdateTime = weixinTaskUpdateTime;
	}

	public Integer getWeixinTaskVersion() {
		return weixinTaskVersion;
	}

	public void setWeixinTaskVersion(Integer weixinTaskVersion) {
		this.weixinTaskVersion = weixinTaskVersion;
	}

	public Byte getWeixinTaskIsActive() {
		return weixinTaskIsActive;
	}

	public void setWeixinTaskIsActive(Byte weixinTaskIsActive) {
		this.weixinTaskIsActive = weixinTaskIsActive;
	}

	public String getUserDetailNickname() {
		return userDetailNickname;
	}

	public void setUserDetailNickname(String userDetailNickname) {
		this.userDetailNickname = userDetailNickname;
	}

	public String getUserDetailHeadicon() {
		return userDetailHeadicon;
	}

	public void setUserDetailHeadicon(String userDetailHeadicon) {
		this.userDetailHeadicon = userDetailHeadicon;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	
    @Override
    public String toString() {
        return "WeixinUserTaskDO {" +
                "weixinTaskId = " + weixinTaskId + 
				", weixinTaskUserId = " + weixinTaskUserId + 
				", weixinTaskTitle = " + weixinTaskTitle + 
				", weixinTaskTotalNumber = " + weixinTaskTotalNumber + 
				", weixinTaskConfirmNumber = " + weixinTaskConfirmNumber + 
				", weixinTaskIntegral = " + weixinTaskIntegral + 
				", weixinTaskDescription = " + weixinTaskDescription + 
				", weixinTaskTaskStatus = " + weixinTaskTaskStatus + 
				", weixinTaskCreateTime = " + weixinTaskCreateTime + 
				", weixinTaskUpdateTime = " + weixinTaskUpdateTime + 
				", weixinTaskVersion = " + weixinTaskVersion + 
				", weixinTaskIsActive = " + weixinTaskIsActive + 
				", userDetailNickname = " + userDetailNickname + 
				", userDetailHeadicon = " + userDetailHeadicon + 
				", userPhone = " + userPhone + 
				" }";
    }

}
