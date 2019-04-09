import {BASE_URL, getUserToken, invalidToken} from './util.js'

export const weixinCer = (self) => {
	uni.request({
		url: BASE_URL + '/weixin-certification/user/getByUserId',
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === 1001) {
				self.weixinCer = res.data.data
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

export const uploadWeixinCer = (self) => {
	uni.chooseImage({
		sizeType: ['original', 'compressed'],
		sourceType: ['album', 'camera'],
		count: 1,
		success: (res) => {
			self.weixinCer.url = res.tempFilePaths[0]
			uni.uploadFile({
				url: BASE_URL +　'/weixin-certification/user/upload-cer',
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