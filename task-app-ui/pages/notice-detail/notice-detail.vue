<template>
	<view>
		<view class="zy-page">
			<view class="zy-text-bold zy-text-info-strong">
				{{notice.title}}
			</view>
			<view class="zy-small-text">
				{{notice.createTime}}
			</view>
		</view>
		<view class="zy-content">
			<uParse :content="notice.content" @preview="preview" @navigate="navigate" />
		</view>
	</view>
</template>

<script>
	import uParse from '@/components/uParse/src/wxParse.vue'
	import {getNotice} from '../../common/notice.js'
	
	export default {
		components: {
			uParse
		},
		data() {
			return {
				notice: {}
			}
		},
		onLoad(option) {
			getNotice(this, option.id)
		},
		methods: {
			preview(src, e) {
				// do something
				console.log("src: " + src);
			},
			navigate(href, e) {
				// 如允许点击超链接跳转，则应该打开一个新页面，并传入href，由新页面内嵌webview组件负责显示该链接内容
// 				console.log("href: " + href);
// 				uni.showModal({
// 					content : "点击链接为：" + href,
// 					showCancel:false
// 				})
			}
		}
	}
</script>

<style lang="scss">
	@import '../../common/zywork-main.scss';
	@import url("../../components/uParse/src/wxParse.css");
	.zy-page {
		width: 100%;
		display: flex;
 		flex-direction: column;
 		align-items: center;
	}
	
	.zy-page view {
		padding: 10upx;
		word-break:break-all;
	}
	
	.zy-content {
		padding: 20upx;
		text-align: left;
	}
</style>
