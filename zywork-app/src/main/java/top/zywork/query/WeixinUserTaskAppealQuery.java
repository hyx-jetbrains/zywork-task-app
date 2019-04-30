package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinUserTaskAppealQuery查询对象类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserTaskAppealQuery extends PageQuery {

    private static final long serialVersionUID = -9223372036304050898L;

    //t_weixin_task_appeal表的字段对应的属性
	// 申诉编号
	private Long weixinTaskAppealId;
	// 申诉编号（最小值）
	private Long weixinTaskAppealIdMin;
	// 申诉编号（最大值）
	private Long weixinTaskAppealIdMax;
	// 任务编号
	private Long weixinTaskAppealTaskId;
	// 任务编号（最小值）
	private Long weixinTaskAppealTaskIdMin;
	// 任务编号（最大值）
	private Long weixinTaskAppealTaskIdMax;
	// 申诉用户编号
	private Long weixinTaskAppealUserId;
	// 申诉用户编号（最小值）
	private Long weixinTaskAppealUserIdMin;
	// 申诉用户编号（最大值）
	private Long weixinTaskAppealUserIdMax;
	// 申诉描述
	private String weixinTaskAppealAppealDes;
	// 申诉状态
	private Byte weixinTaskAppealAppealStatus;
	// 申诉状态（最小值）
	private Byte weixinTaskAppealAppealStatusMin;
	// 申诉状态（最大值）
	private Byte weixinTaskAppealAppealStatusMax;
	// 处理时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealHandleTime;
	// 处理时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealHandleTimeMin;
	// 处理时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealHandleTimeMax;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealCreateTime;
	// 创建时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealCreateTimeMin;
	// 创建时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealCreateTimeMax;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealUpdateTime;
	// 更新时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealUpdateTimeMin;
	// 更新时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskAppealUpdateTimeMax;
	// 版本号
	private Integer weixinTaskAppealVersion;
	// 版本号（最小值）
	private Integer weixinTaskAppealVersionMin;
	// 版本号（最大值）
	private Integer weixinTaskAppealVersionMax;
	// 是否激活
	private Byte weixinTaskAppealIsActive;
	// 是否激活（最小值）
	private Byte weixinTaskAppealIsActiveMin;
	// 是否激活（最大值）
	private Byte weixinTaskAppealIsActiveMax;
	//t_user表的字段对应的属性
	// 手机号
	private String userPhone;
	//t_user_detail表的字段对应的属性
	// 昵称
	private String userDetailNickname;

	private String userDetailHeadicon;

	private String userDetailWechatQrcode;
	
    public WeixinUserTaskAppealQuery () {}

    public WeixinUserTaskAppealQuery (Long weixinTaskAppealId, Long weixinTaskAppealIdMin, Long weixinTaskAppealIdMax, Long weixinTaskAppealTaskId, Long weixinTaskAppealTaskIdMin, Long weixinTaskAppealTaskIdMax, Long weixinTaskAppealUserId, Long weixinTaskAppealUserIdMin, Long weixinTaskAppealUserIdMax, String weixinTaskAppealAppealDes, Byte weixinTaskAppealAppealStatus, Byte weixinTaskAppealAppealStatusMin, Byte weixinTaskAppealAppealStatusMax, Date weixinTaskAppealHandleTime, Date weixinTaskAppealHandleTimeMin, Date weixinTaskAppealHandleTimeMax, Date weixinTaskAppealCreateTime, Date weixinTaskAppealCreateTimeMin, Date weixinTaskAppealCreateTimeMax, Date weixinTaskAppealUpdateTime, Date weixinTaskAppealUpdateTimeMin, Date weixinTaskAppealUpdateTimeMax, Integer weixinTaskAppealVersion, Integer weixinTaskAppealVersionMin, Integer weixinTaskAppealVersionMax, Byte weixinTaskAppealIsActive, Byte weixinTaskAppealIsActiveMin, Byte weixinTaskAppealIsActiveMax, String userPhone, String userDetailNickname) {
        this.weixinTaskAppealId = weixinTaskAppealId;
		this.weixinTaskAppealIdMin = weixinTaskAppealIdMin;
		this.weixinTaskAppealIdMax = weixinTaskAppealIdMax;
		this.weixinTaskAppealTaskId = weixinTaskAppealTaskId;
		this.weixinTaskAppealTaskIdMin = weixinTaskAppealTaskIdMin;
		this.weixinTaskAppealTaskIdMax = weixinTaskAppealTaskIdMax;
		this.weixinTaskAppealUserId = weixinTaskAppealUserId;
		this.weixinTaskAppealUserIdMin = weixinTaskAppealUserIdMin;
		this.weixinTaskAppealUserIdMax = weixinTaskAppealUserIdMax;
		this.weixinTaskAppealAppealDes = weixinTaskAppealAppealDes;
		this.weixinTaskAppealAppealStatus = weixinTaskAppealAppealStatus;
		this.weixinTaskAppealAppealStatusMin = weixinTaskAppealAppealStatusMin;
		this.weixinTaskAppealAppealStatusMax = weixinTaskAppealAppealStatusMax;
		this.weixinTaskAppealHandleTime = weixinTaskAppealHandleTime;
		this.weixinTaskAppealHandleTimeMin = weixinTaskAppealHandleTimeMin;
		this.weixinTaskAppealHandleTimeMax = weixinTaskAppealHandleTimeMax;
		this.weixinTaskAppealCreateTime = weixinTaskAppealCreateTime;
		this.weixinTaskAppealCreateTimeMin = weixinTaskAppealCreateTimeMin;
		this.weixinTaskAppealCreateTimeMax = weixinTaskAppealCreateTimeMax;
		this.weixinTaskAppealUpdateTime = weixinTaskAppealUpdateTime;
		this.weixinTaskAppealUpdateTimeMin = weixinTaskAppealUpdateTimeMin;
		this.weixinTaskAppealUpdateTimeMax = weixinTaskAppealUpdateTimeMax;
		this.weixinTaskAppealVersion = weixinTaskAppealVersion;
		this.weixinTaskAppealVersionMin = weixinTaskAppealVersionMin;
		this.weixinTaskAppealVersionMax = weixinTaskAppealVersionMax;
		this.weixinTaskAppealIsActive = weixinTaskAppealIsActive;
		this.weixinTaskAppealIsActiveMin = weixinTaskAppealIsActiveMin;
		this.weixinTaskAppealIsActiveMax = weixinTaskAppealIsActiveMax;
		this.userPhone = userPhone;
		this.userDetailNickname = userDetailNickname;
		
    }

    public Long getWeixinTaskAppealId() {
		return weixinTaskAppealId;
	}

	public void setWeixinTaskAppealId(Long weixinTaskAppealId) {
		this.weixinTaskAppealId = weixinTaskAppealId;
	}

	public Long getWeixinTaskAppealIdMin() {
		return weixinTaskAppealIdMin;
	}

	public void setWeixinTaskAppealIdMin(Long weixinTaskAppealIdMin) {
		this.weixinTaskAppealIdMin = weixinTaskAppealIdMin;
	}

	public Long getWeixinTaskAppealIdMax() {
		return weixinTaskAppealIdMax;
	}

	public void setWeixinTaskAppealIdMax(Long weixinTaskAppealIdMax) {
		this.weixinTaskAppealIdMax = weixinTaskAppealIdMax;
	}

	public Long getWeixinTaskAppealTaskId() {
		return weixinTaskAppealTaskId;
	}

	public void setWeixinTaskAppealTaskId(Long weixinTaskAppealTaskId) {
		this.weixinTaskAppealTaskId = weixinTaskAppealTaskId;
	}

	public Long getWeixinTaskAppealTaskIdMin() {
		return weixinTaskAppealTaskIdMin;
	}

	public void setWeixinTaskAppealTaskIdMin(Long weixinTaskAppealTaskIdMin) {
		this.weixinTaskAppealTaskIdMin = weixinTaskAppealTaskIdMin;
	}

	public Long getWeixinTaskAppealTaskIdMax() {
		return weixinTaskAppealTaskIdMax;
	}

	public void setWeixinTaskAppealTaskIdMax(Long weixinTaskAppealTaskIdMax) {
		this.weixinTaskAppealTaskIdMax = weixinTaskAppealTaskIdMax;
	}

	public Long getWeixinTaskAppealUserId() {
		return weixinTaskAppealUserId;
	}

	public void setWeixinTaskAppealUserId(Long weixinTaskAppealUserId) {
		this.weixinTaskAppealUserId = weixinTaskAppealUserId;
	}

	public Long getWeixinTaskAppealUserIdMin() {
		return weixinTaskAppealUserIdMin;
	}

	public void setWeixinTaskAppealUserIdMin(Long weixinTaskAppealUserIdMin) {
		this.weixinTaskAppealUserIdMin = weixinTaskAppealUserIdMin;
	}

	public Long getWeixinTaskAppealUserIdMax() {
		return weixinTaskAppealUserIdMax;
	}

	public void setWeixinTaskAppealUserIdMax(Long weixinTaskAppealUserIdMax) {
		this.weixinTaskAppealUserIdMax = weixinTaskAppealUserIdMax;
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

	public Byte getWeixinTaskAppealAppealStatusMin() {
		return weixinTaskAppealAppealStatusMin;
	}

	public void setWeixinTaskAppealAppealStatusMin(Byte weixinTaskAppealAppealStatusMin) {
		this.weixinTaskAppealAppealStatusMin = weixinTaskAppealAppealStatusMin;
	}

	public Byte getWeixinTaskAppealAppealStatusMax() {
		return weixinTaskAppealAppealStatusMax;
	}

	public void setWeixinTaskAppealAppealStatusMax(Byte weixinTaskAppealAppealStatusMax) {
		this.weixinTaskAppealAppealStatusMax = weixinTaskAppealAppealStatusMax;
	}

	public Date getWeixinTaskAppealHandleTime() {
		return weixinTaskAppealHandleTime;
	}

	public void setWeixinTaskAppealHandleTime(Date weixinTaskAppealHandleTime) {
		this.weixinTaskAppealHandleTime = weixinTaskAppealHandleTime;
	}

	public Date getWeixinTaskAppealHandleTimeMin() {
		return weixinTaskAppealHandleTimeMin;
	}

	public void setWeixinTaskAppealHandleTimeMin(Date weixinTaskAppealHandleTimeMin) {
		this.weixinTaskAppealHandleTimeMin = weixinTaskAppealHandleTimeMin;
	}

	public Date getWeixinTaskAppealHandleTimeMax() {
		return weixinTaskAppealHandleTimeMax;
	}

	public void setWeixinTaskAppealHandleTimeMax(Date weixinTaskAppealHandleTimeMax) {
		this.weixinTaskAppealHandleTimeMax = weixinTaskAppealHandleTimeMax;
	}

	public Date getWeixinTaskAppealCreateTime() {
		return weixinTaskAppealCreateTime;
	}

	public void setWeixinTaskAppealCreateTime(Date weixinTaskAppealCreateTime) {
		this.weixinTaskAppealCreateTime = weixinTaskAppealCreateTime;
	}

	public Date getWeixinTaskAppealCreateTimeMin() {
		return weixinTaskAppealCreateTimeMin;
	}

	public void setWeixinTaskAppealCreateTimeMin(Date weixinTaskAppealCreateTimeMin) {
		this.weixinTaskAppealCreateTimeMin = weixinTaskAppealCreateTimeMin;
	}

	public Date getWeixinTaskAppealCreateTimeMax() {
		return weixinTaskAppealCreateTimeMax;
	}

	public void setWeixinTaskAppealCreateTimeMax(Date weixinTaskAppealCreateTimeMax) {
		this.weixinTaskAppealCreateTimeMax = weixinTaskAppealCreateTimeMax;
	}

	public Date getWeixinTaskAppealUpdateTime() {
		return weixinTaskAppealUpdateTime;
	}

	public void setWeixinTaskAppealUpdateTime(Date weixinTaskAppealUpdateTime) {
		this.weixinTaskAppealUpdateTime = weixinTaskAppealUpdateTime;
	}

	public Date getWeixinTaskAppealUpdateTimeMin() {
		return weixinTaskAppealUpdateTimeMin;
	}

	public void setWeixinTaskAppealUpdateTimeMin(Date weixinTaskAppealUpdateTimeMin) {
		this.weixinTaskAppealUpdateTimeMin = weixinTaskAppealUpdateTimeMin;
	}

	public Date getWeixinTaskAppealUpdateTimeMax() {
		return weixinTaskAppealUpdateTimeMax;
	}

	public void setWeixinTaskAppealUpdateTimeMax(Date weixinTaskAppealUpdateTimeMax) {
		this.weixinTaskAppealUpdateTimeMax = weixinTaskAppealUpdateTimeMax;
	}

	public Integer getWeixinTaskAppealVersion() {
		return weixinTaskAppealVersion;
	}

	public void setWeixinTaskAppealVersion(Integer weixinTaskAppealVersion) {
		this.weixinTaskAppealVersion = weixinTaskAppealVersion;
	}

	public Integer getWeixinTaskAppealVersionMin() {
		return weixinTaskAppealVersionMin;
	}

	public void setWeixinTaskAppealVersionMin(Integer weixinTaskAppealVersionMin) {
		this.weixinTaskAppealVersionMin = weixinTaskAppealVersionMin;
	}

	public Integer getWeixinTaskAppealVersionMax() {
		return weixinTaskAppealVersionMax;
	}

	public void setWeixinTaskAppealVersionMax(Integer weixinTaskAppealVersionMax) {
		this.weixinTaskAppealVersionMax = weixinTaskAppealVersionMax;
	}

	public Byte getWeixinTaskAppealIsActive() {
		return weixinTaskAppealIsActive;
	}

	public void setWeixinTaskAppealIsActive(Byte weixinTaskAppealIsActive) {
		this.weixinTaskAppealIsActive = weixinTaskAppealIsActive;
	}

	public Byte getWeixinTaskAppealIsActiveMin() {
		return weixinTaskAppealIsActiveMin;
	}

	public void setWeixinTaskAppealIsActiveMin(Byte weixinTaskAppealIsActiveMin) {
		this.weixinTaskAppealIsActiveMin = weixinTaskAppealIsActiveMin;
	}

	public Byte getWeixinTaskAppealIsActiveMax() {
		return weixinTaskAppealIsActiveMax;
	}

	public void setWeixinTaskAppealIsActiveMax(Byte weixinTaskAppealIsActiveMax) {
		this.weixinTaskAppealIsActiveMax = weixinTaskAppealIsActiveMax;
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


	public String getUserDetailHeadicon() {
		return userDetailHeadicon;
	}

	public void setUserDetailHeadicon(String userDetailHeadicon) {
		this.userDetailHeadicon = userDetailHeadicon;
	}

	public String getUserDetailWechatQrcode() {
		return userDetailWechatQrcode;
	}

	public void setUserDetailWechatQrcode(String userDetailWechatQrcode) {
		this.userDetailWechatQrcode = userDetailWechatQrcode;
	}

	@Override
    public String toString() {
        return "WeixinUserTaskAppealQuery {" +
                "weixinTaskAppealId = " + weixinTaskAppealId + 
				", weixinTaskAppealIdMin = " + weixinTaskAppealIdMin + 
				", weixinTaskAppealIdMax = " + weixinTaskAppealIdMax + 
				", weixinTaskAppealTaskId = " + weixinTaskAppealTaskId + 
				", weixinTaskAppealTaskIdMin = " + weixinTaskAppealTaskIdMin + 
				", weixinTaskAppealTaskIdMax = " + weixinTaskAppealTaskIdMax + 
				", weixinTaskAppealUserId = " + weixinTaskAppealUserId + 
				", weixinTaskAppealUserIdMin = " + weixinTaskAppealUserIdMin + 
				", weixinTaskAppealUserIdMax = " + weixinTaskAppealUserIdMax + 
				", weixinTaskAppealAppealDes = " + weixinTaskAppealAppealDes + 
				", weixinTaskAppealAppealStatus = " + weixinTaskAppealAppealStatus + 
				", weixinTaskAppealAppealStatusMin = " + weixinTaskAppealAppealStatusMin + 
				", weixinTaskAppealAppealStatusMax = " + weixinTaskAppealAppealStatusMax + 
				", weixinTaskAppealHandleTime = " + weixinTaskAppealHandleTime + 
				", weixinTaskAppealHandleTimeMin = " + weixinTaskAppealHandleTimeMin + 
				", weixinTaskAppealHandleTimeMax = " + weixinTaskAppealHandleTimeMax + 
				", weixinTaskAppealCreateTime = " + weixinTaskAppealCreateTime + 
				", weixinTaskAppealCreateTimeMin = " + weixinTaskAppealCreateTimeMin + 
				", weixinTaskAppealCreateTimeMax = " + weixinTaskAppealCreateTimeMax + 
				", weixinTaskAppealUpdateTime = " + weixinTaskAppealUpdateTime + 
				", weixinTaskAppealUpdateTimeMin = " + weixinTaskAppealUpdateTimeMin + 
				", weixinTaskAppealUpdateTimeMax = " + weixinTaskAppealUpdateTimeMax + 
				", weixinTaskAppealVersion = " + weixinTaskAppealVersion + 
				", weixinTaskAppealVersionMin = " + weixinTaskAppealVersionMin + 
				", weixinTaskAppealVersionMax = " + weixinTaskAppealVersionMax + 
				", weixinTaskAppealIsActive = " + weixinTaskAppealIsActive + 
				", weixinTaskAppealIsActiveMin = " + weixinTaskAppealIsActiveMin + 
				", weixinTaskAppealIsActiveMax = " + weixinTaskAppealIsActiveMax + 
				", userPhone = " + userPhone + 
				", userDetailNickname = " + userDetailNickname + 
				" }";
    }

}
