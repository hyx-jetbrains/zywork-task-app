import {BASE_URL, getUserToken, clearForm, invalidToken, networkError, showInfoToast} from './util.js'
import * as ResponseStatus from './response-status.js'

const graceChecker = require("./graceChecker.js");

export const banks = (self) => {
	uni.request({
		url: BASE_URL + '/user-bankcard/user/all-cond',
		method: 'POST',
		data: {
			userId: null
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.banks = res.data.data.rows
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
}

export const bind = (self) => {
	const rule = [
		{name:'accountName', checkType : 'string', checkRule: '1,5',  errorMsg:'请输入银行卡开户姓名'},
		{name:'bankcardNo', checkType : 'notnull', checkRule: '',  errorMsg:'请输入银行卡卡号'},
		{name:'bankcardNo1', checkType : 'notnull', checkRule: '',  errorMsg:'请再次输入银行卡卡号'}
	]
	const checkRes = graceChecker.check(self.bankForm, rule)
	if(checkRes){
		if (self.bankForm.bankcardNo !== self.bankForm.bankcardNo1) {
			showInfoToast('请确保两次输入的银行卡号一致')
			return
		}
		uni.showLoading({
			title:'绑定中'
		})
		uni.request({
			url: BASE_URL + '/user-bankcard/user/bind',
			method: 'POST',
			data: self.bankForm,
			header: {
				'content-type': 'application/x-www-form-urlencoded',
				'Authorization': 'Bearer ' + getUserToken()
			},
			success: (res) => {
				if (res.data.code === ResponseStatus.OK) {
					self.$event.$emit('addBank', {})
					uni.navigateBack({
						
					})
				} else if (res.data.code === ResponseStatus.AUTHENTICATION_TOKEN_ERROR) {
					invalidToken()
				} else {
					showInfoToast(res.data.message)
				}
			},
			fail: () => {
				networkError()
			},
			complete: () => {
				uni.hideLoading()
			}
		})
	} else{
		showInfoToast(graceChecker.error)
	}
}

export const unbind = (self, cardIndex, bankcardNo) => {
	uni.showLoading({
		title:'解绑中'
	})
	uni.request({
		url: BASE_URL + '/user-bankcard/user/unbind',
		method: 'POST',
		data: {
			bankcardNo: bankcardNo
		},
		header: {
			'content-type': 'application/x-www-form-urlencoded',
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.banks.splice(cardIndex, 1)
			} else if (res.data.code === ResponseStatus.AUTHENTICATION_TOKEN_ERROR) {
				invalidToken()
			} else {
				showInfoToast(res.data.message)
			}
		},
		fail: () => {
			networkError()
		},
		complete: () => {
			uni.hideLoading()
		}
	})
}