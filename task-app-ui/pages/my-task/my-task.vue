<template>
	<view>
		<view class="zy-task-opt-container">
			<uni-segmented-control :current="current" :values="items" v-on:clickItem="onClickItem" styleType="button" activeColor="#0A98D5"></uni-segmented-control>
		</view>
		<view class="content">
			<uni-list v-if="current === 0">
				<zywork-list-item title="微信任务" note="我发布的微信任务" show-extra-icon="true" :extra-icon="{color: '#1EC623',size: '22',type: 'iconweixin-copy'}"
				 @click="toWeixinTaskPublish"></zywork-list-item>
				<zywork-list-item title="淘宝任务" note="我发布的淘宝任务" show-extra-icon="true" :extra-icon="{color: '#FF9800',size: '22',type: 'icontaobao'}"
				 @click="toTaobaoTaskPublish"></zywork-list-item>
			</uni-list>
			<uni-list v-if="current === 1">
				<zywork-list-item title="微信任务" note="我参与的微信任务" show-extra-icon="true" :extra-icon="{color: '#1EC623',size: '22',type: 'iconweixin-copy'}"
				 @click="toWeixinTaskJoin"></zywork-list-item>
				<zywork-list-item title="淘宝任务" note="我参与的淘宝任务" show-extra-icon="true" :extra-icon="{color: '#FF9800',size: '22',type: 'icontaobao'}"
				 @click="toTaobaoTaskJoin"></zywork-list-item>
			</uni-list>
		</view>
	</view>
</template>

<script>
	import {
		isUserTokenExist,
		toLoginPage
	} from '../../common/util.js'
	import uniList from '@/components/uni-list/uni-list.vue'
	import zyworkListItem from '@/components/zywork-list-item/zywork-list-item.vue'
	import uniSegmentedControl from '@/components/uni-segmented-control/uni-segmented-control.vue'

	export default {
		components: {
			uniSegmentedControl,
			uniList,
			zyworkListItem
		},
		data() {
			return {
				current: 0,
				items: ['我发布的', '我参与的']
			}
		},
		onLoad() {},
		onShow() {},
		methods: {
			onClickItem(index) {
				if (this.current !== index) {
					this.current = index;
				}
			},
			toWeixinTaskPublish() {
				if (isUserTokenExist()) {
					uni.navigateTo({
						url: '/pages/weixin-task-list-publish/weixin-task-list-publish'
					})
				} else {
					toLoginPage()
				}
			},
			toWeixinTaskJoin() {
				if (isUserTokenExist()) {
					uni.navigateTo({
						url: '/pages/weixin-task-list-join/weixin-task-list-join'
					})
				} else {
					toLoginPage()
				}
			},
			toTaobaoTaskPublish() {
				if (isUserTokenExist()) {
					uni.navigateTo({
						url: '/pages/taobao-task-list-publish/taobao-task-list-publish'
					})
				} else {
					toLoginPage()
				}
			},
			toTaobaoTaskJoin() {
				if (isUserTokenExist()) {
					uni.navigateTo({
						url: '/pages/taobao-task-list-join/taobao-task-list-join'
					})
				} else {
					toLoginPage()
				}
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	
	.zy-task-opt-container {
		margin-top: 20upx;
		margin-bottom: 20upx;
	}
</style>
