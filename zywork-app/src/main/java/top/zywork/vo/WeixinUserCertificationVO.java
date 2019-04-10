package top.zywork.vo;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * WeixinUserCertificationVO值对象类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinUserCertificationVO extends BaseVO {

    private static final long serialVersionUID = -9223372035770239638L;

    //t_weixin_certification表的字段对应的属性
	// 微信认证编号
	private Long weixinCertificationId;
	// 用户编号
	private Long weixinCertificationUserId;
	// 微信认证图片
	@Size(min = 0, max = 500, message = "必须小于500个字符")
	private String weixinCertificationUrl;
	// 认证状态
	private Byte weixinCertificationCheckStatus;
	// 认证时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCheckTime;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationCreateTime;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date weixinCertificationUpdateTime;
	// 版本号
	private Integer weixinCertificationVersion;
	// 是否激活
	private Byte weixinCertificationIsActive;
	//t_user_detail表的字段对应的属性
	// 昵称
	@Size(min = 0, max = 20, message = "必须小于20个字符")
	private String userDetailNickname;
	//t_user表的字段对应的属性
	// 手机号
	@Size(min = 0, max = 11, message = "必须小于11个字符")
	private String userPhone;
	
    public WeixinUserCertificationVO () {}

    public WeixinUserCertificationVO (Long weixinCertificationId, Long weixinCertificationUserId, String weixinCertificationUrl, Byte weixinCertificationCheckStatus, Date weixinCertificationCheckTime, Date weixinCertificationCreateTime, Date weixinCertificationUpdateTime, Integer weixinCertificationVersion, Byte weixinCertificationIsActive, String userDetailNickname, String userPhone) {
        this.weixinCertificationId = weixinCertificationId;
		this.weixinCertificationUserId = weixinCertificationUserId;
		this.weixinCertificationUrl = weixinCertificationUrl;
		this.weixinCertificationCheckStatus = weixinCertificationCheckStatus;
		this.weixinCertificationCheckTime = weixinCertificationCheckTime;
		this.weixinCertificationCreateTime = weixinCertificationCreateTime;
		this.weixinCertificationUpdateTime = weixinCertificationUpdateTime;
		this.weixinCertificationVersion = weixinCertificationVersion;
		this.weixinCertificationIsActive = weixinCertificationIsActive;
		this.userDetailNickname = userDetailNickname;
		this.userPhone = userPhone;
		
    }

    public Long getWeixinCertificationId() {
		return weixinCertificationId;
	}

	public void setWeixinCertificationId(Long weixinCertificationId) {
		this.weixinCertificationId = weixinCertificationId;
	}

	public Long getWeixinCertificationUserId() {
		return weixinCertificationUserId;
	}

	public void setWeixinCertificationUserId(Long weixinCertificationUserId) {
		this.weixinCertificationUserId = weixinCertificationUserId;
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

	public Date getWeixinCertificationCheckTime() {
		return weixinCertificationCheckTime;
	}

	public void setWeixinCertificationCheckTime(Date weixinCertificationCheckTime) {
		this.weixinCertificationCheckTime = weixinCertificationCheckTime;
	}

	public Date getWeixinCertificationCreateTime() {
		return weixinCertificationCreateTime;
	}

	public void setWeixinCertificationCreateTime(Date weixinCertificationCreateTime) {
		this.weixinCertificationCreateTime = weixinCertificationCreateTime;
	}

	public Date getWeixinCertificationUpdateTime() {
		return weixinCertificationUpdateTime;
	}

	public void setWeixinCertificationUpdateTime(Date weixinCertificationUpdateTime) {
		this.weixinCertificationUpdateTime = weixinCertificationUpdateTime;
	}

	public Integer getWeixinCertificationVersion() {
		return weixinCertificationVersion;
	}

	public void setWeixinCertificationVersion(Integer weixinCertificationVersion) {
		this.weixinCertificationVersion = weixinCertificationVersion;
	}

	public Byte getWeixinCertificationIsActive() {
		return weixinCertificationIsActive;
	}

	public void setWeixinCertificationIsActive(Byte weixinCertificationIsActive) {
		this.weixinCertificationIsActive = weixinCertificationIsActive;
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
        return "WeixinUserCertificationVO {" +
                "weixinCertificationId = " + weixinCertificationId + 
				", weixinCertificationUserId = " + weixinCertificationUserId + 
				", weixinCertificationUrl = " + weixinCertificationUrl + 
				", weixinCertificationCheckStatus = " + weixinCertificationCheckStatus + 
				", weixinCertificationCheckTime = " + weixinCertificationCheckTime + 
				", weixinCertificationCreateTime = " + weixinCertificationCreateTime + 
				", weixinCertificationUpdateTime = " + weixinCertificationUpdateTime + 
				", weixinCertificationVersion = " + weixinCertificationVersion + 
				", weixinCertificationIsActive = " + weixinCertificationIsActive + 
				", userDetailNickname = " + userDetailNickname + 
				", userPhone = " + userPhone + 
				" }";
    }

}
