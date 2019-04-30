<template>
  <div>
      <p>用户编号: <span v-text="form.id"></span></p>
      <p>昵称: <span v-text="form.nickname"></span></p>
      <p>头像地址: <span v-text="form.headicon"></span></p>
      <p>性别: <span v-text="form.gender"></span></p>
      <p>生日: <span v-text="form.birthday"></span></p>
      <p>年龄: <span v-text="form.age"></span></p>
      <p>QQ号: <span v-text="form.qq"></span></p>
      <p>QQ二维码: <span v-text="form.qqQrcode"></span></p>
      <p>微信号: <span v-text="form.wechat"></span></p>
      <p>微信二维码: <span v-text="form.wechatQrcode"></span></p>
      <p>支付宝账号: <span v-text="form.alipay"></span></p>
      <p>支付宝二维码: <span v-text="form.alipayQrcode"></span></p>
      <p>分享码: <span v-text="form.shareCode"></span></p>
      <p>版本号: <span v-text="form.version"></span></p>
      <p>创建时间: <span v-text="form.createTime"></span></p>
      <p>更新时间: <span v-text="form.updateTime"></span></p>
      <p>是否激活: <span v-text="form.isActive"></span></p>
  </div>
</template>

<script>
export default {
  name: 'UserViewModal',
  props: {
    form: Object,
    detail: false
  },
  data() {
    return {}
  },
  computed: {},
  mounted() {},
  methods: {}
}
</script>

<style>
</style>
