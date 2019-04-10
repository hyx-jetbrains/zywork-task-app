package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinUserTaskQuery查询对象类<br/>
 *
 * 创建于2019-04-08<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserTaskQuery extends PageQuery {

    private static final long serialVersionUID = -9223372036170488234L;

    //t_weixin_task表的字段对应的属性
	// 任务编号
	private Long weixinTaskId;
	// 任务编号（最小值）
	private Long weixinTaskIdMin;
	// 任务编号（最大值）
	private Long weixinTaskIdMax;
	// 发布用户编号
	private Long weixinTaskUserId;
	// 发布用户编号（最小值）
	private Long weixinTaskUserIdMin;
	// 发布用户编号（最大值）
	private Long weixinTaskUserIdMax;
	// 任务标题
	private String weixinTaskTitle;
	// 加友总数
	private Integer weixinTaskTotalNumber;
	// 加友总数（最小值）
	private Integer weixinTaskTotalNumberMin;
	// 加友总数（最大值）
	private Integer weixinTaskTotalNumberMax;
	// 已确认数
	private Integer weixinTaskConfirmNumber;
	// 已确认数（最小值）
	private Integer weixinTaskConfirmNumberMin;
	// 已确认数（最大值）
	private Integer weixinTaskConfirmNumberMax;
	// 奖励积分
	private Long weixinTaskIntegral;
	// 奖励积分（最小值）
	private Long weixinTaskIntegralMin;
	// 奖励积分（最大值）
	private Long weixinTaskIntegralMax;
	// 任务描述
	private String weixinTaskDescription;
	// 任务状态
	private Integer weixinTaskTaskStatus;
	// 任务状态（最小值）
	private Integer weixinTaskTaskStatusMin;
	// 任务状态（最大值）
	private Integer weixinTaskTaskStatusMax;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskCreateTime;
	// 创建时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskCreateTimeMin;
	// 创建时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskCreateTimeMax;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskUpdateTime;
	// 更新时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskUpdateTimeMin;
	// 更新时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskUpdateTimeMax;
	// 版本号
	private Integer weixinTaskVersion;
	// 版本号（最小值）
	private Integer weixinTaskVersionMin;
	// 版本号（最大值）
	private Integer weixinTaskVersionMax;
	// 是否激活
	private Byte weixinTaskIsActive;
	// 是否激活（最小值）
	private Byte weixinTaskIsActiveMin;
	// 是否激活（最大值）
	private Byte weixinTaskIsActiveMax;
	//t_user_detail表的字段对应的属性
	// 昵称
	private String userDetailNickname;
	// 头像地址
	private String userDetailHeadicon;
	//t_user表的字段对应的属性
	// 手机号
	private String userPhone;
	
    public WeixinUserTaskQuery () {}

    public WeixinUserTaskQuery (Long weixinTaskId, Long weixinTaskIdMin, Long weixinTaskIdMax, Long weixinTaskUserId, Long weixinTaskUserIdMin, Long weixinTaskUserIdMax, String weixinTaskTitle, Integer weixinTaskTotalNumber, Integer weixinTaskTotalNumberMin, Integer weixinTaskTotalNumberMax, Integer weixinTaskConfirmNumber, Integer weixinTaskConfirmNumberMin, Integer weixinTaskConfirmNumberMax, Long weixinTaskIntegral, Long weixinTaskIntegralMin, Long weixinTaskIntegralMax, String weixinTaskDescription, Integer weixinTaskTaskStatus, Integer weixinTaskTaskStatusMin, Integer weixinTaskTaskStatusMax, Date weixinTaskCreateTime, Date weixinTaskCreateTimeMin, Date weixinTaskCreateTimeMax, Date weixinTaskUpdateTime, Date weixinTaskUpdateTimeMin, Date weixinTaskUpdateTimeMax, Integer weixinTaskVersion, Integer weixinTaskVersionMin, Integer weixinTaskVersionMax, Byte weixinTaskIsActive, Byte weixinTaskIsActiveMin, Byte weixinTaskIsActiveMax, String userDetailNickname, String userDetailHeadicon, String userPhone) {
        this.weixinTaskId = weixinTaskId;
		this.weixinTaskIdMin = weixinTaskIdMin;
		this.weixinTaskIdMax = weixinTaskIdMax;
		this.weixinTaskUserId = weixinTaskUserId;
		this.weixinTaskUserIdMin = weixinTaskUserIdMin;
		this.weixinTaskUserIdMax = weixinTaskUserIdMax;
		this.weixinTaskTitle = weixinTaskTitle;
		this.weixinTaskTotalNumber = weixinTaskTotalNumber;
		this.weixinTaskTotalNumberMin = weixinTaskTotalNumberMin;
		this.weixinTaskTotalNumberMax = weixinTaskTotalNumberMax;
		this.weixinTaskConfirmNumber = weixinTaskConfirmNumber;
		this.weixinTaskConfirmNumberMin = weixinTaskConfirmNumberMin;
		this.weixinTaskConfirmNumberMax = weixinTaskConfirmNumberMax;
		this.weixinTaskIntegral = weixinTaskIntegral;
		this.weixinTaskIntegralMin = weixinTaskIntegralMin;
		this.weixinTaskIntegralMax = weixinTaskIntegralMax;
		this.weixinTaskDescription = weixinTaskDescription;
		this.weixinTaskTaskStatus = weixinTaskTaskStatus;
		this.weixinTaskTaskStatusMin = weixinTaskTaskStatusMin;
		this.weixinTaskTaskStatusMax = weixinTaskTaskStatusMax;
		this.weixinTaskCreateTime = weixinTaskCreateTime;
		this.weixinTaskCreateTimeMin = weixinTaskCreateTimeMin;
		this.weixinTaskCreateTimeMax = weixinTaskCreateTimeMax;
		this.weixinTaskUpdateTime = weixinTaskUpdateTime;
		this.weixinTaskUpdateTimeMin = weixinTaskUpdateTimeMin;
		this.weixinTaskUpdateTimeMax = weixinTaskUpdateTimeMax;
		this.weixinTaskVersion = weixinTaskVersion;
		this.weixinTaskVersionMin = weixinTaskVersionMin;
		this.weixinTaskVersionMax = weixinTaskVersionMax;
		this.weixinTaskIsActive = weixinTaskIsActive;
		this.weixinTaskIsActiveMin = weixinTaskIsActiveMin;
		this.weixinTaskIsActiveMax = weixinTaskIsActiveMax;
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

	public Long getWeixinTaskIdMin() {
		return weixinTaskIdMin;
	}

	public void setWeixinTaskIdMin(Long weixinTaskIdMin) {
		this.weixinTaskIdMin = weixinTaskIdMin;
	}

	public Long getWeixinTaskIdMax() {
		return weixinTaskIdMax;
	}

	public void setWeixinTaskIdMax(Long weixinTaskIdMax) {
		this.weixinTaskIdMax = weixinTaskIdMax;
	}

	public Long getWeixinTaskUserId() {
		return weixinTaskUserId;
	}

	public void setWeixinTaskUserId(Long weixinTaskUserId) {
		this.weixinTaskUserId = weixinTaskUserId;
	}

	public Long getWeixinTaskUserIdMin() {
		return weixinTaskUserIdMin;
	}

	public void setWeixinTaskUserIdMin(Long weixinTaskUserIdMin) {
		this.weixinTaskUserIdMin = weixinTaskUserIdMin;
	}

	public Long getWeixinTaskUserIdMax() {
		return weixinTaskUserIdMax;
	}

	public void setWeixinTaskUserIdMax(Long weixinTaskUserIdMax) {
		this.weixinTaskUserIdMax = weixinTaskUserIdMax;
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

	public Integer getWeixinTaskTotalNumberMin() {
		return weixinTaskTotalNumberMin;
	}

	public void setWeixinTaskTotalNumberMin(Integer weixinTaskTotalNumberMin) {
		this.weixinTaskTotalNumberMin = weixinTaskTotalNumberMin;
	}

	public Integer getWeixinTaskTotalNumberMax() {
		return weixinTaskTotalNumberMax;
	}

	public void setWeixinTaskTotalNumberMax(Integer weixinTaskTotalNumberMax) {
		this.weixinTaskTotalNumberMax = weixinTaskTotalNumberMax;
	}

	public Integer getWeixinTaskConfirmNumber() {
		return weixinTaskConfirmNumber;
	}

	public void setWeixinTaskConfirmNumber(Integer weixinTaskConfirmNumber) {
		this.weixinTaskConfirmNumber = weixinTaskConfirmNumber;
	}

	public Integer getWeixinTaskConfirmNumberMin() {
		return weixinTaskConfirmNumberMin;
	}

	public void setWeixinTaskConfirmNumberMin(Integer weixinTaskConfirmNumberMin) {
		this.weixinTaskConfirmNumberMin = weixinTaskConfirmNumberMin;
	}

	public Integer getWeixinTaskConfirmNumberMax() {
		return weixinTaskConfirmNumberMax;
	}

	public void setWeixinTaskConfirmNumberMax(Integer weixinTaskConfirmNumberMax) {
		this.weixinTaskConfirmNumberMax = weixinTaskConfirmNumberMax;
	}

	public Long getWeixinTaskIntegral() {
		return weixinTaskIntegral;
	}

	public void setWeixinTaskIntegral(Long weixinTaskIntegral) {
		this.weixinTaskIntegral = weixinTaskIntegral;
	}

	public Long getWeixinTaskIntegralMin() {
		return weixinTaskIntegralMin;
	}

	public void setWeixinTaskIntegralMin(Long weixinTaskIntegralMin) {
		this.weixinTaskIntegralMin = weixinTaskIntegralMin;
	}

	public Long getWeixinTaskIntegralMax() {
		return weixinTaskIntegralMax;
	}

	public void setWeixinTaskIntegralMax(Long weixinTaskIntegralMax) {
		this.weixinTaskIntegralMax = weixinTaskIntegralMax;
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

	public Integer getWeixinTaskTaskStatusMin() {
		return weixinTaskTaskStatusMin;
	}

	public void setWeixinTaskTaskStatusMin(Integer weixinTaskTaskStatusMin) {
		this.weixinTaskTaskStatusMin = weixinTaskTaskStatusMin;
	}

	public Integer getWeixinTaskTaskStatusMax() {
		return weixinTaskTaskStatusMax;
	}

	public void setWeixinTaskTaskStatusMax(Integer weixinTaskTaskStatusMax) {
		this.weixinTaskTaskStatusMax = weixinTaskTaskStatusMax;
	}

	public Date getWeixinTaskCreateTime() {
		return weixinTaskCreateTime;
	}

	public void setWeixinTaskCreateTime(Date weixinTaskCreateTime) {
		this.weixinTaskCreateTime = weixinTaskCreateTime;
	}

	public Date getWeixinTaskCreateTimeMin() {
		return weixinTaskCreateTimeMin;
	}

	public void setWeixinTaskCreateTimeMin(Date weixinTaskCreateTimeMin) {
		this.weixinTaskCreateTimeMin = weixinTaskCreateTimeMin;
	}

	public Date getWeixinTaskCreateTimeMax() {
		return weixinTaskCreateTimeMax;
	}

	public void setWeixinTaskCreateTimeMax(Date weixinTaskCreateTimeMax) {
		this.weixinTaskCreateTimeMax = weixinTaskCreateTimeMax;
	}

	public Date getWeixinTaskUpdateTime() {
		return weixinTaskUpdateTime;
	}

	public void setWeixinTaskUpdateTime(Date weixinTaskUpdateTime) {
		this.weixinTaskUpdateTime = weixinTaskUpdateTime;
	}

	public Date getWeixinTaskUpdateTimeMin() {
		return weixinTaskUpdateTimeMin;
	}

	public void setWeixinTaskUpdateTimeMin(Date weixinTaskUpdateTimeMin) {
		this.weixinTaskUpdateTimeMin = weixinTaskUpdateTimeMin;
	}

	public Date getWeixinTaskUpdateTimeMax() {
		return weixinTaskUpdateTimeMax;
	}

	public void setWeixinTaskUpdateTimeMax(Date weixinTaskUpdateTimeMax) {
		this.weixinTaskUpdateTimeMax = weixinTaskUpdateTimeMax;
	}

	public Integer getWeixinTaskVersion() {
		return weixinTaskVersion;
	}

	public void setWeixinTaskVersion(Integer weixinTaskVersion) {
		this.weixinTaskVersion = weixinTaskVersion;
	}

	public Integer getWeixinTaskVersionMin() {
		return weixinTaskVersionMin;
	}

	public void setWeixinTaskVersionMin(Integer weixinTaskVersionMin) {
		this.weixinTaskVersionMin = weixinTaskVersionMin;
	}

	public Integer getWeixinTaskVersionMax() {
		return weixinTaskVersionMax;
	}

	public void setWeixinTaskVersionMax(Integer weixinTaskVersionMax) {
		this.weixinTaskVersionMax = weixinTaskVersionMax;
	}

	public Byte getWeixinTaskIsActive() {
		return weixinTaskIsActive;
	}

	public void setWeixinTaskIsActive(Byte weixinTaskIsActive) {
		this.weixinTaskIsActive = weixinTaskIsActive;
	}

	public Byte getWeixinTaskIsActiveMin() {
		return weixinTaskIsActiveMin;
	}

	public void setWeixinTaskIsActiveMin(Byte weixinTaskIsActiveMin) {
		this.weixinTaskIsActiveMin = weixinTaskIsActiveMin;
	}

	public Byte getWeixinTaskIsActiveMax() {
		return weixinTaskIsActiveMax;
	}

	public void setWeixinTaskIsActiveMax(Byte weixinTaskIsActiveMax) {
		this.weixinTaskIsActiveMax = weixinTaskIsActiveMax;
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
        return "WeixinUserTaskQuery {" +
                "weixinTaskId = " + weixinTaskId + 
				", weixinTaskIdMin = " + weixinTaskIdMin + 
				", weixinTaskIdMax = " + weixinTaskIdMax + 
				", weixinTaskUserId = " + weixinTaskUserId + 
				", weixinTaskUserIdMin = " + weixinTaskUserIdMin + 
				", weixinTaskUserIdMax = " + weixinTaskUserIdMax + 
				", weixinTaskTitle = " + weixinTaskTitle + 
				", weixinTaskTotalNumber = " + weixinTaskTotalNumber + 
				", weixinTaskTotalNumberMin = " + weixinTaskTotalNumberMin + 
				", weixinTaskTotalNumberMax = " + weixinTaskTotalNumberMax + 
				", weixinTaskConfirmNumber = " + weixinTaskConfirmNumber + 
				", weixinTaskConfirmNumberMin = " + weixinTaskConfirmNumberMin + 
				", weixinTaskConfirmNumberMax = " + weixinTaskConfirmNumberMax + 
				", weixinTaskIntegral = " + weixinTaskIntegral + 
				", weixinTaskIntegralMin = " + weixinTaskIntegralMin + 
				", weixinTaskIntegralMax = " + weixinTaskIntegralMax + 
				", weixinTaskDescription = " + weixinTaskDescription + 
				", weixinTaskTaskStatus = " + weixinTaskTaskStatus + 
				", weixinTaskTaskStatusMin = " + weixinTaskTaskStatusMin + 
				", weixinTaskTaskStatusMax = " + weixinTaskTaskStatusMax + 
				", weixinTaskCreateTime = " + weixinTaskCreateTime + 
				", weixinTaskCreateTimeMin = " + weixinTaskCreateTimeMin + 
				", weixinTaskCreateTimeMax = " + weixinTaskCreateTimeMax + 
				", weixinTaskUpdateTime = " + weixinTaskUpdateTime + 
				", weixinTaskUpdateTimeMin = " + weixinTaskUpdateTimeMin + 
				", weixinTaskUpdateTimeMax = " + weixinTaskUpdateTimeMax + 
				", weixinTaskVersion = " + weixinTaskVersion + 
				", weixinTaskVersionMin = " + weixinTaskVersionMin + 
				", weixinTaskVersionMax = " + weixinTaskVersionMax + 
				", weixinTaskIsActive = " + weixinTaskIsActive + 
				", weixinTaskIsActiveMin = " + weixinTaskIsActiveMin + 
				", weixinTaskIsActiveMax = " + weixinTaskIsActiveMax + 
				", userDetailNickname = " + userDetailNickname + 
				", userDetailHeadicon = " + userDetailHeadicon + 
				", userPhone = " + userPhone + 
				" }";
    }

}
