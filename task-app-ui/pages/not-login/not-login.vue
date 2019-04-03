<template>
	<view class="zy-not-login">
		<view>
			<image src="../../static/back-logo.png" class="zy-logo-img" />
		</view>
		<text class="zy-text">您还未登录哦~</text>
		<button type="primary" style="width: 80%;" @click="toLogin">现在登录</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {}
		},
		onLoad() {

		},
		methods: {
			toLogin() {
				uni.navigateTo({
					url: '/pages/login/login'
				})
			}
		}
	}
</script>

<style lang="scss">
	.zy-not-login {
		width: 100%;
		padding-top: 100upx;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}

	.zy-not-login .zy-text {
		margin-bottom: 50upx;
	}
</style>
