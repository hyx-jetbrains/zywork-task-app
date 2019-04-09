<template>
	<view class="zy-page">
		<view class="zy-form">
			<view class="uni-form-item uni-column">
				<view class="title">可提现积分：{{integral}}</view>
				<input v-model="withdrawForm.amount" class="uni-input" type="number" placeholder="请输入提现积分" />
			</view>
			<view class="uni-form-item uni-column">
				<view class="title zy-small-text">可在密码设置中修改支付密码</view>
				<input v-model="withdrawForm.payPassword" password class="uni-input" placeholder="请输入支付密码" />
			</view>
			<view class="uni-form-item uni-column" v-if="banks.length > 0">
				<view class="title">选择提现银行卡</view>
				<view class="uni-list">
					<radio-group @change="selectBank">
						<label class="uni-list-cell uni-list-cell-pd" v-for="(item, index) in banks" :key="item.id">
							<view>
								<radio :value="item.id" :checked="index === current" color="#0A98D5" />
							</view>
							<view class="zy-bank-info">
								<view>{{item.bankName}}</view>
								<view class="zy-small-text">{{item.bankcardNo}}</view>
							</view>
						</label>
					</radio-group>
				</view>
			</view>
			<view class="uni-form-item uni-column" v-else>
				<view class="title zy-small-text zy-text-info-strong">暂无银行卡，可在我的银行卡中添加银行卡</view>
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="submitWithdraw">申请提现</button>
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="toWithdraw">提现记录</button>
			</view>
		</view>
	</view>
</template>

<script>
	import {submitWithdraw} from '../../common/funds.js'
	import {banks} from '../../common/bankcard.js'
	
	export default {
		data() {
			return {
				integral: 0,
				withdrawForm: {
					amount: null,
					bankcardId: null,
					payPassword: null,
				},
				banks: [],
				currentBank: 0
			}
		},
		onLoad(option) {
			this.integral = option.integral
			banks(this)
		},
		methods: {
			selectBank: function(evt) {
				for (let i = 0; i < this.banks.length; i++) {
					if (this.banks[i].id === parseInt(evt.target.value)) {
						this.withdrawForm.bankcardId = this.banks[i].id
						this.current = i
						break
					}
				}
			},
			submitWithdraw() {
				submitWithdraw(this)
			},
			toWithdraw() {
				uni.navigateTo({
					url: '/pages/funds-withdraw-list/funds-withdraw-list'
				})
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
	
	.uni-list-cell {
		justify-content: flex-start
	}
	
	.zy-bank-info {
		display: flex;
		flex-direction: column;
		align-items: flex-start;
	}
</style>
