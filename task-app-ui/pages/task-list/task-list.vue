<template>
	<view>
		<view class="swiper">
			<swiper class="swiper" :indicator-dots="indicatorDots" :autoplay="autoplay" :interval="interval" :duration="duration">
				<swiper-item v-for="(item, index) in swiperItems" :key="index">
					<view class="swiper-item" @click="showSwiperDetail(item.contentUrl)">
						<image :src="item.imgUrl" />
					</view>
				</swiper-item>
			</swiper>
		</view>
		
		<view style="margin-top: 10upx;">
			<uni-notice-bar @getmore="toNoticeList" :show-get-more="true" more-text="查看更多" show-icon="true" single="true" text="最新公告最新公告最新公告最新公告最新公告最新公告最新公告最新公告最新公告"></uni-notice-bar>
		</view>

		<view class="zy-task-list">
			<view @click="toWeixinTasks">微信任务-<text class="zy-text-info-strong">更多</text></view>
			<view v-if="weixinTaskList.length > 0">
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
			<view v-else class="zy-no-task">暂无微信任务</view>
		</view>
		<view class="zy-task-list">
			<view @click="toTaobaoTasks">淘宝任务-<text class="zy-text-info-strong">更多</text></view>
			<view v-if="taobaoTaskList.length > 0">
				<view class="zy-task-item" v-for="(item, index) in taobaoTaskList" :key="index" @click="toTaobaoTaskDetail">
					<image class="headicon" :src="item.user.headicon" />
					<view class="zy-info">
						<view class="zy-text-bold">{{item.title}}</view>
						<view>奖励：{{item.integral}}</view>
						<view>人数：{{item.joinTotal}}/{{item.total}}</view>
						<view class="zy-time-text">{{item.createTime}}</view>
					</view>
				</view>
			</view>
			<view v-else class="zy-no-task">暂无淘宝任务</view>
		</view>
	</view>
</template>

<script>
	import uniNoticeBar from '@/components/uni-notice-bar/uni-notice-bar.vue'
	
	export default {
		components: {
			uniNoticeBar
		},
		data() {
			return {
				indicatorDots: true,
				autoplay: true,
				interval: 5000,
				duration: 500,
				swiperItems: [{
						imgUrl: "https://img-cdn-qiniu.dcloud.net.cn/uniapp/doc/img/ad.png",
						contentUrl: "http://39.108.116.103:8080/"
					},
					{
						imgUrl: "http://img.cdn.aliyun.dcloud.net.cn/ask/img/ke.qq.com.uniapp@2x.png",
						contentUrl: "http://39.108.116.103:8080/"
					}
				],
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
				],
				taobaoTaskList: []
			}
		},
		onLoad() {},
		methods: {
			showSwiperDetail(contentUrl) {
				console.log(contentUrl)
			},
			toNoticeList() {
				uni.navigateTo({
					url: '/pages/notice-list/notice-list'
				})
			},
			toWeixinTasks() {
				if (this.weixinTaskList.length <= 0) {
					uni.showToast({
						title: '暂无微信任务',
						duration: 2000
					})
					return
				}
				uni.navigateTo({
					url: '/pages/weixin-task-list/weixin-task-list'
				})
			},
			toTaobaoTasks() {
				uni.navigateTo({
					url: '/pages/taobao-task-list/taobao-task-list'
				})
			},
			toWeixinTaskDetail() {
				uni.navigateTo({
					url: '/pages/weixin-task-detail/weixin-task-detail'
				})
			},
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
	@import '../../common/iconfont.css';

	.swiper {
		width: 100%;
		height: 300upx;
	}

	.swiper-item {
		display: block;
		height: 300upx;
		line-height: 300px;
		text-align: center;
	}
	
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
	
	.zy-no-task {
		width: 100%;
		font-size: 24upx;
		text-align: center;
	}
</style>
