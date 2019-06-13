import {BASE_URL, IMAGE_BASE_URL, getUserToken, clearForm, invalidToken, networkError, showInfoToast, showSuccessToast} from './util.js'
import * as ResponseStatus from './response-status.js'

const graceChecker = require("./graceChecker.js");

export const createTask = (self) => {
	const rule = [
		{name:'title', checkType : 'string', checkRule: '1,20',  errorMsg:'请输入1-' + '20个文字的标题'},
		{name:'totalNumber', checkType : 'betweenD', checkRule: '1,1000',  errorMsg:'请输入1-' + '1000的参与任务总人数'},
		{name:'integral', checkType : 'betweenD', checkRule: '1,1000',  errorMsg:'请输入1-' + '1000的辅助解封奖励积分'}
	]
	const checkRes = graceChecker.check(self.weixinTaskForm, rule)
	if(checkRes){
		uni.showLoading({
			title:'创建中'
		})
		uni.request({
			url: BASE_URL + '/weixin-task/user/createTask',
			data: self.weixinTaskForm,
			method: 'POST',
			header: {
				'Authorization': 'Bearer ' + getUserToken()
			},
			success: (res) => {
				if (res.data.code === ResponseStatus.OK) {
					uni.showToast({
						title: '发布微信任务成功，请在发布的任务中及时上传微信群聊二维码',
						duration: 5000
					})
					clearForm(self.weixinTaskForm)
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

export const taskList = (self, type) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTask/any/listOngoing',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize
		},
		method: 'POST',
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.weixinTaskList = res.data.data.rows
				if(type === 'pullDown') {
					uni.stopPullDownRefresh()
				}
			} else {
				showInfoToast(res.data.message)
			}
		},
		fail: () => {
			networkError()
		}
	})
}

export const taskListAll = (self, type) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTask/any/listOngoing',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize
		},
		method: 'POST',
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
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
			} else {
				showInfoToast(res.data.message)
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
			if (res.data.code === ResponseStatus.OK) {
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
			if (res.data.code === ResponseStatus.OK) {
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

export const taskDetail = (self, taskId) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTask/user/task-apply-user/' + taskId,
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.taskDetail = res.data.data
				if (self.taskDetail.weixinTaskGroupChatQrcode !== null) {
					self.taskDetail.weixinTaskGroupChatQrcode = IMAGE_BASE_URL + '/' + self.taskDetail.weixinTaskGroupChatQrcode
				}
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

export const taskApplyUser = (self, taskId, type) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTaskApply/user/pager-cond',
		method: 'POST',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize,
			weixinTaskApplyTaskId: taskId
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				if (type === 'init' || type === 'pullDown') {
					self.applyUsers = res.data.data.rows
				} else if (type === 'more') {
					self.applyUsers = self.applyUsers.concat(res.data.data.rows)
				}
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

export const taskApplyDetail = (self, taskId) => {
	uni.request({
		url: BASE_URL + '/weixin-task-apply/user/task-apply-detail',
		method: 'POST',
		data: {
			pageNo: self.pager.pageNo,
			pageSize: self.pager.pageSize,
			taskId: taskId
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.taskApplyDetail = res.data.data
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

export const applyTask = (taskId) => {
	uni.showLoading({
		title:'报名中'
	})
	uni.request({
		url: BASE_URL + '/weixin-task-apply/user/join-weixin-task',
		method: 'POST',
		data: {
			taskId: taskId
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				showInfoToast(res.data.message)
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

export const pubConfirmTask = (self, taskId, applyUserId, refresh) => {
	uni.showLoading({
		title:'确认中'
	})
	uni.request({
		url: BASE_URL + '/weixin-task-apply/user/confirm-weixin-task-apply',
		method: 'POST',
		data: {
			taskId: taskId,
			userId: applyUserId
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				showSuccessToast(res.data.message)
				if (refresh) {
					taskApplyUser(self, self.taskId, 'init')
					if (self.taskFrom === 'pub') {
						taskAppealList(self, self.taskId)
					}
				}
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

export const appConfirmTask = (self, taskId) => {
	uni.showLoading({
		title:'确认中'
	})
	uni.request({
		url: BASE_URL + '/weixin-task-apply/user/confirm-weixin-task-apply',
		method: 'POST',
		data: {
			taskId: taskId
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				showSuccessToast(res.data.message)
				self.taskDetail.weixinTaskConfirmNumber += 1
				self.taskApplyDetail.appConfirmStatus = 1
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

export const closeTask = (self, taskId) => {
	uni.request({
		url: BASE_URL + '/weixin-task/user/close-weixin-task/' + taskId,
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.taskDetail.weixinTaskTaskStatus = 1
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

export const taskAppeal = (self, taskId) => {
	uni.showLoading({
		title:'申诉中'
	})
	uni.request({
		url: BASE_URL + '/weixin-task-appeal/user/task-appeal',
		method: 'POST',
		data: {
			taskId: taskId,
			appealDes: '发布方未确认申诉',
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				showInfoToast('申诉成功，24小时后可再次申诉')
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

export const taskAppealList = (self, taskId) => {
	uni.request({
		url: BASE_URL + '/WeixinUserTaskAppeal/user/list-all-taskId',
		method: 'POST',
		data: {
			weixinTaskAppealTaskId: taskId
		},
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.appealUsers = res.data.data
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

export const uploadQrcode = (self) => {
	uni.chooseImage({
		sizeType: ['original', 'compressed'],
		sourceType: ['album', 'camera'],
		count: 1,
		success: (res) => {
			self.taskDetail.weixinTaskGroupChatQrcode = res.tempFilePaths[0]
			uni.uploadFile({
				url: BASE_URL +　'/weixin-task/user/upload-qrcode/' + self.taskDetail.weixinTaskId,
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