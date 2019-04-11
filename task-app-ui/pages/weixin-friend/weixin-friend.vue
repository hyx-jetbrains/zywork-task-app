<template>
	<view>
		<view v-if="weixinFriends.length <= 0" style="width: 100%; text-align: center;">暂无微信好友</view>
		<uni-list v-else>
			<zywork-list-item v-for="(item, index) in weixinFriends" :key="index"
			:title="item.userDetailNickname" :thumb="item.userDetailHeadicon === null ? headicon : imgBaseUrl + '/' + item.userDetailHeadicon "
			@click="showWechatQrcode(item.userDetailWechatQrcode)"></zywork-list-item>
		</uni-list>
		<view class="uni-loadmore load-more" v-if="showLoadMore">{{loadMoreText}}</view>
	</view>
</template>

<script>
	import uniList from '@/components/uni-list/uni-list.vue'
	import zyworkListItem from '@/components/zywork-list-item/zywork-list-item.vue'
	
	import {IMAGE_BASE_URL, DEFAULT_HEADICON} from '../../common/util.js'
	
	import {weixinFriends} from '../../common/weixin-friend.js'
	
	export default {
		components: {
			uniList,
			zyworkListItem
		},
		data() {
			return {
				weixinFriends: [],
				pager: {
					pageNo: 1,
					pageSize: 15
				},	
				showLoadMore: false,
				loadMoreText: "加载中...",
				imgBaseUrl: IMAGE_BASE_URL,
				headicon: DEFAULT_HEADICON
			}
		},
		onLoad() {
			weixinFriends(this, 'init')
		},
		onPullDownRefresh() {
			this.pager.pageNo = 1
			weixinFriends(this, 'pullDown')
		},
		onReachBottom() {
			this.showLoadMore = true
			this.pager.pageNo = this.pager.pageNo + 1
			weixinFriends(this, 'reachBottom')
		},
		methods: {
			showWechatQrcode(qrcode) {
				uni.previewImage({
					urls: [IMAGE_BASE_URL + '/' + qrcode],
					success: () => {
						
					},
					fail: () => {
						uni.showToast({
							title: '图片有误，不能预览',
							icon: 'none'
						})
					}
				})
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
</style>
