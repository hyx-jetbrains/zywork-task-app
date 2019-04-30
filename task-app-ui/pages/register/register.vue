<template>
	<view class="zy-reg-page">
		<view class="zy-form">
			<view class="uni-form-item uni-column">
				<input v-model="regForm.username" class="uni-input" placeholder="请输入手机号" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="regForm.password" class="uni-input" password placeholder="请输入密码" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="regForm.confirmPassword" class="uni-input" password placeholder="请再次输入密码" />
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="reg">注册</button>
			</view>
		</view>
		<view class="zy-text-info">注册即代表您同意<text @click="toPrivacy" class="zy-text-info-strong">《用户使用条款和隐私声明》</text></view>
	</view>
</template>

<script>
	import {reg} from '../../common/user.js'
	export default {
		data() {
			return {
				regForm: {
					username: '',
					password: '',
					confirmPassword: ''
				}
			}
		},
		onLoad() {},
		methods: {
			reg() {
				reg(this)
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

	.zy-reg-page {
		width: 100%;
		padding-top: 20upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
</style>
