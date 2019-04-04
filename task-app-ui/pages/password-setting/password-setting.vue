<template>
	<view>
		<view class="zy-task-opt-container">
			<uni-segmented-control :current="current" :values="items" v-on:clickItem="onClickItem" styleType="button" activeColor="#0A98D5"></uni-segmented-control>
		</view>
		<view class="zy-page">
			<view class="zy-form" v-if="current === 0">
				<view class="uni-form-item uni-column">
					<input class="uni-input" password placeholder="请输入原密码" />
				</view>
				<view class="uni-form-item uni-column">
					<input class="uni-input" password placeholder="请输入新密码" />
				</view>
				<view class="uni-form-item uni-column">
					<input class="uni-input" password placeholder="请再次输入新密码" />
				</view>
				<view class="uni-form-item">
					<button type="primary" style="width: 100%;" @click="changeNickname">修改登录密码</button>
				</view>
			</view>
			<view class="zy-form" v-if="current === 1">
				<view class="uni-form-item uni-column">
					<input class="uni-input" password placeholder="请输入原密码" />
				</view>
				<view class="uni-form-item uni-column">
					<input class="uni-input" password placeholder="请输入新密码" />
				</view>
				<view class="uni-form-item uni-column">
					<input class="uni-input" password placeholder="请再次输入新密码" />
				</view>
				<view class="uni-form-item">
					<button type="primary" style="width: 100%;" @click="changeNickname">修改支付密码</button>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import uniSegmentedControl from '@/components/uni-segmented-control/uni-segmented-control.vue'

	export default {
		components: {
			uniSegmentedControl
		},
		data() {
			return {
				current: 0,
				items: ['登录密码', '支付密码']
			}
		},
		onLoad() {},
		onShow() {},
		methods: {
			onClickItem(index) {
				if (this.current !== index) {
					this.current = index;
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
	
	.zy-page {
		width: 100%;
		padding-top: 20upx;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
</style>
