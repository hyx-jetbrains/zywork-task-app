<template>
	<view zy-task-list>
		<view v-if="weixinTaskList.length <= 0" style="text-align: center;">暂无微信任务</view>
		<view v-else>
			<view class="zy-task-item" v-for="(item, index) in weixinTaskList" :key="index" @click="toWeixinTaskDetail(item)">
				<view>
					<image class="headicon" :src="item.userDetailHeadicon!=null?imgBaseUrl + '/' +item.userDetailHeadicon:headicon" />
				</view>
				<view class="zy-info">
					<view class="zy-text-bold">{{item.weixinTaskTitle}}</view>
					<view>
						<text>奖励：{{item.weixinTaskIntegral / 100}}</text>
						<text style="margin-left: 100upx;">人数：{{item.weixinTaskConfirmNumber}}/{{item.weixinTaskTotalNumber}}</text>
					</view>
					<view class="zy-small-text">{{item.weixinTaskCreateTime}}</view>
				</view>
			</view>
		</view>
		<view class="uni-loadmore load-more" v-if="showLoadMore">{{loadMoreText}}</view>
	</view>
</template>

<script>
	import {IMAGE_BASE_URL,DEFAULT_HEADICON, isUserTokenExist, toLoginPage} from '../../common/util.js'
	import {taskListAll} from '../../common/weixin-task.js'
	
	export default {
		data() {
			return {
				weixinTaskList: [],
				pager: {
					pageNo: 1,
					pageSize: 15
				},
				imgBaseUrl: IMAGE_BASE_URL,
				headicon: DEFAULT_HEADICON,
				showLoadMore: false,
				loadMoreText: "加载中..."
			}
		},
		onLoad() {
			taskListAll(this,'')
		},
		onPullDownRefresh() {
			this.pager.pageNo = 1
			taskListAll(this, 'pullDown')
		},
		onReachBottom() {
			this.showLoadMore = true
			this.pager.pageNo = this.pager.pageNo + 1
			taskListAll(this, 'reachBottom')
		},
		methods: {
			toWeixinTaskDetail(item) {
				if (isUserTokenExist()) {
					uni.navigateTo({
						url: '/pages/weixin-task-detail/weixin-task-detail?id=' + item.weixinTaskId + '&taskFrom=list'
					})
				} else {
					toLoginPage()
				}
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';

	.zy-task-list {
		margin-top: 10upx;
	}

	.zy-task-item {
		padding: 10upx;
		background-color: $primary-backcolor;
		margin-top: 10upx;
		display: flex;
		flex-direction: row;
	}

	.zy-task-item .headicon {
		width: 60px;
		height: 60px;
		border-radius: 60px;
		margin-right: 10upx;
	}

	.zy-task-item .zy-info {
		flex-grow: 1;
	}
</style>
