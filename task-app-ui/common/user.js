import {BASE_URL, saveUserToken, removeUserToken, getUserToken, clearForm} from './util.js'

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
				uni.showToast({
					title: '网络有问题哦~',
					icon: 'none',
					duration: 2000
				})
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
			uni.showToast({
				title: '网络有问题哦~',
				icon: 'none',
				duration: 2000
			})
		}
	})
}