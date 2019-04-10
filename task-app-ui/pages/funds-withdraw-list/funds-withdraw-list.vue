<template>
	<view class="zy-page">
		<view class="zy-withdraw-detail" v-for="(item, index) in withdrawList" :key="index">
			<view class="zy-text-info-strong zy-padding">{{item.transactionNo}}</view>
			<view class="zy-text-bold zy-padding">{{item.amount}}</view>
			<view class="zy-padding" v-if="item.withdrawDescription !== null">{{item.withdrawDescription}}</view>
			<view class="zy-status-time zy-padding">
				<text v-if="item.withdrawStatus === 0">审核中</text>
				<text v-if="item.withdrawStatus === 1">已通过</text>
				<text v-if="item.withdrawStatus === 2">未通过</text>
				<text v-if="item.withdrawStatus === 3">已取消</text>
				<text v-if="item.withdrawStatus === 4">成功</text>
				<text v-if="item.withdrawStatus === 5">失败</text>
				<text class="zy-small-text" v-if="item.withdrawStatus !== 0 && item.checkedTime !== null">审核时间：{{item.checkedTime}}</text>
				<text class="zy-small-text zy-cancel" v-if="item.withdrawStatus === 0" @click="cancelSubmit(item)">取消申请</text>
			</view>
			<view v-if="item.completeTime !== null" class="zy-small-text zy-padding">完成时间：{{item.completeTime}}</view>
		</view>
		<view class="uni-loadmore load-more" v-if="showLoadMore">{{loadMoreText}}</view>
	</view>
</template>

<script>
	import {initWithdraw, loadWithdraw, cancelWithdraw} from '../../common/funds.js'
	
	export default {
		data() {
			return {
				withdrawList: [],
				pager: {
					pageNo: 1,
					pageSize: 20
				},
				showLoadMore: false,
				loadMoreText: "加载中..."
			}
		},
		onLoad() {
			initWithdraw(this)
		},
		onPullDownRefresh() {
			this.pager.pageNo = 1
			loadWithdraw(this, 'pullDown')
		},
		onReachBottom() {
			this.showLoadMore = true
			this.pager.pageNo = this.pager.pageNo + 1
			loadWithdraw(this, 'reachBottom')
		},
		methods: {
			cancelSubmit(item) {
				cancelWithdraw(this, item)
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	.zy-page {
		width: 100%;
		padding-top: 10upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.zy-withdraw-detail {
		width: 100%;
		background-color: #FFFFFF;
		margin-bottom: 10upx;
	}
	
	.zy-small-text {
		text-align: right;
	}
	
	.zy-status-time {
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-items: space-between;
	}
	
	.zy-status-time text {
		flex-grow: 1;
	}
	
	.zy-padding {
		padding-left: 10upx;
		padding-right: 10upx;
	}
	
	.zy-cancel {
		color: #FF0000;
	}
</style>
