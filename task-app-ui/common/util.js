export const BASE_URL = 'http://192.168.203.132:8088'
export const USER_TOKEN_KEY = 'userToken'

export const isEmpty = (data) => {
	return data === null || data === undefined || data === ''
}

export const isUserTokenExist = () => {
	const userToken = uni.getStorageSync(USER_TOKEN_KEY)
	return !isEmpty(userToken)
}

export const saveUserToken = (userToken) => {
	uni.setStorageSync(USER_TOKEN_KEY, userToken)
}

export const getUserToken = () => {
	const userToken = uni.getStorageSync(USER_TOKEN_KEY)
	if (!isEmpty(userToken)) {
		return userToken
	}
	return null
}

export const removeUserToken = () => {
	uni.removeStorageSync(USER_TOKEN_KEY)
}

export const toLoginPage = () => {
	uni.navigateTo({
		url: '/pages/login/login'
	})
	uni.showToast({
		title: '请先登录',
		icon: 'none',
		duration: 2000
	})
}

export const clearForm = (form) => {
	for (var key in form) {
		form[key] = null
	}
}