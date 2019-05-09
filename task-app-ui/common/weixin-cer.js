import {BASE_URL, IMAGE_BASE_URL, getUserToken, invalidToken, networkError, showInfoToast, showSuccessToast} from './util.js'
import * as ResponseStatus from './response-status.js'

export const weixinCer = (self) => {
	uni.request({
		url: BASE_URL + '/weixin-certification/user/getByUserId',
		method: 'GET',
		header: {
			'Authorization': 'Bearer ' + getUserToken()
		},
		success: (res) => {
			if (res.data.code === ResponseStatus.OK) {
				self.weixinCer = res.data.data
				if (self.weixinCer.url !== null) {
					self.weixinCer.url = IMAGE_BASE_URL + '/' + self.weixinCer.url
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