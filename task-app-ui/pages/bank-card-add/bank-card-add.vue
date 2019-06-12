<template>
	<view class="zy-page">
		<view class="zy-form">
			<view class="uni-form-item uni-column">
				<input v-model="bankForm.accountName" class="uni-input" placeholder="请输入银行卡开户姓名" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="bankForm.bankcardNo" class="uni-input" placeholder="请输入银行卡卡号" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="bankForm.bankcardNo1" class="uni-input" placeholder="请再次输入银行卡卡号" />
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="addBank">添加</button>
			</view>
		</view>
	</view>
</template>

<script>
	import {bind} from '../../common/bankcard.js'
	export default {
		data() {
			return {
				bankForm: {
					accountName: null,
					bankcardNo: null,
					bankcardNo1: null
				}
			}
		},
		onLoad() {},
		methods: {
			addBank() {
				bind(this)
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
