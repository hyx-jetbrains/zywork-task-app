package top.zywork.dto;

import java.math.BigDecimal;
import java.util.Date;

/**
 * GoodsShopDTO数据传输对象类<br/>
 *
 * 创建于2019-02-22<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
public class GoodsShopDTO extends BaseDTO {

    private static final long serialVersionUID = -9223372034859837405L;

    // 店铺编号
	private Long id;
	// 用户编号
	private Long userId;
	// 类目编号
	private Long categoryId;
	// 主体类型
	private Byte subjectType;
	// 店铺Logo
	private String logo;
	// 店铺标题
	private String title;
	// 店铺简介
	private String intro;
	// 店铺等级
	private Byte level;
	// 审核状态
	private Byte checkStatus;
	// 审核描述
	private String checkDescription;
	// 审核人编号
	private Byte checkedUserId;
	// 审核时间
	private Date checkedTime;
	// 版本号
	private Integer version;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 是否激活
	private Byte isActive;
	
    public GoodsShopDTO () {}

    public GoodsShopDTO (Long id, Long userId, Long categoryId, Byte subjectType, String logo, String title, String intro, Byte level, Byte checkStatus, String checkDescription, Byte checkedUserId, Date checkedTime, Integer version, Date createTime, Date updateTime, Byte isActive) {
        this.id = id;
		this.userId = userId;
		this.categoryId = categoryId;
		this.subjectType = subjectType;
		this.logo = logo;
		this.title = title;
		this.intro = intro;
		this.level = level;
		this.checkStatus = checkStatus;
		this.checkDescription = checkDescription;
		this.checkedUserId = checkedUserId;
		this.checkedTime = checkedTime;
		this.version = version;
		this.createTime = createTime;
		this.updateTime = updateTime;
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

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public Byte getSubjectType() {
		return subjectType;
	}

	public void setSubjectType(Byte subjectType) {
		this.subjectType = subjectType;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Byte getLevel() {
		return level;
	}

	public void setLevel(Byte level) {
		this.level = level;
	}

	public Byte getCheckStatus() {
		return checkStatus;
	}

	public void setCheckStatus(Byte checkStatus) {
		this.checkStatus = checkStatus;
	}

	public String getCheckDescription() {
		return checkDescription;
	}

	public void setCheckDescription(String checkDescription) {
		this.checkDescription = checkDescription;
	}

	public Byte getCheckedUserId() {
		return checkedUserId;
	}

	public void setCheckedUserId(Byte checkedUserId) {
		this.checkedUserId = checkedUserId;
	}

	public Date getCheckedTime() {
		return checkedTime;
	}

	public void setCheckedTime(Date checkedTime) {
		this.checkedTime = checkedTime;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
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

	public Byte getIsActive() {
		return isActive;
	}

	public void setIsActive(Byte isActive) {
		this.isActive = isActive;
	}

	
    @Override
    public String toString() {
        return "GoodsShopDTO {" +
                "id = " + id + 
				", userId = " + userId + 
				", categoryId = " + categoryId + 
				", subjectType = " + subjectType + 
				", logo = " + logo + 
				", title = " + title + 
				", intro = " + intro + 
				", level = " + level + 
				", checkStatus = " + checkStatus + 
				", checkDescription = " + checkDescription + 
				", checkedUserId = " + checkedUserId + 
				", checkedTime = " + checkedTime + 
				", version = " + version + 
				", createTime = " + createTime + 
				", updateTime = " + updateTime + 
				", isActive = " + isActive + 
				" }";
    }

}
