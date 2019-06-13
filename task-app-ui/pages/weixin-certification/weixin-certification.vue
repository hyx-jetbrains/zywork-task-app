<template>
	<view class="zy-page">
		<view v-if="weixinCer.checkStatus === 0" style="100%;">
			<view>请回答以下问题辅助微信认证</view>
			<view>您的微信至今是否辅助解封过？</view>
			<view>
				<radio-group @change="radioOneChange">
					<label class="radio"><radio value="oneNo"/>否</label>
					<label class="radio"><radio value="oneYes"/>是</label>
				</radio-group>
			</view>
			<view>您的微信是否满六个月？</view>
			<view>
				<radio-group @change="radioTwoChange">
					<label class="radio"><radio value="twoNo"/>否</label>
					<label class="radio"><radio value="twoYes"/>是</label>
				</radio-group>
			</view>
			<view>您的微信是否绑定手机号和银行卡？</view>
			<view>
				<radio-group @change="radioThreeChange">
					<label class="radio"><radio value="threeNo"/>否</label>
					<label class="radio"><radio value="threeYes"/>是</label>
				</radio-group>
			</view>
			<button type="primary" style="width: 80%; margin-top: 10upx;" @click="updateCerCheckStatus">提交</button>
		</view>
		<view v-if="weixinCer.checkStatus === 3">答题未通过，微信认证结束</view>
		<view v-if="weixinCer.checkStatus === 4 || weixinCer.checkStatus === 1 || weixinCer.checkStatus === 2">
			<view v-if="weixinCer.url === null">答题通过但未上传微信认证截图</view>
			<image v-else :src="weixinCer.url"/>
			<view v-if="weixinCer.url !== null && weixinCer.checkStatus === 4" style="font-size: 28upx;">等待审核</view>
			<view v-if="weixinCer.url !== null && weixinCer.checkStatus === 1" style="font-size: 28upx;">已审核通过</view>
			<view v-if="weixinCer.url !== null && weixinCer.checkStatus === 2" style="font-size: 28upx;">未审核通过</view>
			<view class="zy-text-info-strong" @click="chooseImage">上传我的微信银行卡截图</view>
			<view class="zy-text-info-strong" @click="previewImage">查看截图示例</view>
		</view>
	</view>
</template>

<script>
	import {IMAGE_BASE_URL} from '../../common/util.js'
	import {weixinCer, uploadWeixinCer, updateWeixinCerStatus} from '../../common/weixin-cer.js'
	export default {
		data() {
			return {
				weixinCer: {
					id: null,
					url: null,
					checkStatus: 0
				},
				weixinCerExp: '/upload/cer.jpg',
				question: {
					one: null,
					two: null,
					three: null
				}
			}
		},
		onLoad() {
			this.loadWeixinCer()
		},
		onShow() {
			
		},
		methods: {
			loadWeixinCer() {
				weixinCer(this)
			},
			updateCerCheckStatus() {
				updateWeixinCerStatus(this)
			},
			chooseImage() {
				uploadWeixinCer(this)
			},
			previewImage() {
				uni.previewImage({
					urls: [IMAGE_BASE_URL + this.weixinCerExp]
				})
			},
			radioOneChange(evt) {
				this.question.one = evt.target.value
			},
			radioTwoChange(evt) {
				this.question.two = evt.target.value
			},
			radioThreeChange(evt) {
				this.question.three = evt.target.value
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	
	.zy-page {
		padding-top: 20upx;
		padding-left: 10upx;
		padding-rihgt: 10upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.zy-page image {
		margin-bottom: 50upx;
	}
	
	view {
		text-align: center;
	}
</style>
