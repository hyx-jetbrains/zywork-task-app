package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinUserTaskApplyQuery查询对象类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserTaskApplyQuery extends PageQuery {

    private static final long serialVersionUID = -9223372035197887907L;

    //t_weixin_task_apply表的字段对应的属性
	// 报名编号
	private Long weixinTaskApplyId;
	// 报名编号（最小值）
	private Long weixinTaskApplyIdMin;
	// 报名编号（最大值）
	private Long weixinTaskApplyIdMax;
	// 任务编号
	private Long weixinTaskApplyTaskId;
	// 任务编号（最小值）
	private Long weixinTaskApplyTaskIdMin;
	// 任务编号（最大值）
	private Long weixinTaskApplyTaskIdMax;
	// 报名用户编号
	private Long weixinTaskApplyUserId;
	// 报名用户编号（最小值）
	private Long weixinTaskApplyUserIdMin;
	// 报名用户编号（最大值）
	private Long weixinTaskApplyUserIdMax;
	// 发布方确认状态
	private Byte weixinTaskApplyPubConfirmStatus;
	// 发布方确认状态（最小值）
	private Byte weixinTaskApplyPubConfirmStatusMin;
	// 发布方确认状态（最大值）
	private Byte weixinTaskApplyPubConfirmStatusMax;
	// 发布方确认时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyPubConfirmTime;
	// 发布方确认时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyPubConfirmTimeMin;
	// 发布方确认时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyPubConfirmTimeMax;
	// 报名方确认状态
	private Byte weixinTaskApplyAppConfirmStatus;
	// 报名方确认状态（最小值）
	private Byte weixinTaskApplyAppConfirmStatusMin;
	// 报名方确认状态（最大值）
	private Byte weixinTaskApplyAppConfirmStatusMax;
	// 报名方确认时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyAppConfirmTime;
	// 报名方确认时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyAppConfirmTimeMin;
	// 报名方确认时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyAppConfirmTimeMax;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyCreateTime;
	// 创建时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyCreateTimeMin;
	// 创建时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyCreateTimeMax;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyUpdateTime;
	// 更新时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyUpdateTimeMin;
	// 更新时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinTaskApplyUpdateTimeMax;
	// 版本号
	private Integer weixinTaskApplyVersion;
	// 版本号（最小值）
	private Integer weixinTaskApplyVersionMin;
	// 版本号（最大值）
	private Integer weixinTaskApplyVersionMax;
	// 是否激活
	private Byte weixinTaskApplyIsActive;
	// 是否激活（最小值）
	private Byte weixinTaskApplyIsActiveMin;
	// 是否激活（最大值）
	private Byte weixinTaskApplyIsActiveMax;
	//t_user_detail表的字段对应的属性
	// 昵称
	private String userDetailNickname;
	//t_user表的字段对应的属性
	// 手机号
	private String userPhone;
	
    public WeixinUserTaskApplyQuery () {}

    public WeixinUserTaskApplyQuery (Long weixinTaskApplyId, Long weixinTaskApplyIdMin, Long weixinTaskApplyIdMax, Long weixinTaskApplyTaskId, Long weixinTaskApplyTaskIdMin, Long weixinTaskApplyTaskIdMax, Long weixinTaskApplyUserId, Long weixinTaskApplyUserIdMin, Long weixinTaskApplyUserIdMax, Byte weixinTaskApplyPubConfirmStatus, Byte weixinTaskApplyPubConfirmStatusMin, Byte weixinTaskApplyPubConfirmStatusMax, Date weixinTaskApplyPubConfirmTime, Date weixinTaskApplyPubConfirmTimeMin, Date weixinTaskApplyPubConfirmTimeMax, Byte weixinTaskApplyAppConfirmStatus, Byte weixinTaskApplyAppConfirmStatusMin, Byte weixinTaskApplyAppConfirmStatusMax, Date weixinTaskApplyAppConfirmTime, Date weixinTaskApplyAppConfirmTimeMin, Date weixinTaskApplyAppConfirmTimeMax, Date weixinTaskApplyCreateTime, Date weixinTaskApplyCreateTimeMin, Date weixinTaskApplyCreateTimeMax, Date weixinTaskApplyUpdateTime, Date weixinTaskApplyUpdateTimeMin, Date weixinTaskApplyUpdateTimeMax, Integer weixinTaskApplyVersion, Integer weixinTaskApplyVersionMin, Integer weixinTaskApplyVersionMax, Byte weixinTaskApplyIsActive, Byte weixinTaskApplyIsActiveMin, Byte weixinTaskApplyIsActiveMax, String userDetailNickname, String userPhone) {
        this.weixinTaskApplyId = weixinTaskApplyId;
		this.weixinTaskApplyIdMin = weixinTaskApplyIdMin;
		this.weixinTaskApplyIdMax = weixinTaskApplyIdMax;
		this.weixinTaskApplyTaskId = weixinTaskApplyTaskId;
		this.weixinTaskApplyTaskIdMin = weixinTaskApplyTaskIdMin;
		this.weixinTaskApplyTaskIdMax = weixinTaskApplyTaskIdMax;
		this.weixinTaskApplyUserId = weixinTaskApplyUserId;
		this.weixinTaskApplyUserIdMin = weixinTaskApplyUserIdMin;
		this.weixinTaskApplyUserIdMax = weixinTaskApplyUserIdMax;
		this.weixinTaskApplyPubConfirmStatus = weixinTaskApplyPubConfirmStatus;
		this.weixinTaskApplyPubConfirmStatusMin = weixinTaskApplyPubConfirmStatusMin;
		this.weixinTaskApplyPubConfirmStatusMax = weixinTaskApplyPubConfirmStatusMax;
		this.weixinTaskApplyPubConfirmTime = weixinTaskApplyPubConfirmTime;
		this.weixinTaskApplyPubConfirmTimeMin = weixinTaskApplyPubConfirmTimeMin;
		this.weixinTaskApplyPubConfirmTimeMax = weixinTaskApplyPubConfirmTimeMax;
		this.weixinTaskApplyAppConfirmStatus = weixinTaskApplyAppConfirmStatus;
		this.weixinTaskApplyAppConfirmStatusMin = weixinTaskApplyAppConfirmStatusMin;
		this.weixinTaskApplyAppConfirmStatusMax = weixinTaskApplyAppConfirmStatusMax;
		this.weixinTaskApplyAppConfirmTime = weixinTaskApplyAppConfirmTime;
		this.weixinTaskApplyAppConfirmTimeMin = weixinTaskApplyAppConfirmTimeMin;
		this.weixinTaskApplyAppConfirmTimeMax = weixinTaskApplyAppConfirmTimeMax;
		this.weixinTaskApplyCreateTime = weixinTaskApplyCreateTime;
		this.weixinTaskApplyCreateTimeMin = weixinTaskApplyCreateTimeMin;
		this.weixinTaskApplyCreateTimeMax = weixinTaskApplyCreateTimeMax;
		this.weixinTaskApplyUpdateTime = weixinTaskApplyUpdateTime;
		this.weixinTaskApplyUpdateTimeMin = weixinTaskApplyUpdateTimeMin;
		this.weixinTaskApplyUpdateTimeMax = weixinTaskApplyUpdateTimeMax;
		this.weixinTaskApplyVersion = weixinTaskApplyVersion;
		this.weixinTaskApplyVersionMin = weixinTaskApplyVersionMin;
		this.weixinTaskApplyVersionMax = weixinTaskApplyVersionMax;
		this.weixinTaskApplyIsActive = weixinTaskApplyIsActive;
		this.weixinTaskApplyIsActiveMin = weixinTaskApplyIsActiveMin;
		this.weixinTaskApplyIsActiveMax = weixinTaskApplyIsActiveMax;
		this.userDetailNickname = userDetailNickname;
		this.userPhone = userPhone;
		
    }

    public Long getWeixinTaskApplyId() {
		return weixinTaskApplyId;
	}

	public void setWeixinTaskApplyId(Long weixinTaskApplyId) {
		this.weixinTaskApplyId = weixinTaskApplyId;
	}

	public Long getWeixinTaskApplyIdMin() {
		return weixinTaskApplyIdMin;
	}

	public void setWeixinTaskApplyIdMin(Long weixinTaskApplyIdMin) {
		this.weixinTaskApplyIdMin = weixinTaskApplyIdMin;
	}

	public Long getWeixinTaskApplyIdMax() {
		return weixinTaskApplyIdMax;
	}

	public void setWeixinTaskApplyIdMax(Long weixinTaskApplyIdMax) {
		this.weixinTaskApplyIdMax = weixinTaskApplyIdMax;
	}

	public Long getWeixinTaskApplyTaskId() {
		return weixinTaskApplyTaskId;
	}

	public void setWeixinTaskApplyTaskId(Long weixinTaskApplyTaskId) {
		this.weixinTaskApplyTaskId = weixinTaskApplyTaskId;
	}

	public Long getWeixinTaskApplyTaskIdMin() {
		return weixinTaskApplyTaskIdMin;
	}

	public void setWeixinTaskApplyTaskIdMin(Long weixinTaskApplyTaskIdMin) {
		this.weixinTaskApplyTaskIdMin = weixinTaskApplyTaskIdMin;
	}

	public Long getWeixinTaskApplyTaskIdMax() {
		return weixinTaskApplyTaskIdMax;
	}

	public void setWeixinTaskApplyTaskIdMax(Long weixinTaskApplyTaskIdMax) {
		this.weixinTaskApplyTaskIdMax = weixinTaskApplyTaskIdMax;
	}

	public Long getWeixinTaskApplyUserId() {
		return weixinTaskApplyUserId;
	}

	public void setWeixinTaskApplyUserId(Long weixinTaskApplyUserId) {
		this.weixinTaskApplyUserId = weixinTaskApplyUserId;
	}

	public Long getWeixinTaskApplyUserIdMin() {
		return weixinTaskApplyUserIdMin;
	}

	public void setWeixinTaskApplyUserIdMin(Long weixinTaskApplyUserIdMin) {
		this.weixinTaskApplyUserIdMin = weixinTaskApplyUserIdMin;
	}

	public Long getWeixinTaskApplyUserIdMax() {
		return weixinTaskApplyUserIdMax;
	}

	public void setWeixinTaskApplyUserIdMax(Long weixinTaskApplyUserIdMax) {
		this.weixinTaskApplyUserIdMax = weixinTaskApplyUserIdMax;
	}

	public Byte getWeixinTaskApplyPubConfirmStatus() {
		return weixinTaskApplyPubConfirmStatus;
	}

	public void setWeixinTaskApplyPubConfirmStatus(Byte weixinTaskApplyPubConfirmStatus) {
		this.weixinTaskApplyPubConfirmStatus = weixinTaskApplyPubConfirmStatus;
	}

	public Byte getWeixinTaskApplyPubConfirmStatusMin() {
		return weixinTaskApplyPubConfirmStatusMin;
	}

	public void setWeixinTaskApplyPubConfirmStatusMin(Byte weixinTaskApplyPubConfirmStatusMin) {
		this.weixinTaskApplyPubConfirmStatusMin = weixinTaskApplyPubConfirmStatusMin;
	}

	public Byte getWeixinTaskApplyPubConfirmStatusMax() {
		return weixinTaskApplyPubConfirmStatusMax;
	}

	public void setWeixinTaskApplyPubConfirmStatusMax(Byte weixinTaskApplyPubConfirmStatusMax) {
		this.weixinTaskApplyPubConfirmStatusMax = weixinTaskApplyPubConfirmStatusMax;
	}

	public Date getWeixinTaskApplyPubConfirmTime() {
		return weixinTaskApplyPubConfirmTime;
	}

	public void setWeixinTaskApplyPubConfirmTime(Date weixinTaskApplyPubConfirmTime) {
		this.weixinTaskApplyPubConfirmTime = weixinTaskApplyPubConfirmTime;
	}

	public Date getWeixinTaskApplyPubConfirmTimeMin() {
		return weixinTaskApplyPubConfirmTimeMin;
	}

	public void setWeixinTaskApplyPubConfirmTimeMin(Date weixinTaskApplyPubConfirmTimeMin) {
		this.weixinTaskApplyPubConfirmTimeMin = weixinTaskApplyPubConfirmTimeMin;
	}

	public Date getWeixinTaskApplyPubConfirmTimeMax() {
		return weixinTaskApplyPubConfirmTimeMax;
	}

	public void setWeixinTaskApplyPubConfirmTimeMax(Date weixinTaskApplyPubConfirmTimeMax) {
		this.weixinTaskApplyPubConfirmTimeMax = weixinTaskApplyPubConfirmTimeMax;
	}

	public Byte getWeixinTaskApplyAppConfirmStatus() {
		return weixinTaskApplyAppConfirmStatus;
	}

	public void setWeixinTaskApplyAppConfirmStatus(Byte weixinTaskApplyAppConfirmStatus) {
		this.weixinTaskApplyAppConfirmStatus = weixinTaskApplyAppConfirmStatus;
	}

	public Byte getWeixinTaskApplyAppConfirmStatusMin() {
		return weixinTaskApplyAppConfirmStatusMin;
	}

	public void setWeixinTaskApplyAppConfirmStatusMin(Byte weixinTaskApplyAppConfirmStatusMin) {
		this.weixinTaskApplyAppConfirmStatusMin = weixinTaskApplyAppConfirmStatusMin;
	}

	public Byte getWeixinTaskApplyAppConfirmStatusMax() {
		return weixinTaskApplyAppConfirmStatusMax;
	}

	public void setWeixinTaskApplyAppConfirmStatusMax(Byte weixinTaskApplyAppConfirmStatusMax) {
		this.weixinTaskApplyAppConfirmStatusMax = weixinTaskApplyAppConfirmStatusMax;
	}

	public Date getWeixinTaskApplyAppConfirmTime() {
		return weixinTaskApplyAppConfirmTime;
	}

	public void setWeixinTaskApplyAppConfirmTime(Date weixinTaskApplyAppConfirmTime) {
		this.weixinTaskApplyAppConfirmTime = weixinTaskApplyAppConfirmTime;
	}

	public Date getWeixinTaskApplyAppConfirmTimeMin() {
		return weixinTaskApplyAppConfirmTimeMin;
	}

	public void setWeixinTaskApplyAppConfirmTimeMin(Date weixinTaskApplyAppConfirmTimeMin) {
		this.weixinTaskApplyAppConfirmTimeMin = weixinTaskApplyAppConfirmTimeMin;
	}

	public Date getWeixinTaskApplyAppConfirmTimeMax() {
		return weixinTaskApplyAppConfirmTimeMax;
	}

	public void setWeixinTaskApplyAppConfirmTimeMax(Date weixinTaskApplyAppConfirmTimeMax) {
		this.weixinTaskApplyAppConfirmTimeMax = weixinTaskApplyAppConfirmTimeMax;
	}

	public Date getWeixinTaskApplyCreateTime() {
		return weixinTaskApplyCreateTime;
	}

	public void setWeixinTaskApplyCreateTime(Date weixinTaskApplyCreateTime) {
		this.weixinTaskApplyCreateTime = weixinTaskApplyCreateTime;
	}

	public Date getWeixinTaskApplyCreateTimeMin() {
		return weixinTaskApplyCreateTimeMin;
	}

	public void setWeixinTaskApplyCreateTimeMin(Date weixinTaskApplyCreateTimeMin) {
		this.weixinTaskApplyCreateTimeMin = weixinTaskApplyCreateTimeMin;
	}

	public Date getWeixinTaskApplyCreateTimeMax() {
		return weixinTaskApplyCreateTimeMax;
	}

	public void setWeixinTaskApplyCreateTimeMax(Date weixinTaskApplyCreateTimeMax) {
		this.weixinTaskApplyCreateTimeMax = weixinTaskApplyCreateTimeMax;
	}

	public Date getWeixinTaskApplyUpdateTime() {
		return weixinTaskApplyUpdateTime;
	}

	public void setWeixinTaskApplyUpdateTime(Date weixinTaskApplyUpdateTime) {
		this.weixinTaskApplyUpdateTime = weixinTaskApplyUpdateTime;
	}

	public Date getWeixinTaskApplyUpdateTimeMin() {
		return weixinTaskApplyUpdateTimeMin;
	}

	public void setWeixinTaskApplyUpdateTimeMin(Date weixinTaskApplyUpdateTimeMin) {
		this.weixinTaskApplyUpdateTimeMin = weixinTaskApplyUpdateTimeMin;
	}

	public Date getWeixinTaskApplyUpdateTimeMax() {
		return weixinTaskApplyUpdateTimeMax;
	}

	public void setWeixinTaskApplyUpdateTimeMax(Date weixinTaskApplyUpdateTimeMax) {
		this.weixinTaskApplyUpdateTimeMax = weixinTaskApplyUpdateTimeMax;
	}

	public Integer getWeixinTaskApplyVersion() {
		return weixinTaskApplyVersion;
	}

	public void setWeixinTaskApplyVersion(Integer weixinTaskApplyVersion) {
		this.weixinTaskApplyVersion = weixinTaskApplyVersion;
	}

	public Integer getWeixinTaskApplyVersionMin() {
		return weixinTaskApplyVersionMin;
	}

	public void setWeixinTaskApplyVersionMin(Integer weixinTaskApplyVersionMin) {
		this.weixinTaskApplyVersionMin = weixinTaskApplyVersionMin;
	}

	public Integer getWeixinTaskApplyVersionMax() {
		return weixinTaskApplyVersionMax;
	}

	public void setWeixinTaskApplyVersionMax(Integer weixinTaskApplyVersionMax) {
		this.weixinTaskApplyVersionMax = weixinTaskApplyVersionMax;
	}

	public Byte getWeixinTaskApplyIsActive() {
		return weixinTaskApplyIsActive;
	}

	public void setWeixinTaskApplyIsActive(Byte weixinTaskApplyIsActive) {
		this.weixinTaskApplyIsActive = weixinTaskApplyIsActive;
	}

	public Byte getWeixinTaskApplyIsActiveMin() {
		return weixinTaskApplyIsActiveMin;
	}

	public void setWeixinTaskApplyIsActiveMin(Byte weixinTaskApplyIsActiveMin) {
		this.weixinTaskApplyIsActiveMin = weixinTaskApplyIsActiveMin;
	}

	public Byte getWeixinTaskApplyIsActiveMax() {
		return weixinTaskApplyIsActiveMax;
	}

	public void setWeixinTaskApplyIsActiveMax(Byte weixinTaskApplyIsActiveMax) {
		this.weixinTaskApplyIsActiveMax = weixinTaskApplyIsActiveMax;
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
        return "WeixinUserTaskApplyQuery {" +
                "weixinTaskApplyId = " + weixinTaskApplyId + 
				", weixinTaskApplyIdMin = " + weixinTaskApplyIdMin + 
				", weixinTaskApplyIdMax = " + weixinTaskApplyIdMax + 
				", weixinTaskApplyTaskId = " + weixinTaskApplyTaskId + 
				", weixinTaskApplyTaskIdMin = " + weixinTaskApplyTaskIdMin + 
				", weixinTaskApplyTaskIdMax = " + weixinTaskApplyTaskIdMax + 
				", weixinTaskApplyUserId = " + weixinTaskApplyUserId + 
				", weixinTaskApplyUserIdMin = " + weixinTaskApplyUserIdMin + 
				", weixinTaskApplyUserIdMax = " + weixinTaskApplyUserIdMax + 
				", weixinTaskApplyPubConfirmStatus = " + weixinTaskApplyPubConfirmStatus + 
				", weixinTaskApplyPubConfirmStatusMin = " + weixinTaskApplyPubConfirmStatusMin + 
				", weixinTaskApplyPubConfirmStatusMax = " + weixinTaskApplyPubConfirmStatusMax + 
				", weixinTaskApplyPubConfirmTime = " + weixinTaskApplyPubConfirmTime + 
				", weixinTaskApplyPubConfirmTimeMin = " + weixinTaskApplyPubConfirmTimeMin + 
				", weixinTaskApplyPubConfirmTimeMax = " + weixinTaskApplyPubConfirmTimeMax + 
				", weixinTaskApplyAppConfirmStatus = " + weixinTaskApplyAppConfirmStatus + 
				", weixinTaskApplyAppConfirmStatusMin = " + weixinTaskApplyAppConfirmStatusMin + 
				", weixinTaskApplyAppConfirmStatusMax = " + weixinTaskApplyAppConfirmStatusMax + 
				", weixinTaskApplyAppConfirmTime = " + weixinTaskApplyAppConfirmTime + 
				", weixinTaskApplyAppConfirmTimeMin = " + weixinTaskApplyAppConfirmTimeMin + 
				", weixinTaskApplyAppConfirmTimeMax = " + weixinTaskApplyAppConfirmTimeMax + 
				", weixinTaskApplyCreateTime = " + weixinTaskApplyCreateTime + 
				", weixinTaskApplyCreateTimeMin = " + weixinTaskApplyCreateTimeMin + 
				", weixinTaskApplyCreateTimeMax = " + weixinTaskApplyCreateTimeMax + 
				", weixinTaskApplyUpdateTime = " + weixinTaskApplyUpdateTime + 
				", weixinTaskApplyUpdateTimeMin = " + weixinTaskApplyUpdateTimeMin + 
				", weixinTaskApplyUpdateTimeMax = " + weixinTaskApplyUpdateTimeMax + 
				", weixinTaskApplyVersion = " + weixinTaskApplyVersion + 
				", weixinTaskApplyVersionMin = " + weixinTaskApplyVersionMin + 
				", weixinTaskApplyVersionMax = " + weixinTaskApplyVersionMax + 
				", weixinTaskApplyIsActive = " + weixinTaskApplyIsActive + 
				", weixinTaskApplyIsActiveMin = " + weixinTaskApplyIsActiveMin + 
				", weixinTaskApplyIsActiveMax = " + weixinTaskApplyIsActiveMax + 
				", userDetailNickname = " + userDetailNickname + 
				", userPhone = " + userPhone + 
				" }";
    }

}
