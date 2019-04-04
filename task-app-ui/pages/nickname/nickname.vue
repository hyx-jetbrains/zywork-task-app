<template>
	<view class="zy-page">
		<view class="zy-form">
			<view class="uni-form-item uni-column">
				<input class="uni-input" placeholder="请输入昵称" />
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="changeNickname">修改昵称</button>
			</view>
		</view>
	</view>
</template>

<script>
	import {saveUserToken} from '../../common/util.js'
	export default {
		data() {
			return {}
		},
		onLoad() {},
		methods: {
			changeNickname() {
				
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';

	.zy-page {
		width: 100%;
		padding-top: 20upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
</style>
