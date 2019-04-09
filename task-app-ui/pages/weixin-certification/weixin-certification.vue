<template>
	<view class="zy-page">
		<view v-if="weixinCer.url === ''">未上传微信认证截图</view>
		<image v-if="weixinCer.url !== ''" :src="weixinCer.url"/>
		<text v-if="weixinCer.url !== '' && weixinCer.checkStatus === 0" style="font-size: 28upx;">等待审核</text>
		<text v-if="weixinCer.url !== '' && weixinCer.checkStatus === 1" style="font-size: 28upx;">已审核通过</text>
		<text v-if="weixinCer.url !== '' && weixinCer.checkStatus === 2" style="font-size: 28upx;">未审核通过</text>
		<text class="zy-text-info-strong" @click="chooseImage">上传我的微信银行卡截图</text>
		<text class="zy-text-info-strong" @click="previewImage">查看截图示例</text>
	</view>
</template>

<script>
	import {weixinCer, uploadWeixinCer} from '../../common/weixin-cer.js'
	export default {
		data() {
			return {
				weixinCer: {
					url: '',
					checkStatus: 0
				},
				weixinCerExp: 'https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png'
			}
		},
		onLoad() {
		},
		onShow() {
			this.loadWeixinCer()
		},
		methods: {
			loadWeixinCer() {
				weixinCer(this)
			},
			chooseImage() {
				uploadWeixinCer(this)
			},
			previewImage() {
				uni.previewImage({
					urls: [this.weixinCerExp]
				})
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
