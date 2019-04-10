package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinUserCertificationQuery查询对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserCertificationQuery extends PageQuery {

    private static final long serialVersionUID = -9223372035927655218L;

    //t_weixin_certification表的字段对应的属性
	// 微信认证编号
	private Long weixinCertificationId;
	// 微信认证编号（最小值）
	private Long weixinCertificationIdMin;
	// 微信认证编号（最大值）
	private Long weixinCertificationIdMax;
	// 用户编号
	private Long weixinCertificationUserId;
	// 用户编号（最小值）
	private Long weixinCertificationUserIdMin;
	// 用户编号（最大值）
	private Long weixinCertificationUserIdMax;
	// 微信认证图片
	private String weixinCertificationUrl;
	// 认证状态
	private Byte weixinCertificationCheckStatus;
	// 认证状态（最小值）
	private Byte weixinCertificationCheckStatusMin;
	// 认证状态（最大值）
	private Byte weixinCertificationCheckStatusMax;
	// 认证时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCheckTime;
	// 认证时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCheckTimeMin;
	// 认证时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCheckTimeMax;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCreateTime;
	// 创建时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCreateTimeMin;
	// 创建时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCreateTimeMax;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationUpdateTime;
	// 更新时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationUpdateTimeMin;
	// 更新时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationUpdateTimeMax;
	// 版本号
	private Integer weixinCertificationVersion;
	// 版本号（最小值）
	private Integer weixinCertificationVersionMin;
	// 版本号（最大值）
	private Integer weixinCertificationVersionMax;
	// 是否激活
	private Byte weixinCertificationIsActive;
	// 是否激活（最小值）
	private Byte weixinCertificationIsActiveMin;
	// 是否激活（最大值）
	private Byte weixinCertificationIsActiveMax;
	//t_user_detail表的字段对应的属性
	// 昵称
	private String userDetailNickname;
	//t_user表的字段对应的属性
	// 手机号
	private String userPhone;
	
    public WeixinUserCertificationQuery () {}

    public WeixinUserCertificationQuery (Long weixinCertificationId, Long weixinCertificationIdMin, Long weixinCertificationIdMax, Long weixinCertificationUserId, Long weixinCertificationUserIdMin, Long weixinCertificationUserIdMax, String weixinCertificationUrl, Byte weixinCertificationCheckStatus, Byte weixinCertificationCheckStatusMin, Byte weixinCertificationCheckStatusMax, Date weixinCertificationCheckTime, Date weixinCertificationCheckTimeMin, Date weixinCertificationCheckTimeMax, Date weixinCertificationCreateTime, Date weixinCertificationCreateTimeMin, Date weixinCertificationCreateTimeMax, Date weixinCertificationUpdateTime, Date weixinCertificationUpdateTimeMin, Date weixinCertificationUpdateTimeMax, Integer weixinCertificationVersion, Integer weixinCertificationVersionMin, Integer weixinCertificationVersionMax, Byte weixinCertificationIsActive, Byte weixinCertificationIsActiveMin, Byte weixinCertificationIsActiveMax, String userDetailNickname, String userPhone) {
        this.weixinCertificationId = weixinCertificationId;
		this.weixinCertificationIdMin = weixinCertificationIdMin;
		this.weixinCertificationIdMax = weixinCertificationIdMax;
		this.weixinCertificationUserId = weixinCertificationUserId;
		this.weixinCertificationUserIdMin = weixinCertificationUserIdMin;
		this.weixinCertificationUserIdMax = weixinCertificationUserIdMax;
		this.weixinCertificationUrl = weixinCertificationUrl;
		this.weixinCertificationCheckStatus = weixinCertificationCheckStatus;
		this.weixinCertificationCheckStatusMin = weixinCertificationCheckStatusMin;
		this.weixinCertificationCheckStatusMax = weixinCertificationCheckStatusMax;
		this.weixinCertificationCheckTime = weixinCertificationCheckTime;
		this.weixinCertificationCheckTimeMin = weixinCertificationCheckTimeMin;
		this.weixinCertificationCheckTimeMax = weixinCertificationCheckTimeMax;
		this.weixinCertificationCreateTime = weixinCertificationCreateTime;
		this.weixinCertificationCreateTimeMin = weixinCertificationCreateTimeMin;
		this.weixinCertificationCreateTimeMax = weixinCertificationCreateTimeMax;
		this.weixinCertificationUpdateTime = weixinCertificationUpdateTime;
		this.weixinCertificationUpdateTimeMin = weixinCertificationUpdateTimeMin;
		this.weixinCertificationUpdateTimeMax = weixinCertificationUpdateTimeMax;
		this.weixinCertificationVersion = weixinCertificationVersion;
		this.weixinCertificationVersionMin = weixinCertificationVersionMin;
		this.weixinCertificationVersionMax = weixinCertificationVersionMax;
		this.weixinCertificationIsActive = weixinCertificationIsActive;
		this.weixinCertificationIsActiveMin = weixinCertificationIsActiveMin;
		this.weixinCertificationIsActiveMax = weixinCertificationIsActiveMax;
		this.userDetailNickname = userDetailNickname;
		this.userPhone = userPhone;
		
    }

    public Long getWeixinCertificationId() {
		return weixinCertificationId;
	}

	public void setWeixinCertificationId(Long weixinCertificationId) {
		this.weixinCertificationId = weixinCertificationId;
	}

	public Long getWeixinCertificationIdMin() {
		return weixinCertificationIdMin;
	}

	public void setWeixinCertificationIdMin(Long weixinCertificationIdMin) {
		this.weixinCertificationIdMin = weixinCertificationIdMin;
	}

	public Long getWeixinCertificationIdMax() {
		return weixinCertificationIdMax;
	}

	public void setWeixinCertificationIdMax(Long weixinCertificationIdMax) {
		this.weixinCertificationIdMax = weixinCertificationIdMax;
	}

	public Long getWeixinCertificationUserId() {
		return weixinCertificationUserId;
	}

	public void setWeixinCertificationUserId(Long weixinCertificationUserId) {
		this.weixinCertificationUserId = weixinCertificationUserId;
	}

	public Long getWeixinCertificationUserIdMin() {
		return weixinCertificationUserIdMin;
	}

	public void setWeixinCertificationUserIdMin(Long weixinCertificationUserIdMin) {
		this.weixinCertificationUserIdMin = weixinCertificationUserIdMin;
	}

	public Long getWeixinCertificationUserIdMax() {
		return weixinCertificationUserIdMax;
	}

	public void setWeixinCertificationUserIdMax(Long weixinCertificationUserIdMax) {
		this.weixinCertificationUserIdMax = weixinCertificationUserIdMax;
	}

	public String getWeixinCertificationUrl() {
		return weixinCertificationUrl;
	}

	public void setWeixinCertificationUrl(String weixinCertificationUrl) {
		this.weixinCertificationUrl = weixinCertificationUrl;
	}

	public Byte getWeixinCertificationCheckStatus() {
		return weixinCertificationCheckStatus;
	}

	public void setWeixinCertificationCheckStatus(Byte weixinCertificationCheckStatus) {
		this.weixinCertificationCheckStatus = weixinCertificationCheckStatus;
	}

	public Byte getWeixinCertificationCheckStatusMin() {
		return weixinCertificationCheckStatusMin;
	}

	public void setWeixinCertificationCheckStatusMin(Byte weixinCertificationCheckStatusMin) {
		this.weixinCertificationCheckStatusMin = weixinCertificationCheckStatusMin;
	}

	public Byte getWeixinCertificationCheckStatusMax() {
		return weixinCertificationCheckStatusMax;
	}

	public void setWeixinCertificationCheckStatusMax(Byte weixinCertificationCheckStatusMax) {
		this.weixinCertificationCheckStatusMax = weixinCertificationCheckStatusMax;
	}

	public Date getWeixinCertificationCheckTime() {
		return weixinCertificationCheckTime;
	}

	public void setWeixinCertificationCheckTime(Date weixinCertificationCheckTime) {
		this.weixinCertificationCheckTime = weixinCertificationCheckTime;
	}

	public Date getWeixinCertificationCheckTimeMin() {
		return weixinCertificationCheckTimeMin;
	}

	public void setWeixinCertificationCheckTimeMin(Date weixinCertificationCheckTimeMin) {
		this.weixinCertificationCheckTimeMin = weixinCertificationCheckTimeMin;
	}

	public Date getWeixinCertificationCheckTimeMax() {
		return weixinCertificationCheckTimeMax;
	}

	public void setWeixinCertificationCheckTimeMax(Date weixinCertificationCheckTimeMax) {
		this.weixinCertificationCheckTimeMax = weixinCertificationCheckTimeMax;
	}

	public Date getWeixinCertificationCreateTime() {
		return weixinCertificationCreateTime;
	}

	public void setWeixinCertificationCreateTime(Date weixinCertificationCreateTime) {
		this.weixinCertificationCreateTime = weixinCertificationCreateTime;
	}

	public Date getWeixinCertificationCreateTimeMin() {
		return weixinCertificationCreateTimeMin;
	}

	public void setWeixinCertificationCreateTimeMin(Date weixinCertificationCreateTimeMin) {
		this.weixinCertificationCreateTimeMin = weixinCertificationCreateTimeMin;
	}

	public Date getWeixinCertificationCreateTimeMax() {
		return weixinCertificationCreateTimeMax;
	}

	public void setWeixinCertificationCreateTimeMax(Date weixinCertificationCreateTimeMax) {
		this.weixinCertificationCreateTimeMax = weixinCertificationCreateTimeMax;
	}

	public Date getWeixinCertificationUpdateTime() {
		return weixinCertificationUpdateTime;
	}

	public void setWeixinCertificationUpdateTime(Date weixinCertificationUpdateTime) {
		this.weixinCertificationUpdateTime = weixinCertificationUpdateTime;
	}

	public Date getWeixinCertificationUpdateTimeMin() {
		return weixinCertificationUpdateTimeMin;
	}

	public void setWeixinCertificationUpdateTimeMin(Date weixinCertificationUpdateTimeMin) {
		this.weixinCertificationUpdateTimeMin = weixinCertificationUpdateTimeMin;
	}

	public Date getWeixinCertificationUpdateTimeMax() {
		return weixinCertificationUpdateTimeMax;
	}

	public void setWeixinCertificationUpdateTimeMax(Date weixinCertificationUpdateTimeMax) {
		this.weixinCertificationUpdateTimeMax = weixinCertificationUpdateTimeMax;
	}

	public Integer getWeixinCertificationVersion() {
		return weixinCertificationVersion;
	}

	public void setWeixinCertificationVersion(Integer weixinCertificationVersion) {
		this.weixinCertificationVersion = weixinCertificationVersion;
	}

	public Integer getWeixinCertificationVersionMin() {
		return weixinCertificationVersionMin;
	}

	public void setWeixinCertificationVersionMin(Integer weixinCertificationVersionMin) {
		this.weixinCertificationVersionMin = weixinCertificationVersionMin;
	}

	public Integer getWeixinCertificationVersionMax() {
		return weixinCertificationVersionMax;
	}

	public void setWeixinCertificationVersionMax(Integer weixinCertificationVersionMax) {
		this.weixinCertificationVersionMax = weixinCertificationVersionMax;
	}

	public Byte getWeixinCertificationIsActive() {
		return weixinCertificationIsActive;
	}

	public void setWeixinCertificationIsActive(Byte weixinCertificationIsActive) {
		this.weixinCertificationIsActive = weixinCertificationIsActive;
	}

	public Byte getWeixinCertificationIsActiveMin() {
		return weixinCertificationIsActiveMin;
	}

	public void setWeixinCertificationIsActiveMin(Byte weixinCertificationIsActiveMin) {
		this.weixinCertificationIsActiveMin = weixinCertificationIsActiveMin;
	}

	public Byte getWeixinCertificationIsActiveMax() {
		return weixinCertificationIsActiveMax;
	}

	public void setWeixinCertificationIsActiveMax(Byte weixinCertificationIsActiveMax) {
		this.weixinCertificationIsActiveMax = weixinCertificationIsActiveMax;
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
        return "WeixinUserCertificationQuery {" +
                "weixinCertificationId = " + weixinCertificationId + 
				", weixinCertificationIdMin = " + weixinCertificationIdMin + 
				", weixinCertificationIdMax = " + weixinCertificationIdMax + 
				", weixinCertificationUserId = " + weixinCertificationUserId + 
				", weixinCertificationUserIdMin = " + weixinCertificationUserIdMin + 
				", weixinCertificationUserIdMax = " + weixinCertificationUserIdMax + 
				", weixinCertificationUrl = " + weixinCertificationUrl + 
				", weixinCertificationCheckStatus = " + weixinCertificationCheckStatus + 
				", weixinCertificationCheckStatusMin = " + weixinCertificationCheckStatusMin + 
				", weixinCertificationCheckStatusMax = " + weixinCertificationCheckStatusMax + 
				", weixinCertificationCheckTime = " + weixinCertificationCheckTime + 
				", weixinCertificationCheckTimeMin = " + weixinCertificationCheckTimeMin + 
				", weixinCertificationCheckTimeMax = " + weixinCertificationCheckTimeMax + 
				", weixinCertificationCreateTime = " + weixinCertificationCreateTime + 
				", weixinCertificationCreateTimeMin = " + weixinCertificationCreateTimeMin + 
				", weixinCertificationCreateTimeMax = " + weixinCertificationCreateTimeMax + 
				", weixinCertificationUpdateTime = " + weixinCertificationUpdateTime + 
				", weixinCertificationUpdateTimeMin = " + weixinCertificationUpdateTimeMin + 
				", weixinCertificationUpdateTimeMax = " + weixinCertificationUpdateTimeMax + 
				", weixinCertificationVersion = " + weixinCertificationVersion + 
				", weixinCertificationVersionMin = " + weixinCertificationVersionMin + 
				", weixinCertificationVersionMax = " + weixinCertificationVersionMax + 
				", weixinCertificationIsActive = " + weixinCertificationIsActive + 
				", weixinCertificationIsActiveMin = " + weixinCertificationIsActiveMin + 
				", weixinCertificationIsActiveMax = " + weixinCertificationIsActiveMax + 
				", userDetailNickname = " + userDetailNickname + 
				", userPhone = " + userPhone + 
				" }";
    }

}
