export default {
  /**
   * @description 配置显示在浏览器标签的title
   */
  title: 'zywork-app后台管理',
  /**
   * @description token在Cookie中存储的天数，默认1天
   */
  cookieExpires: 1,
  /**
   * @description 是否使用国际化，默认为false
   *              如果不使用，则需要在路由中给需要在菜单中展示的路由设置meta: {title: 'xxx'}
   *              用来在菜单中显示文字
   */
  useI18n: true,
  /**
   * @description api请求基础路径
   */
  baseUrl: {
    dev: 'http://localhost:8088',
    pro: 'http://39.108.116.103:8088',
    devServer: 'http://localhost',
    proServer: 'http://39.108.116.103',
    cdnUrl: '' // 如果是本地存储，不需要填写，为空；如果使用云存储，则配置cdn url，如http://cdn.zywork.top
  },
  /**
   * @description 默认打开的首页的路由name值，默认为home
   */
  homeName: 'home',
  /**
   * @description 分配权限时权限树的标题
   */
  permissionTreeTitle: '赣州智悦科技',
  /**
   * @description 需要加载的插件
   */
  plugin: {
    'error-store': {
      showInHeader: true, // 设为false后不会在顶部显示错误日志徽标
      developmentOff: true // 设为true后在开发环境不会收集错误信息，方便开发中排查错误
    }
  }
}
