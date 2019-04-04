<template>
	<view class="zy-page">
		请关注最新公告，添加APP客服微信二维码完成充值
		<text class="zy-text-info-strong" @click="toNoticeList">查看公告</text>
	</view>
</template>

<script>
	export default {
		data() {
			return {

			}
		},
		onLoad() {},
		methods: {
			toNoticeList() {
				uni.navigateTo({
					url: '/pages/notice-list/notice-list'
				})
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';

	.zy-page {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 50upx;
		text-align: center;
	}
</style>
