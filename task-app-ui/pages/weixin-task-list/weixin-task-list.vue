<template>
	<view zy-task-list>
		<view v-if="weixinTaskList.length <= 0" style="text-align: center;">暂无微信任务</view>
		<view v-else>
			<view class="zy-task-item" v-for="(item, index) in weixinTaskList" :key="index" @click="toWeixinTaskDetail">
				<image class="headicon" :src="imgBaseUrl + '/' +item.userDetailHeadicon" />
				<view class="zy-info">
					<view class="zy-text-bold">{{item.weixinTaskTitle}}</view>
					<view>
						<text>奖励：{{item.weixinTaskIntegral}}</text>
						<text style="margin-left: 100upx;">人数：{{item.weixinTaskConfirmNumber}}/{{item.weixinTaskTotalNumber}}</text>
					</view>
					<view class="zy-small-text">{{item.weixinTaskCreateTime}}</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {IMAGE_BASE_URL} from '../../common/util.js'
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
			toWeixinTaskDetail() {
				uni.navigateTo({
					url: '/pages/weixin-task-detail/weixin-task-detail'
				})
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
