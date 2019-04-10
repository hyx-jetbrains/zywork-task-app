<template>
	<view class="zy-page">
		<view class="zy-message-detail" v-for="(item, index) in messageList" :key="index">
			<view class="zy-text-info-strong zy-padding">{{item.messageTitle}}</view>
			<view class="zy-padding">{{item.messageContent}}</view>
			<view class="zy-small-text zy-padding">{{item.userMessageCreateTime}}</view>
		</view>
		<view class="uni-loadmore load-more" v-if="showLoadMore">{{loadMoreText}}</view>
	</view>
</template>

<script>
	import {initMessage, loadMessage} from '../../common/message.js'
	export default {
		data() {
			return {
				messageList: [],
				pager: {
					pageNo: 1,
					pageSize: 15
				},
				showLoadMore: false,
				loadMoreText: "加载中..."
			}
		},
		onLoad() {
			initMessage(this)
		},
		onPullDownRefresh() {
			this.pager.pageNo = 1
			loadMessage(this, 'pullDown')
		},
		onReachBottom() {
			this.showLoadMore = true
			this.pager.pageNo = this.pager.pageNo + 1
			loadMessage(this, 'reachBottom')
		},
		methods: {
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
	
	.zy-message-detail {
		width: 100%;
		background-color: #FFFFFF;
		margin-bottom: 10upx;
	}
	
	.zy-small-text {
		text-align: right;
	}

	.zy-padding {
		padding-left: 10upx;
		padding-right: 10upx;
	}
</style>
