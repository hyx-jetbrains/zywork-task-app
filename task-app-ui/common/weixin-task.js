import {BASE_URL, getUserToken, clearForm, invalidToken, networkError} from './util.js'

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

export const taskList = (self, type) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTask/user/listOngoing',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize
		},
		method: 'POST',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				self.weixinTaskList = res.data.data.rows
				if(type === 'pullDown') {
					uni.stopPullDownRefresh()
				}
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

export const taskListAll = (self, type) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTask/user/listOngoing',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize
		},
		method: 'POST',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				if(type === 'pullDown') {
					self.weixinTaskList = res.data.data.rows
					uni.stopPullDownRefresh()
					self.showLoadMore = false
					self.loadMoreText = '加载中...'
				} else if(type === 'reachBottom') {
					if(res.data.data.rows.length > 0) {
						self.weixinTaskList = self.accountDetails.concat(res.data.data.rows)
						self.loadMoreText = '加载更多'
					} else {
						self.loadMoreText = '已加载全部'
					}
				} else if(type === '') {
					self.weixinTaskList = res.data.data.rows
				}
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

export const listPublish = (self, type) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTask/user/list-publish',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize
		},
		method: 'POST',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				if(type === 'pullDown') {
					self.weixinTaskList = res.data.data.rows
					uni.stopPullDownRefresh()
					self.showLoadMore = false
					self.loadMoreText = '加载中...'
				} else if(type === 'reachBottom') {
					if(res.data.data.rows.length > 0) {
						self.weixinTaskList = self.accountDetails.concat(res.data.data.rows)
						self.loadMoreText = '加载更多'
					} else {
						self.loadMoreText = '已加载全部'
					}
				} else if(type === '') {
					self.weixinTaskList = res.data.data.rows
				}
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

export const listJoin = (self, type) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTask/user/list-join',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize
		},
		method: 'POST',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				if(type === 'pullDown') {
					self.weixinTaskList = res.data.data.rows
					uni.stopPullDownRefresh()
					self.showLoadMore = false
					self.loadMoreText = '加载中...'
				} else if(type === 'reachBottom') {
					if(res.data.data.rows.length > 0) {
						self.weixinTaskList = self.accountDetails.concat(res.data.data.rows)
						self.loadMoreText = '加载更多'
					} else {
						self.loadMoreText = '已加载全部'
					}
				} else if(type === '') {
					self.weixinTaskList = res.data.data.rows
				}
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