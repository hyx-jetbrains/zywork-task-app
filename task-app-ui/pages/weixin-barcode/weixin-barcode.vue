<template>
	<view class="zy-page">
		<view v-if="weixinBarcode === null">未上传微信二维码</view>
		<image v-else :src="weixinBarcode"/>
		<text class="zy-text-info-strong" @click="chooseImage">上传我的微信二维码</text>
	</view>
</template>

<script>
	import {uploadWechatQrcode} from '../../common/user.js'
	
	export default {
		data() {
			return {
				weixinBarcode: null
			}
		},
		onLoad(option) {
			if (option.wechatQrcode !== 'null') {
				this.weixinBarcode = option.wechatQrcode
			}
		},
		methods: {
			chooseImage() {
				uploadWechatQrcode(this)
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	
	.zy-page {
		padding-top: 20upx;
		padding-left: 10upx;
		padding-rihgt: 10upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.zy-page image {
		margin-bottom: 50upx;
	}
</style>
