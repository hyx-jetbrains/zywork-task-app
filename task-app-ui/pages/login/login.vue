<template>
	<view class="zy-login-page">
		<view class="zy-form">
			<view class="uni-form-item uni-column">
				<input v-model="loginForm.username" class="uni-input" placeholder="请输入手机号" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="loginForm.password" class="uni-input" password placeholder="请输入密码" />
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="login">登录</button>
			</view>
		</view>
		<view class="zy-text-info">还未注册账号，<text @click="toReg" class="zy-text-info-strong">现在注册</text></view>
		<view class="zy-text-info">登录即代表您同意<text @click="toPrivacy" class="zy-text-info-strong">《用户使用条款和隐私声明》</text></view>
	</view>
</template>

<script>
	import {login} from '../../common/user.js'
	export default {
		data() {
			return {
				loginForm: {
					username: null,
					password: null
				}
			}
		},
		onLoad() {},
		methods: {
			login() {
				login(this)
			},
			toReg() {
				uni.navigateTo({
					url: '/pages/register/register'
				})
			},
			toPrivacy() {
				uni.navigateTo({
					url: '/pages/privacy/privacy'
				})
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';

	.zy-login-page {
		width: 100%;
		padding-top: 20upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
</style>
