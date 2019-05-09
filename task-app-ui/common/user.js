import {BASE_URL, IMAGE_BASE_URL, DEFAULT_HEADICON, saveUserToken, removeUserToken, getUserToken, clearForm, networkError, invalidToken, showInfoToast, showSuccessToast} from './util.js'
import * as ResponseStatus from './response-status.js'

const graceChecker = require("./graceChecker.js");

export const reg = (self) => {
	const rule = [
		{name:'username', checkType : 'phoneno', checkRule: '',  errorMsg:'请输入正确的手机号'},
		{name:'password', checkType : 'notnull', checkRule: '',  errorMsg:'请输入密码'},
		{name:'confirmPassword', checkType : 'notnull', checkRule: '',  errorMsg:'请输入确认密码'}
	]
	const checkRes = graceChecker.check(self.regForm, rule)
	if(checkRes){
		if (self.regForm.password !== self.regForm.confirmPassword) {
			showInfoToast('密码与确认密码不一致')
			return
		}
		uni.showLoading({
			title: '注册中'
		})
		uni.request({
			url: BASE_URL + '/auth/reg-mobile',
			data: {
				phone: self.regForm.username,
				password: self.regForm.password,
				confirmPassword: self.regForm.confirmPassword
			},
			method: 'POST',
			header: {
				'content-type': 'application/x-www-form-urlencoded'
			},
			success: (res) => {
				if (res.data.code === ResponseStatus.OK) {
					uni.navigateBack({
						
					})
					showInfoToast('注册成功，请登录')
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
	} else {
		showInfoToast(graceChecker.error)
	}
}

export const login = (self) => {
	const rule = [
		{name:'username', checkType : 'phoneno', checkRule: '',  errorMsg:'请输入正确的手机号'},
		{name:'password', checkType : 'notnull', checkRule: '',  errorMsg:'请输入密码'}
	]
	const checkRes = graceChecker.check(self.loginForm, rule)
	if(checkRes){
		uni.showLoading({
			title:'登录中'
		})
		uni.request({
			url: BASE_URL + '/auth/login',
			data: {
				username: self.loginForm.username,
				password: self.loginForm.password
			},
			method: 'POST',
			header: {
				'content-type': 'application/x-www-form-urlencoded'
			},
			success: (res) => {
				if (res.data.code === ResponseStatus.OK) {
					saveUserToken(res.data.data)
					uni.switchTab({
						url: '/pages/user-center/user-center'
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
	}else{
		showInfoToast(graceChecker.error)
	}
}

export const logout = (self) => {
	uni.showLoading({
		title:'退出中'
	})
	uni.request({
		url: BASE_URL + '/auth/logout',
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				removeUserToken()
				self.isUserLogin = false
				self.getUserInfo = false
				self.user.headicon = null
				self.user.nickname = ''
				self.userWallet.integral = 0
				self.userWallet.usableIntegral = 0
				self.user.headicon = DEFAULT_HEADICON
				showSuccessToast('已退出登录')
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

export const userDetail = (self) => {
	uni.request({
		url: BASE_URL + '/user-detail/user/one',
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.user.nickname = res.data.data.nickname
				if (res.data.data.headicon !== null) {
					self.user.headicon = IMAGE_BASE_URL + '/' + res.data.data.headicon
				}
				if (res.data.data.wechatQrcode !== null) {
					self.user.wechatQrcode = IMAGE_BASE_URL + '/' + res.data.data.wechatQrcode
				}
			} else if (res.data.code === ResponseStatus.AUTHENTICATION_TOKEN_ERROR) {
				showInfoToast('请登录')
				self.isUserLogin = false
				self.getUserInfo = false
				removeUserToken()
			} else {
				showInfoToast(res.data.message)
			}
		},
		fail: () => {
			networkError()
		}
	})
}

export const updateNickname = (self) => {
	uni.showLoading({
		title:'修改中'
	})
	uni.request({
		url: BASE_URL + '/user-detail/user/update',
		method: 'POST',
		data: {
			nickname: self.user.nickname
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.$event.$emit('changeNickname', {'nickname': self.user.nickname})
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
}

export const uploadHeadicon = (self) => {
	uni.chooseImage({
		sizeType: ['original', 'compressed'],
		sourceType: ['album', 'camera'],
		count: 1,
		success: (res) => {
			self.user.headicon = res.tempFilePaths[0]
			uni.uploadFile({
				url: BASE_URL +　'/user-detail/user/upload-headicon',
				filePath: res.tempFilePaths[0],
				name: 'file',
				header: {
					'Authorization': 'Bearer ' + getUserToken()
				},
				success: (uploadFileRes) => {
					const json = JSON.parse(uploadFileRes.data)
					if (json.code === ResponseStatus.OK) {
						showSuccessToast('上传成功')
					} else if (json.code === ResponseStatus.AUTHENTICATION_TOKEN_ERROR) {
						invalidToken()
					} else {
						showInfoToast(res.data.message)
					}
				},
				fail: () => {
					networkError()
				}
			})
		},
		fail: (res) => {
			console.log(res)
		}
	})
}

export const uploadWechatQrcode = (self) => {
	uni.chooseImage({
		sizeType: ['original', 'compressed'],
		sourceType: ['album', 'camera'],
		count: 1,
		success: (res) => {
			self.weixinBarcode = res.tempFilePaths[0]
			uni.uploadFile({
				url: BASE_URL +　'/user-detail/user/upload-wx-qrcode',
				filePath: res.tempFilePaths[0],
				name: 'file',
				header: {
					'Authorization': 'Bearer ' + getUserToken()
				},
				success: (uploadFileRes) => {
					const json = JSON.parse(uploadFileRes.data)
					if (json.code === ResponseStatus.OK) {
						showSuccessToast('上传成功')
					} else if (json.code === ResponseStatus.AUTHENTICATION_TOKEN_ERROR) {
						invalidToken()
					} else {
						showInfoToast(res.data.message)
					}
				},
				fail: () => {
					networkError()
				}
			})
		},
		fail: (res) => {
			console.log(res)
		}
	})
}