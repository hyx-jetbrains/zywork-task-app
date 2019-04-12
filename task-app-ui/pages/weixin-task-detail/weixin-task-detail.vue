<template>
	<view class="zy-page">
		<view class="zy-task-item">
			<view>
				<image class="headicon" :src="taskDetail.userDetailHeadicon === null ? defaultIcon : imgBaseUrl + '/' + taskDetail.userDetailHeadicon" />
			</view>
			<view class="zy-info">
				<view class="zy-text-bold">{{taskDetail.weixinTaskTitle}}</view>
				<view>
					<text>奖励：{{taskDetail.weixinTaskIntegral / 100}}</text>
					<text style="margin-left: 100upx;">人数：{{taskDetail.weixinTaskConfirmNumber}}/{{taskDetail.weixinTaskTotalNumber}}</text>
				</view>
				<view>描述：{{taskDetail.weixinTaskDescription}}</view>
				<view class="zy-small-text">{{taskDetail.weixinTaskCreateTime}}</view>
			</view>
		</view>
		<view class="zy-opts">
			<button v-if="taskFrom === 'list'" type="primary" style="width: 45%;" @click="applyTask">报名参加</button>
			<text v-if="taskFrom === 'pub' && taskDetail.weixinTaskTaskStatus === 1" class="zy-small-text zy-text-info-strong">任务已结束</text>
			<!--
			<button v-if="taskFrom === 'pub' && taskDetail.weixinTaskTaskStatus === 0" type="primary" style="width: 45%;" @click="closeTask">关闭任务</button>
			-->
			<view v-if="taskFrom === 'join' && taskApplyDetail.pubConfirmStatus === 0">
				<view class="zy-small-text zy-text-info-strong">等待任务发布方确认</view>
				<view class="zy-small-text" style="padding-left:20upx; padding-right:20upx;">如果您已同意发布方的好友添加请求，但是发布方未确认，您可在报名三天后发起申诉</view>
				<button type="primary" style="width: 50%;" @click="taskAppeal">我要申诉</button>
			</view>
			<view v-if="taskFrom === 'join' && taskApplyDetail.pubConfirmStatus === 1 && taskApplyDetail.appConfirmStatus === 0">
				<text class="zy-small-text zy-text-info-strong">任务发布方已确认</text>
				<button type="primary" style="width: 50%;" @click="confirmTask">确认已加好友</button>
			</view>
			<text v-if="taskFrom === 'join' && taskApplyDetail.appConfirmStatus === 1" class="zy-small-text zy-text-info-strong">我已确认</text>
		</view>
		<view v-if="applyUsers.length <= 0" class="zy-apply-list">暂无报名</view>
		<view v-else class="zy-apply-list">已报名列表</view>
		<view class="zy-apply-user" v-if="taskFrom === 'list'">
			<view class="zy-apply-user-item" v-for="(item, index) in applyUsers" :key="index">
				<image class="zy-headicon" :src="item.userDetailHeadicon === null ? defaultIcon : imgBaseUrl + '/' + item.userDetailHeadicon"/>
				<zywork-icon v-if="item.weixinTaskApplyPubConfirmStatus === 1" size="12" color="#FF0000" type="icongou"></zywork-icon>
				<zywork-icon v-if="item.weixinTaskApplyPubConfirmStatus === 0" size="12" color="transparent" type="icongou"></zywork-icon>
				<text class="zy-small-text">{{item.userDetailNickname}}</text>
			</view>
		</view>
		<view class="zy-apply-user" v-if="taskFrom === 'pub'">
			<view class="zy-apply-user-item" v-for="(item, index) in applyUsers" :key="index" @click="confirmApplyUser(index, item)">
				<image class="zy-headicon" :src="item.userDetailHeadicon === null ? defaultIcon : imgBaseUrl + '/' + item.userDetailHeadicon"/>
				<zywork-icon v-if="item.weixinTaskApplyPubConfirmStatus === 1" size="12" color="#FF0000" type="icongou"></zywork-icon>
				<zywork-icon v-if="item.weixinTaskApplyPubConfirmStatus === 0" size="12" color="transparent" type="icongou"></zywork-icon>
				<text class="zy-small-text">{{item.userDetailNickname}}</text>
			</view>
		</view>
		<view class="zy-apply-user" v-if="taskFrom === 'join'">
			<view class="zy-apply-user-item" v-for="(item, index) in applyUsers" :key="index">
				<image class="zy-headicon" :src="item.userDetailHeadicon === null ? defaultIcon : imgBaseUrl + '/' + item.userDetailHeadicon"/>
				<zywork-icon v-if="item.weixinTaskApplyPubConfirmStatus === 1" size="12" color="#FF0000" type="icongou"></zywork-icon>
				<zywork-icon v-if="item.weixinTaskApplyPubConfirmStatus === 0" size="12" color="transparent" type="icongou"></zywork-icon>
				<text class="zy-small-text">{{item.userDetailNickname}}</text>
			</view>
		</view>
		<view v-if="applyUsers.length > 0" style="width: 100%; text-align: center; font-size: 24upx;" @click="loadMoreUser">查看更多</view>
		<neil-modal 
			:show="showNeilModal"
			autoClose="false"
			align="center"
			title="标题" 
			content="确认已经添加此用户为好友？"
			@cancel="cancelModal"
			@confirm="confirmFriend">
		</neil-modal>
	</view>
</template>

<script>
	import zyworkIcon from '@/components/zywork-icon/zywork-icon.vue'
	import neilModal from '@/components/neil-modal/neil-modal.vue'
	
	import {DEFAULT_HEADICON, IMAGE_BASE_URL, showInfoToast} from '../../common/util.js'
	import {taskDetail, taskApplyDetail, taskApplyUser, applyTask, pubConfirmTask, appConfirmTask, closeTask, taskAppeal} from '../../common/weixin-task.js'
	export default {
		components: {
			zyworkIcon,
			neilModal
		},
		data() {
			return {
				taskDetail: {},
				taskApplyDetail: {},
				applyUsers: [],
				confirmUserIndex: null,
				confirmUserItem: {},
				showNeilModal: false,
				pager: {
					pageNo: 1,
					pageSize: 15
				},
				taskId: null,
				taskFrom: 'list',
				imgBaseUrl: IMAGE_BASE_URL,
				defaultIcon: DEFAULT_HEADICON
			}
		},
		onLoad(option) {
			this.taskId = option.id
			this.taskFrom = option.taskFrom
			taskDetail(this, this.taskId)
			if (this.taskFrom === 'join') {
				taskApplyDetail(this, this.taskId)
			}
			taskApplyUser(this, this.taskId, 'init')
		},
		onPullDownRefresh() {
			if (this.taskFrom === 'join') {
				taskApplyDetail(this, this.taskId)
			}
			this.pager.pageNo = 1
			taskApplyUser(this, this.taskId, 'pullDown')
			uni.stopPullDownRefresh()
		},
		methods: {
			loadMoreUser() {
				this.pager.pageNo = this.pager.pageNo + 1
				taskApplyUser(this, this.taskId, 'more')
			},
			applyTask() {
				applyTask(this.taskId)
			},
			confirmApplyUser(index, item) {
				if　(item.weixinTaskApplyPubConfirmStatus === 1) {
					showInfoToast('已确认添加了此用户为好友，无需重复确认')
					return
				}
				this.confirmUserIndex = index
				this.confirmUserItem = item
				this.showNeilModal = true
			},
			confirmFriend() {
				pubConfirmTask(this, this.confirmUserIndex, this.confirmUserItem.weixinTaskApplyTaskId, this.confirmUserItem.weixinTaskApplyUserId)
			},
			cancelModal() {
				this.showNeilModal = false
			},
			confirmTask() {
				appConfirmTask(this, this.taskId)
			},
			closeTask() {
				closeTask(this, this.taskId)
			},
			taskAppeal() {
				taskAppeal(this, this.taskId)
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';

	.zy-page {
		width: 100%;
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

	.zy-opts {
		width: 100%;
		text-align: center;
		margin-top: 20upx;
	}

	.zy-apply-list {
		width: 100%;
		font-size: 24upx;
		text-align: center;
		margin-top: 50upx;
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
		position: relative;
	}
	
	.zy-headicon {
		width: 100upx;
		height: 100upx;
		border-radius: 50upx;
	}

</style>
