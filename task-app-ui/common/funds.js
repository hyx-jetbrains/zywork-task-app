import {BASE_URL, getUserToken, clearForm} from './util.js'

const graceChecker = require("./graceChecker.js");

export const userWallet = (self) => {
	uni.request({
		url: BASE_URL + '/user-wallet/user/one',
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				self.userWallet.integral = res.data.data.rmbBalance
				self.userWallet.usableIntegral = res.data.data.usableRmbBalance
			}
		},
		fail: () => {
			networkError()
		}
	})
}

export const submitWithdraw = (self) => {
	const rule = [
		{name:'amount', checkType : 'betweenD', checkRule: '1,' + self.integral,  errorMsg:'请输入1-' + self.integral + '的整数积分'},
		{name:'payPassword', checkType : 'string', checkRule: '6,20',  errorMsg:'请输入6-20位支付密码'},
		{name:'bankcardId', checkType : 'betweenD', checkRule: '1,999999999',  errorMsg:'请选择提现银行卡'}
	]
	const checkRes = graceChecker.check(self.withdrawForm, rule)
	if(checkRes){
		uni.request({
			url: BASE_URL + '/withdraw/user/submit',
			data: self.withdrawForm,
			method: 'POST',
			header: {
				'content-type': 'application/x-www-form-urlencoded',
				'Authorization': 'Bearer ' + getUserToken()
			},
			success: (res) => {
				if (res.data.code === 1001) {
					uni.showToast({
						title: '已提交提现申请，等待审核',
						icon: 'none',
						duration: 2000
					})
					clearForm(self.withdrawForm)
				} else if (res.data.code === 1006) {
					invalidToken()
				} else {
					uni.showModal({
						title: '提示',
						content: res.data.message,
						showCancel: false,
						success: function (res) {
						}
					})
				}
			},
			fail: () => {
				networkError()
			}
		})
	} else{
		uni.showToast({ title: graceChecker.error, icon: "none" })
	}
	
}