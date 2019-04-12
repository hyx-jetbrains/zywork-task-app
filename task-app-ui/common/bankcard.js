import {BASE_URL, getUserToken, clearForm, invalidToken, networkError, showInfoToast} from './util.js'

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
			if (res.data.code === 1001) {
				self.banks = res.data.data.rows
			} else if (res.data.code === 1006) {
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
		{name:'bankcardNo', checkType : 'notnull', checkRule: '',  errorMsg:'请输入银行卡卡号'}
	]
	const checkRes = graceChecker.check(self.bankForm, rule)
	if(checkRes){
		uni.request({
			url: BASE_URL + '/user-bankcard/user/bind',
			method: 'POST',
			data: self.bankForm,
			header: {
				'content-type': 'application/x-www-form-urlencoded',
				'Authorization': 'Bearer ' + getUserToken()
			},
			success: (res) => {
				if (res.data.code === 1001) {
					self.$event.$emit('addBank', {})
					uni.navigateBack({
						
					})
				} else if (res.data.code === 1006) {
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

export const unbind = (self, cardIndex, bankcardNo) => {
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
			if (res.data.code === 1001) {
				self.banks.splice(cardIndex, 1)
			} else if (res.data.code === 1006) {
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