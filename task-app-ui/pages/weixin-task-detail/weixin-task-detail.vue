<template>
	<view class="zy-page">
		<view class="zy-task-item">
			<view>
				<image class="headicon" :src="taskDetail.userDetailHeadicon === null ? defaultIcon : imgBaseUrl + '/' + taskDetail.userDetailHeadicon" />
			</view>
			<view class="zy-info">
				<view class="zy-text-bold">{{taskDetail.weixinTaskTitle}}</view>
				<view>
					<text>奖励：{{taskDetail.weixinTaskIntegral}}</text>
					<text style="margin-left: 100upx;">人数：{{taskDetail.weixinTaskConfirmNumber}}/{{taskDetail.weixinTaskTotalNumber}}</text>
				</view>
				<view>描述：{{taskDetail.weixinTaskDescription}}</view>
				<view class="zy-small-text">{{taskDetail.weixinTaskCreateTime}}</view>
			</view>
		</view>
		<view class="zy-apply">
			<button type="primary" style="width: 50%;">报名参加</button>
		</view>
		<view v-if="applyUsers.length <= 0" class="zy-apply-list">暂无报名</view>
		<view v-else class="zy-apply-list">已报名列表</view>
		<view class="zy-apply-user">
			<view class="zy-apply-user-item" v-for="(item, index) in applyUsers" :key="index">
				<image class="zy-headicon" :src="item.userDetailHeadicon === null ? defaultIcon : imgBaseUrl + '/' + item.userDetailHeadicon"/>
				<text class="zy-small-text">{{item.userDetailNickname}}</text>
			</view>
		</view>
		<view v-if="applyUsers.length > 0" style="width: 100%; text-align: center; font-size: 24upx;" @click="loadMoreUser">查看更多</view>
	</view>
</template>

<script>
	import {DEFAULT_HEADICON, IMAGE_BASE_URL} from '../../common/util.js'
	import {taskDetail, taskApplyUser} from '../../common/weixin-task.js'
	export default {
		data() {
			return {
				taskDetail: {},
				applyUsers: [],
				pager: {
					pageNo: 1,
					pageSize: 15
				},
				taskId: null,
				imgBaseUrl: IMAGE_BASE_URL,
				defaultIcon: DEFAULT_HEADICON
			}
		},
		onLoad(option) {
			this.taskId = option.id
			taskDetail(this,this.taskId)
			taskApplyUser(this, this.taskId)
		},
		methods: {
			loadMoreUser() {
				this.pager.pageNo = this.pager.pageNo + 1
				taskApplyUser(this, this.taskId)
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';

	.zy-page {
		width: 100%;
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

	.zy-apply {
		width: 100%;
		text-align: center;
		margin-top: 20upx;
	}

	.zy-apply-list {
		width: 100%;
		font-size: 24upx;
		text-align: center;
		margin-top: 20upx;
	}
	
	.zy-apply-user {
		margin-top: 20upx;
	}
	
	.zy-apply-user-item {
		display: inline-flex;
		flex-direction: column;
		align-items: center;
		width: 33%;
		margin-bottom: 20upx;
	}
	
	.zy-headicon {
		width: 100upx;
		height: 100upx;
		border-radius: 60upx;
	}
	
</style>
