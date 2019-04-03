<template>
	<view zy-task-list>
		<view class="zy-task-item" v-for="(item, index) in weixinTaskList" :key="index" @click="toWeixinTaskDetail">
			<image class="headicon" :src="item.user.headicon" />
			<view class="zy-info">
				<view>{{item.title}}</view>
				<view>{{item.createTime}}</view>
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
						createTime: '2019-04-01 15:30:00'

					},
					{
						user: {
							headicon: 'https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png'
						},
						title: '任务',
						createTime: '2019-04-01 15:30:00'

					}
				],
				taobaoTaskList: []
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

	.zy-task-list view:first-child {
		padding: 10upx;
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
