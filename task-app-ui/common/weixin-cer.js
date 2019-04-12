import {BASE_URL, getUserToken, invalidToken, networkError, showInfoToast, showSuccessToast} from './util.js'

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
				showInfoToast(res.data.message)
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
						showSuccessToast('上传成功')
					} else if (json.code === 1006) {
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