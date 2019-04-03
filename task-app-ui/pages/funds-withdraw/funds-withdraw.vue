<template>
	<view class="zy-page">
		<view class="zy-form">
			<view class="uni-form-item uni-column">
				<view class="title">可提现积分：1000</view>
				<input v-model="withdrawForm.integral" class="uni-input" type="number" placeholder="请输入提现积分" />
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="submitWithdraw">申请提现</button>
			</view>
		</view>
	</view>
</template>

<script>
	const graceChecker = require("../../common/graceChecker.js");
	export default {
		data() {
			return {
				withdrawForm: {
					integral: null
				}
			}
		},
		onLoad() {
		},
		methods: {
			submitWithdraw() {
				const rule = [
					{name:'integral', checkType : 'betweenD', checkRule: '1,1000',  errorMsg:'请输入1-' + '1000的整数积分'}
				]
				const checkRes = graceChecker.check(this.withdrawForm, rule);
				if(checkRes){
					uni.showToast({title:"验证通过!", icon:"none"});
				}else{
					uni.showToast({ title: graceChecker.error, icon: "none" });
				}
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	.zy-page {
		width: 100%;
		padding-top: 20upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
</style>
