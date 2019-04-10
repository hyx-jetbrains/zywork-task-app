<template>
	<view zy-task-list>
		<view v-if="weixinTaskList.length <= 0" style="text-align: center;">暂无微信任务</view>
		<view v-else>
			<view class="zy-task-item" v-for="(item, index) in weixinTaskList" :key="index" @click="toWeixinTaskDetail">
				<image class="headicon" :src="item.user.headicon" />
				<view class="zy-info">
					<view class="zy-text-bold">{{item.title}}</view>
					<view>奖励：{{item.integral}}</view>
					<view>人数：{{item.joinTotal}}/{{item.total}}</view>
					<view class="zy-small-text">{{item.createTime}}</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {taskList} from '../../common/weixin-task.js'
	
	export default {
		data() {
			return {
				weixinTaskList: [],
				pager: {
					pageNo: 1,
					pageSize: 15
				},
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
