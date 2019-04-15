<template>
  <div>
    <Modal v-model="detail" title="微信任务详情">
      <p>任务编号: <span v-text="form.id"></span></p>
      <p>发布用户编号: <span v-text="form.userId"></span></p>
      <p>任务标题: <span v-text="form.title"></span></p>
      <p>加友总数: <span v-text="form.totalNumber"></span></p>
      <p>已确认数: <span v-text="form.confirmNumber"></span></p>
      <p>奖励积分: <span v-text="(form.integral/100)"></span></p>
      <p>任务描述: <span v-text="form.description"></span></p>
      <p>任务状态: 
      	<span v-if="form.taskStatus==0">进行中</span>
      	<span v-if="form.taskStatus==1">已完成</span>
      	<span v-if="form.taskStatus==2">已关闭</span>
      </p>
      <p>创建时间: <span v-text="form.createTime"></span></p>
      <p>更新时间: <span v-text="form.updateTime"></span></p>
      <p>版本号: <span v-text="form.version"></span></p>
      <p>是否激活: <span v-text="form.isActive"></span></p>
      <div slot="footer">
        <Button type="primary" @click="closeModal">确定</Button>
      </div>
    </Modal>
  </div>
</template>

<script>
export default {
  name: 'WeixinTaskViewModal',
  props: {
    form: Object,
    detail: false
  },
  data() {
    return {}
  },
  computed: {},
  mounted() {
  },
  methods: {
    closeModal() {
      this.$emit('setDetail', false)
    }
  }
}
</script>

<style>
</style>
