package top.zywork.vo;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * AccountDetailVO值对象类<br/>
 *
 * 创建于2019-02-05<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
public class AccountDetailVO extends BaseVO {

    private static final long serialVersionUID = -9223372035914960569L;

    // 账目编号
	private Long id;
	// 交易编号
	@NotBlank(message = "此项是必须项")
	@Size(min = 1, max = 32, message = "必须是1-32个字符")
	private String transactionNo;
	// 用户编号
	@NotNull(message = "此项是必须项")
	private Long userId;
	// 金额
	private Long amount;
	// 积分
	private Long integral;
	// 收入或支出
	private Byte type;
	// 收支类型
	@Size(min = 0, max = 20, message = "必须小于20个字符")
	private String subType;
	// 支付方式
	private Byte payType;
	// 版本号
	private Integer version;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTime;
	// 是否激活
	private Byte isActive;
	
    public AccountDetailVO () {}

    public AccountDetailVO (Long id, String transactionNo, Long userId, Long amount, Long integral, Byte type, String subType, Byte payType, Integer version, Date createTime, Date updateTime, Byte isActive) {
        this.id = id;
		this.transactionNo = transactionNo;
		this.userId = userId;
		this.amount = amount;
		this.integral = integral;
		this.type = type;
		this.subType = subType;
		this.payType = payType;
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

	public String getTransactionNo() {
		return transactionNo;
	}

	public void setTransactionNo(String transactionNo) {
		this.transactionNo = transactionNo;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getAmount() {
		return amount;
	}

	public void setAmount(Long amount) {
		this.amount = amount;
	}

	public Long getIntegral() {
		return integral;
	}

	public void setIntegral(Long integral) {
		this.integral = integral;
	}

	public Byte getType() {
		return type;
	}

	public void setType(Byte type) {
		this.type = type;
	}

	public String getSubType() {
		return subType;
	}

	public void setSubType(String subType) {
		this.subType = subType;
	}

	public Byte getPayType() {
		return payType;
	}

	public void setPayType(Byte payType) {
		this.payType = payType;
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
        return "AccountDetailVO {" +
                "id = " + id + 
				", transactionNo = " + transactionNo + 
				", userId = " + userId + 
				", amount = " + amount + 
				", integral = " + integral + 
				", type = " + type + 
				", subType = " + subType + 
				", payType = " + payType + 
				", version = " + version + 
				", createTime = " + createTime + 
				", updateTime = " + updateTime + 
				", isActive = " + isActive + 
				" }";
    }

}
