<template>
	<view>
		<view class="zy-task-opt-container">
			<view class="zy-task-opt">
				<view :class="[opt === 'publish' ? 'zy-select' : '']" @click="chooseOpt('publish')">我发布的</view>
				<view :class="[opt === 'join' ? 'zy-select' : '']" @click="chooseOpt('join')">我参与的</view>
			</view>
		</view>
		<uni-list v-if="opt === 'publish'">
			<zywork-list-item title="微信任务" note="我发布的微信任务" show-extra-icon="true" :extra-icon="{color: '#1EC623',size: '22',type: 'iconweixin-copy'}"
			 @click="toWeixinTaskPublish"></zywork-list-item>
			<zywork-list-item title="淘宝任务" note="我发布的淘宝任务" show-extra-icon="true" :extra-icon="{color: '#FF9800',size: '22',type: 'icontaobao'}"
			 @click="toTaobaoTaskPublish"></zywork-list-item>
		</uni-list>
		<uni-list v-else>
			<zywork-list-item title="微信任务" note="我参与的微信任务" show-extra-icon="true" :extra-icon="{color: '#1EC623',size: '22',type: 'iconweixin-copy'}"
			 @click="toWeixinTaskJoin"></zywork-list-item>
			<zywork-list-item title="淘宝任务" note="我参与的淘宝任务" show-extra-icon="true" :extra-icon="{color: '#FF9800',size: '22',type: 'icontaobao'}"
			 @click="toTaobaoTaskJoin"></zywork-list-item>
		</uni-list>
	</view>
</template>

<script>
	import {isUserTokenExist, toLoginPage} from '../../common/util.js'
	import uniList from '@/components/uni-list/uni-list.vue'
	import zyworkListItem from '@/components/zywork-list-item/zywork-list-item.vue'
	export default {
		components: {
			uniList,
			zyworkListItem
		},
		data() {
			return {
				opt: 'publish'
			}
		},
		onLoad() {},
		onShow() {},
		methods: {
			chooseOpt(opt) {
				this.opt = opt
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
		display: flex;
		flex-direction: column;
		align-items: center;
		margin-top: 30upx;
		margin-bottom: 30upx;
	}

	.zy-task-opt {
		width: 80%;
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-content: space-between;
	}

	.zy-task-opt view {
		border: 1px solid $primary-color;
		border-radius: 10upx;
		padding: 5px;
		text-align: center;
		flex-grow: 1;
		color: $primary-color;
		font-size: 24upx;
	}

	.zy-task-opt .zy-select {
		background-color: $primary-color;
		color: #FFFFFF;
	}
</style>
