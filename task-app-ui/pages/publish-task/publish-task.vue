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
				<input v-model="weixinTaskForm.title" class="uni-input" placeholder="请输入任务标题" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="weixinTaskForm.totalNumber" class="uni-input" type="number" placeholder="请输入加友总数" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="weixinTaskForm.integral" class="uni-input" type="number" placeholder="请输入单人奖励积分" />
			</view>
			<view class="uni-form-item uni-column">
				<view class="uni-textarea">
					<textarea v-model="weixinTaskForm.description" rows="3" placeholder="请输入任务描述"/>
				</view>
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="publishWeixinTask">发布微信任务</button>
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="publishTaobaoTask">重置微信任务</button>
			</view>
		</view>
		<view class="zy-form" v-if="task === 'taobao'">
			<view class="uni-form-item uni-column">
				<input v-model="taobaoTaskForm.title" class="uni-input" placeholder="请输入任务标题" />
			</view>
			<view class="uni-form-item uni-column">
				<input v-model="taobaoTaskForm.integral" class="uni-input" placeholder="请输入每单奖励积分" />
			</view>
			<view class="uni-form-item uni-column">
				<view v-model="taobaoTaskForm.goodsLink" class="uni-textarea">
					<textarea rows="3" placeholder="请输入宝贝链接"/>
				</view>
			</view>
			<view class="uni-form-item uni-column">
				<view class="uni-textarea">
					<textarea v-model="taobaoTaskForm.description" rows="3" placeholder="请输入任务描述"/>
				</view>
			</view>
			<view style="text-align: center;">淘宝任务发布功能即将上线……</view>
			<!--
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="publishTaobaoTask">发布淘宝任务</button>
			</view>
			<view class="uni-form-item">
				<button type="primary" style="width: 100%;" @click="publishTaobaoTask">重置淘宝任务</button>
			</view>
			-->
		</view>
	</view>
</template>

<script>
	import {isUserTokenExist, toLoginPage} from '../../common/util.js'
	import {createTask} from '../../common/weixin-task.js'
	export default {
		data() {
			return {
				task: 'weixin',
				weixinTaskForm: {
					title: null,
					integral: null,
					totalNumber: null,
					description: null
				},
				taobaoTaskForm: {
					title: null,
					integral: null,
					goodsLink: null,
					description: null
				}
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
					createTask(this)
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
	
	.uni-textarea textarea {
		padding-left: 25upx;
	}
</style>
