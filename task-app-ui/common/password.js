import {BASE_URL, getUserToken, removeUserToken, clearForm, invalidToken} from './util.js'

const graceChecker = require("./graceChecker.js");

export const updateLogin = (self) => {
	const rule = [
			{name:'oldPassword', checkType : 'string', checkRule: '0,20',  errorMsg:'请输入6-20位旧密码'},
			{name:'password', checkType : 'string', checkRule: '6,20',  errorMsg:'请输入6-20位新密码'},
			{name:'confirmPassword', checkType : 'string', checkRule: '6,20',  errorMsg:'请输入6-20位确认密码'}
		]
	const checkRes = graceChecker.check(self.loginPwdForm, rule)
	if(checkRes){
		if (self.loginPwdForm.password === self.loginPwdForm.oldPassword) {
			uni.showToast({ title: "新旧密码一致，请重新输入新密码", icon: "none" })
			return
		}
		if (self.loginPwdForm.password !== self.loginPwdForm.confirmPassword) {
			uni.showToast({ title: "新密码与确认密码不一致", icon: "none" })
			return
		}
		uni.request({
			url: BASE_URL + '/pwd/update-login',
			method: 'POST',
			data: self.loginPwdForm,
			header: {
				'content-type': 'application/x-www-form-urlencoded',
				'Authorization': 'Bearer ' + getUserToken()
			},
			success: (res) => {
				if (res.data.code === 1001) {
					removeUserToken()
					uni.redirectTo({
						url: '/pages/login/login'
					})
					uni.showToast({
						title: '修改登录密码成功，请重新登录',
						icon: 'none'
					})
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

export const updatePay = (self) => {
	const rule = [
			{name:'password', checkType : 'string', checkRule: '6,20',  errorMsg:'请输入6-20位新密码'},
			{name:'confirmPassword', checkType : 'string', checkRule: '6,20',  errorMsg:'请输入6-20位确认密码'}
		]
	const checkRes = graceChecker.check(self.payPwdForm, rule)
	if(checkRes){
		if (self.payPwdForm.password === self.payPwdForm.oldPassword) {
			uni.showToast({ title: "新旧密码一致，请重新输入新密码", icon: "none" })
			return
		}
		if (self.payPwdForm.password !== self.payPwdForm.confirmPassword) {
			uni.showToast({ title: "新密码与确认密码不一致", icon: "none" })
			return
		}
		uni.request({
			url: BASE_URL + '/pwd/update-pay',
			method: 'POST',
			data: self.payPwdForm,
			header: {
				'content-type': 'application/x-www-form-urlencoded',
				'Authorization': 'Bearer ' + getUserToken()
			},
			success: (res) => {
				if (res.data.code === 1001) {
					uni.navigateBack({
						
					})
					uni.showToast({
						title: '修改支付密码成功',
						icon: 'none'
					})
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