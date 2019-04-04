<template>
	<view class="zy-page">
		<image :src="weixinBarcode"/>
		<text class="zy-text-info-strong" @click="chooseImage">上传我的微信二维码</text>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				weixinBarcode: 'https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png'
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
						this.weixinBarcode = res.tempFilePaths[0]
						
					},
					fail: (res) => {
						console.log(res)
					}
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
