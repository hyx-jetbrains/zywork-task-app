<template>
	<view class="zy-task-page">
		<view class="zy-task-opt-container">
			<view class="zy-task-opt">
				<view :class="[task === 'weixin' ? 'zy-select' : '']" @click="chooseOpt('weixin')">
					<i class="iconfont iconweixin-copy"></i>
					微信任务
				</view>
				<view :class="[task === 'taobao' ? 'zy-select' : '']" @click="chooseOpt('taobao')">
					<i class="iconfont icontaobao"></i>
					淘宝任务
				</view>
			</view>
		</view>
		<view class="zy-form" v-if="task === 'weixin'">
			<view class="uni-form-item uni-column">
				<input class="uni-input" placeholder="请输入任务标题" />
			</view>
			<view class="uni-form-item uni-column">
				<input class="uni-input" type="number" placeholder="请输入加友总数" />
			</view>
			<view class="uni-form-item uni-column">
				<input class="uni-input" type="number" placeholder="请输入单人奖励积分" />
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="publishWeixinTask">发布微信任务</button>
			</view>
		</view>
		<view class="zy-form" v-if="task === 'taobao'">
			<view class="uni-form-item uni-column">
				<input class="uni-input" placeholder="请输入任务标题" />
			</view>
			<view class="uni-form-item uni-column">
				<input class="uni-input" placeholder="请输入每单奖励积分" />
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="publishTaobaoTask">发布淘宝任务</button>
			</view>
		</view>
	</view>
</template>

<script>
	import {isUserTokenExist, toLoginPage} from '../../common/util.js'
	export default {
		data() {
			return {
				task: 'weixin'
			}
		},
		onLoad() {
		
		},
		onShow() {
			
		},
		methods: {
			chooseOpt(task) {
				this.task = task
			},
			publishWeixinTask() {
				if (isUserTokenExist()) {
					
				} else {
					toLoginPage()
				}
			},
			publishTaobaoTask() {
				if (isUserTokenExist()) {
					
				} else {
					toLoginPage()
				}
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	@import '../../common/iconfont.css';
	
	.zy-task-page {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	.zy-task-opt-container {
		width: 100%;
		display: flex;
		flex-direction: column;
		align-items: center;
		margin-top: 10upx;
		margin-bottom: 10upx;
	}
	
	.zy-task-opt {
		width: 100%;
		display: flex;
		flex-direction: row;
		align-items: center;
	}
	
	.zy-task-opt view {
		text-align: center;
		flex-grow: 1;
		font-size: 24upx;
	}
	
	.zy-task-opt i {
		font-size: 80upx;
	}
	
	.zy-task-opt .zy-select {
		color: $primary-color;
		font-weight: bold;
	}
	
	.zy-task-opt .zy-select i {
		color: $primary-color;
	}
</style>
