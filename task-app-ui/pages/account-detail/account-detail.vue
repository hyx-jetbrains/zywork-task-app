<template>
	<view class="zy-page">
		<view class="zy-data">
			<view class="zy-data-total">
				<view>总积分</view>
				<view>{{userWallet.integral}}</view>
			</view>
			<view class="zy-data-usable">
				<view>可用积分</view>
				<view>{{userWallet.usableIntegral}}</view>
			</view>
			<view class="zy-data-frezee">
				<view>冻结积分</view>
				<view>{{userWallet.frezeeIntegral}}</view>
			</view>
		</view>
		<view class="zy-account-detail" v-for="(item, index) in accountDetails" :key="index">
			<view class="zy-text-info-strong zy-padding">{{item.transactionNo}}</view>
			<view class="zy-text-bold zy-padding">{{item.amount}}</view>
			<view class="zy-type-time zy-padding">
				<text>{{item.type === 0 ? '收入' : '支出'}}/{{item.subType}}</text>
				<text class="zy-small-text">{{item.createTime}}</text>
			</view>
		</view>
		<view class="uni-loadmore load-more" v-if="showLoadMore">{{loadMoreText}}</view>
	</view>
</template>

<script>
	import {userWallet, initAccountDetail, loadAccountDetail} from '../../common/funds.js'
	export default {
		data() {
			return {
				userWallet: {
					integral: 0,
					usableIntegral: 0,
					frezeeIntegral: 0
				},
				accountDetails: [],
				pager: {
					pageNo: 1,
					pageSize: 20
				},
				showLoadMore: false,
				loadMoreText: "加载中..."
			}
		},
		onLoad(option) {
			this.userWallet.integral = option.integral
			this.userWallet.usableIntegral = option.usableIntegral
			this.userWallet.frezeeIntegral = option.frezeeIntegral
			initAccountDetail(this)
		},
		onPullDownRefresh() {
			this.pager.pageNo = 1
			userWallet(this)
			loadAccountDetail(this, 'pullDown')
		},
		onReachBottom() {
			this.showLoadMore = true
			this.pager.pageNo = this.pager.pageNo + 1
			loadAccountDetail(this, 'reachBottom')
		},
		methods: {
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	.zy-page {
		width: 100%;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.zy-data {
		width: 100%;
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-content: space-around;
		text-align: center;
		background-color: $primary-color;
	}
	
	.zy-data view {
		flex-grow: 1;
		color: #FFFFFF;
	}
	
	.zy-account-detail {
		width: 100%;
		background-color: #FFFFFF;
		margin-bottom: 10upx;
	}
	
	.zy-type-time {
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-items: space-between;
	}
	
	.zy-type-time text {
		flex-grow: 1;
	}
	
	.zy-small-text {
		text-align: right;
	}
	
	.zy-padding {
		padding-left: 10upx;
		padding-right: 10upx;
	}
</style>
