import {BASE_URL, DEFAULT_HEADICON, saveUserToken, removeUserToken, getUserToken, clearForm, networkError, invalidToken} from './util.js'

const graceChecker = require("./graceChecker.js");

export const login = (self) => {
	const rule = [
		{name:'username', checkType : 'phoneno', checkRule: '',  errorMsg:'请输入正确的手机号'},
		{name:'password', checkType : 'notnull', checkRule: '',  errorMsg:'请输入密码'}
	]
	const checkRes = graceChecker.check(self.loginForm, rule)
	if(checkRes){
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
				if (res.data.code === 1001) {
					saveUserToken(res.data.data)
					uni.switchTab({
						url: '/pages/user-center/user-center'
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
	}else{
		uni.showToast({ title: graceChecker.error, icon: "none" })
	}
}

export const logout = (self) => {
	uni.request({
		url: BASE_URL + '/auth/logout',
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				removeUserToken()
				self.isUserLogin = false
				self.getUserInfo = false
				self.user.nickname = null
				self.userWallet.integral = 0
				self.userWallet.usableIntegral = 0
				self.user.headicon = DEFAULT_HEADICON
				uni.showToast({
					title: '已退出登录',
					duration: 2000
				})
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
}

export const userDetail = (self) => {
	uni.request({
		url: BASE_URL + '/user-detail/user/one',
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				self.user.nickname = res.data.data.nickname
				self.user.headicon = res.data.data.headicon
				self.user.wechatQrcode = res.data.data.wechatQrcode
			} else if (res.data.code === 1006) {
				uni.showToast({
					title: '请登录',
					duration: 2000
				})
				self.isUserLogin = false
				self.getUserInfo = false
				removeUserToken()
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
}

export const updateNickname = (self) => {
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
			if (res.data.code === 1001) {
				self.$event.$emit('changeNickname', {'nickname': self.user.nickname})
				uni.navigateBack({
					
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
					if (json.code === 1001) {
						uni.showToast({
							title: '上传成功'
						});
					} else if (json.code === 1006) {
						invalidToken()
					} else {
						uni.showModal({
							title: '提示',
							content:json.message,
							showCancel: false,
							success: function (resp) {
							}
						})
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
					if (json.code === 1001) {
						uni.showToast({
							title: '上传成功'
						});
					} else if (json.code === 1006) {
						invalidToken()
					} else {
						uni.showModal({
							title: '提示',
							content:json.message,
							showCancel: false,
							success: function (resp) {
							}
						})
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