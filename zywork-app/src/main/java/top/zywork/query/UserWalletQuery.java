package top.zywork.query;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * UserWalletQuery查询对象类<br/>
 *
 * 创建于2019-01-14<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
public class UserWalletQuery extends PageQuery {

    private static final long serialVersionUID = -9223372035102085587L;

    // 钱包编号
	private Long id;
	// 钱包编号（最小值）
	private Long idMin;
	// 钱包编号（最大值）
	private Long idMax;
	// 支付密码
	private String payPassword;
	// 人民币余额
	private Long rmbBalance;
	// 人民币余额（最小值）
	private Long rmbBalanceMin;
	// 人民币余额（最大值）
	private Long rmbBalanceMax;
	// 可用余额
	private Long usableRmbBalance;
	// 可用余额（最小值）
	private Long usableRmbBalanceMin;
	// 可用余额（最大值）
	private Long usableRmbBalanceMax;
	// 冻结余额
	private Long frozenRmbBalance;
	// 冻结余额（最小值）
	private Long frozenRmbBalanceMin;
	// 冻结余额（最大值）
	private Long frozenRmbBalanceMax;
	// 总积分
	private Long integral;
	// 总积分（最小值）
	private Long integralMin;
	// 总积分（最大值）
	private Long integralMax;
	// 可用积分
	private Long usableIntegral;
	// 可用积分（最小值）
	private Long usableIntegralMin;
	// 可用积分（最大值）
	private Long usableIntegralMax;
	// 冻结积分
	private Long frozenIntegral;
	// 冻结积分（最小值）
	private Long frozenIntegralMin;
	// 冻结积分（最大值）
	private Long frozenIntegralMax;
	// 版本号
	private Integer version;
	// 版本号（最小值）
	private Integer versionMin;
	// 版本号（最大值）
	private Integer versionMax;
	// 创建时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTime;
	// 创建时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTimeMin;
	// 创建时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date createTimeMax;
	// 更新时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTime;
	// 更新时间（最小值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTimeMin;
	// 更新时间（最大值）
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
	private Date updateTimeMax;
	// 是否激活
	private Byte isActive;
	// 是否激活（最小值）
	private Byte isActiveMin;
	// 是否激活（最大值）
	private Byte isActiveMax;
	
    public UserWalletQuery () {}

    public UserWalletQuery (Long id, Long idMin, Long idMax, String payPassword, Long rmbBalance, Long rmbBalanceMin, Long rmbBalanceMax, Long usableRmbBalance, Long usableRmbBalanceMin, Long usableRmbBalanceMax, Long frozenRmbBalance, Long frozenRmbBalanceMin, Long frozenRmbBalanceMax, Long integral, Long integralMin, Long integralMax, Long usableIntegral, Long usableIntegralMin, Long usableIntegralMax, Long frozenIntegral, Long frozenIntegralMin, Long frozenIntegralMax, Integer version, Integer versionMin, Integer versionMax, Date createTime, Date createTimeMin, Date createTimeMax, Date updateTime, Date updateTimeMin, Date updateTimeMax, Byte isActive, Byte isActiveMin, Byte isActiveMax) {
        this.id = id;
		this.idMin = idMin;
		this.idMax = idMax;
		this.payPassword = payPassword;
		this.rmbBalance = rmbBalance;
		this.rmbBalanceMin = rmbBalanceMin;
		this.rmbBalanceMax = rmbBalanceMax;
		this.usableRmbBalance = usableRmbBalance;
		this.usableRmbBalanceMin = usableRmbBalanceMin;
		this.usableRmbBalanceMax = usableRmbBalanceMax;
		this.frozenRmbBalance = frozenRmbBalance;
		this.frozenRmbBalanceMin = frozenRmbBalanceMin;
		this.frozenRmbBalanceMax = frozenRmbBalanceMax;
		this.integral = integral;
		this.integralMin = integralMin;
		this.integralMax = integralMax;
		this.usableIntegral = usableIntegral;
		this.usableIntegralMin = usableIntegralMin;
		this.usableIntegralMax = usableIntegralMax;
		this.frozenIntegral = frozenIntegral;
		this.frozenIntegralMin = frozenIntegralMin;
		this.frozenIntegralMax = frozenIntegralMax;
		this.version = version;
		this.versionMin = versionMin;
		this.versionMax = versionMax;
		this.createTime = createTime;
		this.createTimeMin = createTimeMin;
		this.createTimeMax = createTimeMax;
		this.updateTime = updateTime;
		this.updateTimeMin = updateTimeMin;
		this.updateTimeMax = updateTimeMax;
		this.isActive = isActive;
		this.isActiveMin = isActiveMin;
		this.isActiveMax = isActiveMax;
		
    }

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getIdMin() {
		return idMin;
	}

	public void setIdMin(Long idMin) {
		this.idMin = idMin;
	}

	public Long getIdMax() {
		return idMax;
	}

	public void setIdMax(Long idMax) {
		this.idMax = idMax;
	}

	public String getPayPassword() {
		return payPassword;
	}

	public void setPayPassword(String payPassword) {
		this.payPassword = payPassword;
	}

	public Long getRmbBalance() {
		return rmbBalance;
	}

	public void setRmbBalance(Long rmbBalance) {
		this.rmbBalance = rmbBalance;
	}

	public Long getRmbBalanceMin() {
		return rmbBalanceMin;
	}

	public void setRmbBalanceMin(Long rmbBalanceMin) {
		this.rmbBalanceMin = rmbBalanceMin;
	}

	public Long getRmbBalanceMax() {
		return rmbBalanceMax;
	}

	public void setRmbBalanceMax(Long rmbBalanceMax) {
		this.rmbBalanceMax = rmbBalanceMax;
	}

	public Long getUsableRmbBalance() {
		return usableRmbBalance;
	}

	public void setUsableRmbBalance(Long usableRmbBalance) {
		this.usableRmbBalance = usableRmbBalance;
	}

	public Long getUsableRmbBalanceMin() {
		return usableRmbBalanceMin;
	}

	public void setUsableRmbBalanceMin(Long usableRmbBalanceMin) {
		this.usableRmbBalanceMin = usableRmbBalanceMin;
	}

	public Long getUsableRmbBalanceMax() {
		return usableRmbBalanceMax;
	}

	public void setUsableRmbBalanceMax(Long usableRmbBalanceMax) {
		this.usableRmbBalanceMax = usableRmbBalanceMax;
	}

	public Long getFrozenRmbBalance() {
		return frozenRmbBalance;
	}

	public void setFrozenRmbBalance(Long frozenRmbBalance) {
		this.frozenRmbBalance = frozenRmbBalance;
	}

	public Long getFrozenRmbBalanceMin() {
		return frozenRmbBalanceMin;
	}

	public void setFrozenRmbBalanceMin(Long frozenRmbBalanceMin) {
		this.frozenRmbBalanceMin = frozenRmbBalanceMin;
	}

	public Long getFrozenRmbBalanceMax() {
		return frozenRmbBalanceMax;
	}

	public void setFrozenRmbBalanceMax(Long frozenRmbBalanceMax) {
		this.frozenRmbBalanceMax = frozenRmbBalanceMax;
	}

	public Long getIntegral() {
		return integral;
	}

	public void setIntegral(Long integral) {
		this.integral = integral;
	}

	public Long getIntegralMin() {
		return integralMin;
	}

	public void setIntegralMin(Long integralMin) {
		this.integralMin = integralMin;
	}

	public Long getIntegralMax() {
		return integralMax;
	}

	public void setIntegralMax(Long integralMax) {
		this.integralMax = integralMax;
	}

	public Long getUsableIntegral() {
		return usableIntegral;
	}

	public void setUsableIntegral(Long usableIntegral) {
		this.usableIntegral = usableIntegral;
	}

	public Long getUsableIntegralMin() {
		return usableIntegralMin;
	}

	public void setUsableIntegralMin(Long usableIntegralMin) {
		this.usableIntegralMin = usableIntegralMin;
	}

	public Long getUsableIntegralMax() {
		return usableIntegralMax;
	}

	public void setUsableIntegralMax(Long usableIntegralMax) {
		this.usableIntegralMax = usableIntegralMax;
	}

	public Long getFrozenIntegral() {
		return frozenIntegral;
	}

	public void setFrozenIntegral(Long frozenIntegral) {
		this.frozenIntegral = frozenIntegral;
	}

	public Long getFrozenIntegralMin() {
		return frozenIntegralMin;
	}

	public void setFrozenIntegralMin(Long frozenIntegralMin) {
		this.frozenIntegralMin = frozenIntegralMin;
	}

	public Long getFrozenIntegralMax() {
		return frozenIntegralMax;
	}

	public void setFrozenIntegralMax(Long frozenIntegralMax) {
		this.frozenIntegralMax = frozenIntegralMax;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Integer getVersionMin() {
		return versionMin;
	}

	public void setVersionMin(Integer versionMin) {
		this.versionMin = versionMin;
	}

	public Integer getVersionMax() {
		return versionMax;
	}

	public void setVersionMax(Integer versionMax) {
		this.versionMax = versionMax;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getCreateTimeMin() {
		return createTimeMin;
	}

	public void setCreateTimeMin(Date createTimeMin) {
		this.createTimeMin = createTimeMin;
	}

	public Date getCreateTimeMax() {
		return createTimeMax;
	}

	public void setCreateTimeMax(Date createTimeMax) {
		this.createTimeMax = createTimeMax;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getUpdateTimeMin() {
		return updateTimeMin;
	}

	public void setUpdateTimeMin(Date updateTimeMin) {
		this.updateTimeMin = updateTimeMin;
	}

	public Date getUpdateTimeMax() {
		return updateTimeMax;
	}

	public void setUpdateTimeMax(Date updateTimeMax) {
		this.updateTimeMax = updateTimeMax;
	}

	public Byte getIsActive() {
		return isActive;
	}

	public void setIsActive(Byte isActive) {
		this.isActive = isActive;
	}

	public Byte getIsActiveMin() {
		return isActiveMin;
	}

	public void setIsActiveMin(Byte isActiveMin) {
		this.isActiveMin = isActiveMin;
	}

	public Byte getIsActiveMax() {
		return isActiveMax;
	}

	public void setIsActiveMax(Byte isActiveMax) {
		this.isActiveMax = isActiveMax;
	}

	
    @Override
    public String toString() {
        return "UserWalletQuery {" +
                "id = " + id + 
				", idMin = " + idMin + 
				", idMax = " + idMax + 
				", payPassword = " + payPassword + 
				", rmbBalance = " + rmbBalance + 
				", rmbBalanceMin = " + rmbBalanceMin + 
				", rmbBalanceMax = " + rmbBalanceMax + 
				", usableRmbBalance = " + usableRmbBalance + 
				", usableRmbBalanceMin = " + usableRmbBalanceMin + 
				", usableRmbBalanceMax = " + usableRmbBalanceMax + 
				", frozenRmbBalance = " + frozenRmbBalance + 
				", frozenRmbBalanceMin = " + frozenRmbBalanceMin + 
				", frozenRmbBalanceMax = " + frozenRmbBalanceMax + 
				", integral = " + integral + 
				", integralMin = " + integralMin + 
				", integralMax = " + integralMax + 
				", usableIntegral = " + usableIntegral + 
				", usableIntegralMin = " + usableIntegralMin + 
				", usableIntegralMax = " + usableIntegralMax + 
				", frozenIntegral = " + frozenIntegral + 
				", frozenIntegralMin = " + frozenIntegralMin + 
				", frozenIntegralMax = " + frozenIntegralMax + 
				", version = " + version + 
				", versionMin = " + versionMin + 
				", versionMax = " + versionMax + 
				", createTime = " + createTime + 
				", createTimeMin = " + createTimeMin + 
				", createTimeMax = " + createTimeMax + 
				", updateTime = " + updateTime + 
				", updateTimeMin = " + updateTimeMin + 
				", updateTimeMax = " + updateTimeMax + 
				", isActive = " + isActive + 
				", isActiveMin = " + isActiveMin + 
				", isActiveMax = " + isActiveMax + 
				" }";
    }

}
