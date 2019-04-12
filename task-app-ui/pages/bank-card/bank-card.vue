<template>
	<view class="zy-page">
		<view class="zy-bank" v-for="(item, index) in banks" :key="index">
			<view class="zy-bank-info">
				<view>{{item.bankName}}</view>
				<view>{{item.bankcardNo}}</view>
			</view>
			<view class="zy-remove-icon" @click="removeBankcard(index, item.bankcardNo)">
				<zywork-icon size="28" color="#FFFFFF" type="iconshanchu"></zywork-icon>
			</view>
		</view>
		<button type="primary" style="width: 100%;" @click="toAddBankcard">添加银行卡</button>
		<neil-modal 
			:show="showNeilModal"
			autoClose="false"
			align="center"
			title="标题" 
			content="确认删除银行卡？"
			@cancel="cancelUnbind"
			@confirm="unbind">
		</neil-modal>
	</view>
</template>

<script>
	import zyworkIcon from '@/components/zywork-icon/zywork-icon.vue'
	import neilModal from '@/components/neil-modal/neil-modal.vue'
	
	import {banks, unbind, bind} from '../../common/bankcard.js'
	export default {
		components: {
			zyworkIcon,
			neilModal
		},
		data() {
			return {
				banks: [],
				showNeilModal: false,
				removeBank: {
					cardIndex: null,
					bankcardNo: null
				}
			}
		},
		onLoad() {
			banks(this)
		},
		methods: {
			removeBankcard(cardIndex, bankcardNo) {
				this.removeBank.cardIndex = cardIndex
				this.removeBank.bankcardNo = bankcardNo
				this.showNeilModal = true
			},
			unbind() {
				unbind(this, this.removeBank.cardIndex, this.removeBank.bankcardNo)
				this.showNeilModal = false
			},
			cancelUnbind() {
				this.showNeilModal = false
			},
			toAddBankcard() {
				const self = this
				this.$event.$on('addBank', function(data) {
					banks(self)
					self.$event.$off('addBank')
				});
				uni.navigateTo({
					url: '/pages/bank-card-add/bank-card-add'
				})
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	
	.zy-page {
		padding: 10upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.zy-bank {
		width: 100%;
		margin-bottom: 10upx;
		background-color: #FF9699;
		border-radius: 10upx;
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-content: space-between;
	}
	
	.zy-bank-info view {
		padding-top: 10upx;
		padding-bottom: 10upx;
		padding-left: 20upx;
		padding-right: 20upx;
		color: #FFFFFF;
	}
	
	.zy-remove-icon {
		padding-right: 20upx;
	}
</style>
