import {BASE_URL, getUserToken, removeUserToken, clearForm, invalidToken, networkError, showInfoToast, showSuccessToast} from './util.js'
import * as ResponseStatus from './response-status.js'

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
			showInfoToast('新旧密码一致，请重新输入新密码')
			return
		}
		if (self.loginPwdForm.password !== self.loginPwdForm.confirmPassword) {
			showInfoToast('新密码与确认密码不一致')
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
				if (res.data.code === ResponseStatus.OK) {
					removeUserToken()
					uni.redirectTo({
						url: '/pages/login/login'
					})
					showSuccessToast('修改登录密码成功，请重新登录')
				} else if (res.data.code === ResponseStatus.AUTHENTICATION_TOKEN_ERROR) {
					invalidToken()
				} else {
					showInfoToast(res.data.message)
				}
			},
			fail: () => {
				networkError()
			}
		})
	} else{
		showInfoToast(graceChecker.error)
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
			showInfoToast('新旧密码一致，请重新输入新密码')
			return
		}
		if (self.payPwdForm.password !== self.payPwdForm.confirmPassword) {
			showInfoToast('新密码与确认密码不一致')
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
				if (res.data.code === ResponseStatus.OK) {
					uni.navigateBack({
						
					})
					showSuccessToast('修改支付密码成功')
				} else if (res.data.code === ResponseStatus.AUTHENTICATION_TOKEN_ERROR) {
					invalidToken()
				} else {
					showInfoToast(res.data.message)
				}
			},
			fail: () => {
				networkError()
			}
		})
	} else{
		showInfoToast( graceChecker.error)
	}
}