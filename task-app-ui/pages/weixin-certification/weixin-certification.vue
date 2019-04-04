<template>
	<view class="zy-page">
		<image :src="weixinCer"/>
		<text style="font-size: 28upx;">已审核通过</text>
		<text class="zy-text-info-strong" @click="chooseImage">上传我的微信银行卡截图</text>
		<text class="zy-text-info-strong" @click="previewImage">查看截图示例</text>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				weixinCer: 'https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png',
				weixinCerExp: 'https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png'
			}
		},
		onLoad() {
		},
		methods: {
			chooseImage() {
				uni.chooseImage({
					sizeType: ['original', 'compressed'],
					sourceType: ['album'], 
					count: 1,
					success: (res) => {
						this.weixinCer = res.tempFilePaths
						
					},
					fail: (res) => {
						console.log(res)
					}
				})
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
