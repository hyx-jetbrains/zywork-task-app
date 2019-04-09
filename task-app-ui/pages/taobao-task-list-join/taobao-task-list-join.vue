<template>
	<view zy-task-list>
		<view v-if="taobaoTaskList.length <= 0" style="text-align: center;">暂无淘宝任务</view>
		<view v-else>
			<view class="zy-task-item" v-for="(item, index) in taobaoTaskList" :key="index" @click="toTaobaoTaskDetail">
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
	export default {
		data() {
			return {
				taobaoTaskList: []
			}
		},
		onLoad() {},
		onPullDownRefresh() {
			
		},
		onReachBottom() {
			
		},
		methods: {
			toTaobaoTaskDetail() {
				uni.navigateTo({
					url: '/pages/taobao-task-detail/taobao-task-detail'
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
