<template>
	<view zy-task-list>
		<view v-if="weixinTaskList.length <= 0" style="text-align: center;">暂无淘宝任务</view>
		<view v-else>
			<view class="zy-task-item" v-for="(item, index) in weixinTaskList" :key="index" @click="toWeixinTaskDetail">
				<image class="headicon" :src="item.user.headicon" />
				<view class="zy-info">
					<view class="zy-text-bold">{{item.title}}</view>
					<view>奖励：{{item.integral}}</view>
					<view>人数：{{item.joinTotal}}/{{item.total}}</view>
					<view class="zy-time-text">{{item.createTime}}</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				weixinTaskList: [{
						user: {
							headicon: 'https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png'
						},
						title: '任务',
						integral: 10,
						total: 10,
						joinTotal: 8,
						createTime: '2019-04-01 15:30:00'

					},
					{
						user: {
							headicon: 'https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png'
						},
						title: '任务',
						integral: 10,
						total: 10,
						joinTotal: 8,
						createTime: '2019-04-01 15:30:00'

					}
				]
			}
		},
		onLoad() {},
		onPullDownRefresh() {
			
		},
		onReachBottom() {
			
		},
		methods: {
			toWeixinTaskDetail() {
				uni.navigateTo({
					url: '/pages/weixin-task-detail-join/weixin-task-detail-join'
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
