package top.zywork.dos;

import java.math.BigDecimal;
import java.util.Date;

/**
 * WeixinCertificationDO数据对象实体类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
public class WeixinCertificationDO extends BaseDO {

    private static final long serialVersionUID = -9223372035089700477L;

    // 微信认证编号
	private Long id;
	// 用户编号
	private Long userId;
	// 微信认证图片
	private String url;
	// 认证状态
	private Byte checkStatus;
	// 认证时间
	private Date checkTime;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 版本号
	private Integer version;
	// 是否激活
	private Byte isActive;
	
    public WeixinCertificationDO () {}

    public WeixinCertificationDO (Long id, Long userId, String url, Byte checkStatus, Date checkTime, Date createTime, Date updateTime, Integer version, Byte isActive) {
        this.id = id;
		this.userId = userId;
		this.url = url;
		this.checkStatus = checkStatus;
		this.checkTime = checkTime;
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

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Byte getCheckStatus() {
		return checkStatus;
	}

	public void setCheckStatus(Byte checkStatus) {
		this.checkStatus = checkStatus;
	}

	public Date getCheckTime() {
		return checkTime;
	}

	public void setCheckTime(Date checkTime) {
		this.checkTime = checkTime;
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
        return "WeixinCertificationDO {" +
                "id = " + id + 
				", userId = " + userId + 
				", url = " + url + 
				", checkStatus = " + checkStatus + 
				", checkTime = " + checkTime + 
				", createTime = " + createTime + 
				", updateTime = " + updateTime + 
				", version = " + version + 
				", isActive = " + isActive + 
				" }";
    }

}
