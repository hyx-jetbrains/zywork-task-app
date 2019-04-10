<template>
	<view class="zy-page">
		<view v-if="noticeList.length <= 0">暂无公告</view>
		<view class="zy-notice-detail" v-for="(item, index) in noticeList" :key="index" @click="toNoticeDetail(item)">
			<view class="zy-text-info-strong zy-padding">{{item.title}}</view>
			<view class="zy-padding">{{item.summary}}</view>
			<view class="zy-small-text zy-padding">{{item.createTime}}</view>
		</view>
		<view class="uni-loadmore load-more" v-if="showLoadMore">{{loadMoreText}}</view>
	</view>
</template>

<script>
	import {loadNotice} from '../../common/notice.js'
	
	export default {
		data() {
			return {
				noticeList: [],
				pager: {
					pageNo: 1,
					pageSize: 15
				},
				showLoadMore: false,
				loadMoreText: "加载中..."
			}
		},
		onLoad() {
			loadNotice(this, 'init')
		},
		onPullDownRefresh() {
			this.pager.pageNo = 1
			loadNotice(this, 'pullDown')
		},
		onReachBottom() {
			this.showLoadMore = true
			this.pager.pageNo = this.pager.pageNo + 1
			loadNotice(this, 'reachBottom')
		},
		methods: {
			toNoticeDetail(item) {
				uni.navigateTo({
					url: '/pages/notice-detail/notice-detail?id=' + item.id
				})
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
	
	.zy-notice-detail {
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
