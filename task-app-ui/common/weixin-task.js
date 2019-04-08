import {BASE_URL, getUserToken, clearForm} from './util.js'

const graceChecker = require("./graceChecker.js");

export const createTask = (self) => {
	const rule = [
		{name:'title', checkType : 'string', checkRule: '1,20',  errorMsg:'请输入1-' + '20个文字的标题'},
		{name:'totalNumber', checkType : 'betweenD', checkRule: '1,1000',  errorMsg:'请输入1-' + '1000的总人数'},
		{name:'integral', checkType : 'betweenD', checkRule: '1,1000',  errorMsg:'请输入1-' + '1000的单人积分'}
	]
	const checkRes = graceChecker.check(self.weixinTaskForm, rule)
	if(checkRes){
		uni.request({
			url: BASE_URL + '/weixin-task/user/createTask',
			data: self.weixinTaskForm,
			method: 'POST',
			header: {
				'Authorization': 'Bearer ' + getUserToken()
			},
			success: (res) => {
				if (res.data.code === 1001) {
					uni.showToast({
						title: '发布微信任务成功',
						icon: 'none',
						duration: 2000
					})
					clearForm(self.weixinTaskForm)
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