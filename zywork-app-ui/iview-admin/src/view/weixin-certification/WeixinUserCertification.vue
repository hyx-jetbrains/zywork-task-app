<template>
	<div>
		<Row>
			<i-col span="24">
				<Card>
					<Button @click="showModal('search')" type="primary">高级搜索</Button>&nbsp;
					<Tooltip content="刷新" placement="right">
						<Button icon="md-refresh" type="success" shape="circle" @click="search"></Button>
					</Tooltip>
					<Table ref="dataTable" stripe :loading="table.loading" :columns="table.tableColumns" :data="table.tableDetails"
					 style="margin-top:20px;" @on-selection-change="changeSelection" @on-sort-change="changeSort"></Table>
					<div style="margin: 20px;overflow: hidden">
						<div style="float: right;">
							<Page :total="page.total" :current="searchForm.pageNo" @on-change="changePageNo" @on-page-size-change="changePageSize"
							 showSizer showTotal></Page>
						</div>
					</div>
				</Card>
			</i-col>
		</Row>
		<Modal v-model="modal.search" title="高级搜索">
			<Form ref="searchForm" :model="searchForm" :label-width="80">
				<FormItem label="微信认证编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationIdMin">
								<InputNumber v-model="searchForm.weixinCertificationIdMin" placeholder="请输入开始微信认证编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationIdMax">
								<InputNumber v-model="searchForm.weixinCertificationIdMax" placeholder="请输入结束微信认证编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="用户编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationUserIdMin">
								<InputNumber v-model="searchForm.weixinCertificationUserIdMin" placeholder="请输入开始用户编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationUserIdMax">
								<InputNumber v-model="searchForm.weixinCertificationUserIdMax" placeholder="请输入结束用户编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="昵称" prop="userDetailNickname">
					<Input v-model="searchForm.userDetailNickname" placeholder="请输入昵称"/>
				</FormItem>
				<FormItem label="手机号" prop="userPhone">
					<Input v-model="searchForm.userPhone" placeholder="请输入手机号" />
				</FormItem>
				<FormItem label="微信认证图片" prop="weixinCertificationUrl">
					<Input v-model="searchForm.weixinCertificationUrl" placeholder="请输入微信认证图片" />
				</FormItem>
				<FormItem label="认证状态">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationCheckStatusMin">
								<InputNumber v-model="searchForm.weixinCertificationCheckStatusMin" placeholder="请输入开始认证状态" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationCheckStatusMax">
								<InputNumber v-model="searchForm.weixinCertificationCheckStatusMax" placeholder="请输入结束认证状态" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="认证时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationCheckTimeMin">
								<DatePicker @on-change="searchForm.weixinCertificationCheckTimeMin=$event" :value="searchForm.weixinCertificationCheckTimeMin"
								 placeholder="请输入开始认证时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationCheckTimeMax">
								<DatePicker @on-change="searchForm.weixinCertificationCheckTimeMax=$event" :value="searchForm.weixinCertificationCheckTimeMax"
								 placeholder="请输入结束认证时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="创建时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationCreateTimeMin">
								<DatePicker @on-change="searchForm.weixinCertificationCreateTimeMin=$event" :value="searchForm.weixinCertificationCreateTimeMin"
								 placeholder="请输入开始创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationCreateTimeMax">
								<DatePicker @on-change="searchForm.weixinCertificationCreateTimeMax=$event" :value="searchForm.weixinCertificationCreateTimeMax"
								 placeholder="请输入结束创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="更新时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationUpdateTimeMin">
								<DatePicker @on-change="searchForm.weixinCertificationUpdateTimeMin=$event" :value="searchForm.weixinCertificationUpdateTimeMin"
								 placeholder="请输入开始更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationUpdateTimeMax">
								<DatePicker @on-change="searchForm.weixinCertificationUpdateTimeMax=$event" :value="searchForm.weixinCertificationUpdateTimeMax"
								 placeholder="请输入结束更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="版本号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationVersionMin">
								<InputNumber v-model="searchForm.weixinCertificationVersionMin" placeholder="请输入开始版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationVersionMax">
								<InputNumber v-model="searchForm.weixinCertificationVersionMax" placeholder="请输入结束版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="是否激活">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinCertificationIsActiveMin">
								<InputNumber v-model="searchForm.weixinCertificationIsActiveMin" placeholder="请输入开始是否激活" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinCertificationIsActiveMax">
								<InputNumber v-model="searchForm.weixinCertificationIsActiveMax" placeholder="请输入结束是否激活" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>

			</Form>
			<div slot="footer">
				<Button type="text" size="large" @click="resetForm('searchForm')">清空</Button>
				<Button type="text" size="large" @click="cancelModal('search')">取消</Button>
				<Button type="primary" size="large" @click="searchOkModal('search')" :loading="loading.search">搜索</Button>
			</div>
		</Modal>
		<Modal v-model="modal.detail" title="详情">
			<p>微信认证编号: <span v-text="form.weixinCertificationId"></span></p>
			<p>用户编号: <span v-text="form.weixinCertificationUserId"></span></p>
			<p>昵称: <span v-text="form.userDetailNickname"></span></p>
			<p>手机号: <span v-text="form.userPhone"></span></p>
			<p>微信认证图片: <span v-text="form.weixinCertificationUrl"></span></p>
			<p>认证状态: <span v-text="(form.weixinCertificationCheckStatus == 1?'已认证':'未认证')"></span></p>
			<p>认证时间: <span v-text="form.weixinCertificationCheckTime"></span></p>
			<p>创建时间: <span v-text="form.weixinCertificationCreateTime"></span></p>
			<p>更新时间: <span v-text="form.weixinCertificationUpdateTime"></span></p>
			<p>版本号: <span v-text="form.weixinCertificationVersion"></span></p>
			<p>是否激活: <span v-text="form.weixinCertificationIsActive"></span></p>

		</Modal>
	</div>
</template>

<script>
	import * as utils from '@/api/utils'
	import axios from '@/libs/api.request'

	export default {
		name: 'WeixinUserCertification',
		data() {
			return {
				modal: {
					add: false,
					edit: false,
					search: false,
					detail: false
				},
				loading: {
					search: false
				},
				urls: {
					searchUrl: '/WeixinUserCertification/admin/pager-cond',
					allUrl: '/WeixinUserCertification/admin/all',
					detailUrl: '/WeixinUserCertification/admin/one/',
					multiUrl: '/WeixinUserCertification/admin/multi/',
					updateUrl: '/weixin-certification/admin/updateCheckStatus'
				},
				page: {
					total: 0
				},
				form: {
					weixinCertificationId: null,
					weixinCertificationUserId: null,
					weixinCertificationUrl: null,
					weixinCertificationCheckStatus: null,
					weixinCertificationCheckTime: null,
					weixinCertificationCreateTime: null,
					weixinCertificationUpdateTime: null,
					weixinCertificationVersion: null,
					weixinCertificationIsActive: null,
					userDetailNickname: null,
					userPhone: null,

				},
				searchForm: {
					pageNo: 1,
					pageSize: 10,
					sortColumn: null,
					sortOrder: null,
					weixinCertificationId: null,
					weixinCertificationIdMin: null,
					weixinCertificationIdMax: null,
					weixinCertificationUserId: null,
					weixinCertificationUserIdMin: null,
					weixinCertificationUserIdMax: null,
					weixinCertificationUrl: null,
					weixinCertificationCheckStatus: null,
					weixinCertificationCheckStatusMin: null,
					weixinCertificationCheckStatusMax: null,
					weixinCertificationCheckTime: null,
					weixinCertificationCheckTimeMin: null,
					weixinCertificationCheckTimeMax: null,
					weixinCertificationCreateTime: null,
					weixinCertificationCreateTimeMin: null,
					weixinCertificationCreateTimeMax: null,
					weixinCertificationUpdateTime: null,
					weixinCertificationUpdateTimeMin: null,
					weixinCertificationUpdateTimeMax: null,
					weixinCertificationVersion: null,
					weixinCertificationVersionMin: null,
					weixinCertificationVersionMax: null,
					weixinCertificationIsActive: null,
					weixinCertificationIsActiveMin: null,
					weixinCertificationIsActiveMax: null,
					userDetailNickname: null,
					userPhone: null,

				},
				table: {
					loading: false,
					tableColumns: [{
							type: 'selection',
							width: 45,
							key: "id",
							align: 'center',
							fixed: 'left'
						},
						{
							width: 60,
							align: 'center',
							fixed: "left",
							render: (h, params) => {
								return h('span', params.index + (this.searchForm.pageNo - 1) * this.searchForm.pageSize + 1)
							}
						},
						{
							title: '微信认证编号',
							key: 'weixinCertificationId',
							minWidth: 130,
							sortable: true
						},
						{
							title: '用户编号',
							key: 'weixinCertificationUserId',
							minWidth: 120,
							sortable: true
						},
						{
							title: '昵称',
							key: 'userDetailNickname',
							minWidth: 120,
							sortable: true
						},
						{
							title: '手机号',
							key: 'userPhone',
							minWidth: 120,
							sortable: true
						},
						{
							title: '微信认证图片',
							key: 'weixinCertificationUrl',
							minWidth: 130,
							sortable: true,
							render: (h, params) => {
								return h('img',{
									attrs: {
										src: '../'+params.row.weixinCertificationUrl
									},
									style: {
										width: '50px',
										height: '50px'
									}
								})
							}
						},
						{
							title: '认证状态',
							key: 'weixinCertificationCheckStatus',
							minWidth: 120,
							sortable: true,
							render: (h, params) => {
								let txt = null
								if(params.row.weixinCertificationCheckStatus == 0) {
									txt = '待认证'
								} else if(params.row.weixinCertificationCheckStatus == 1) {
									txt = '已认证'
								} else if(params.row.weixinCertificationCheckStatus == 2) {
									txt = '未通过'
								} else if (params.row.weixinCertificationCheckStatus === 3) {
									txt = '答题未通过'
								} else if (params.row.weixinCertificationCheckStatus === 4) {
									txt = '答题已通过'
								}
								return h('span', txt)
							}
						},
						{
							title: '认证时间',
							key: 'weixinCertificationCheckTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '创建时间',
							key: 'weixinCertificationCreateTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '更新时间',
							key: 'weixinCertificationUpdateTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '版本号',
							key: 'weixinCertificationVersion',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否激活',
							key: 'weixinCertificationIsActive',
							minWidth: 120,
							sortable: true
						},
						{
							title: '操作',
							key: 'action',
							width: 150,
							align: 'center',
							fixed: 'right',
							render: (h, params) => {
								let arr = []
								arr.push(h('Button', {
										props: {
											type: 'primary',
											size: 'small'
										},
										style: {
											marginRight: '5px'
										},
										on: {
											click: () => {
												this.showDetail('detail', params.row)
											}
										}
									}, '详情')
								)
								if(params.row.weixinCertificationCheckStatus == 0) {
									arr.push(h('Button', {
											props: {
												type: 'primary',
												size: 'small'
											},
											style: {
												marginRight: '5px'
											},
											on: {
												click: () => {
													this.Authentication(params.row)
												}
											}
										}, '认证')
									)
								}
								return h('div', arr)
							}
						}
					],
					tableDetails: [],
					selections: []
				}
			}
		},
		computed: {},
		mounted() {
			this.search()
		},
		methods: {
			showModal(modal) {
				utils.showModal(this, modal)
			},
			showDetail(modal, row) {
				utils.showModal(this, modal)
				this.form = row
			},
			changeModalVisibleResetForm(formRef, visible) {
				if (!visible) {
					utils.resetForm(this, formRef)
				}
			},
			resetForm(formRef) {
				utils.resetForm(this, formRef)
			},
			cancelModal(modal) {
				utils.cancelModal(this, modal)
			},
			resetFormCancelModal(formRef, modal) {
				utils.cancelModal(this, modal)
				utils.resetForm(this, formRef)
			},
			searchOkModal(modal) {
				utils.cancelModal(this, modal)
				utils.search(this)
			},
			search() {
				utils.search(this)
			},
			changeSelection(selections) {
				utils.changeSelections(this, selections)
			},
			changeSort(sortColumn) {
				utils.changeSort(this, sortColumn)
			},
			changePageNo(pageNo) {
				utils.changePageNo(this, pageNo)
			},
			changePageSize(pageSize) {
				utils.changePageSize(this, pageSize)
			},
			Authentication(row) {
				var self = this
				axios.request({
				  url: self.urls.updateUrl,
					data: {
						id: row.weixinCertificationId
					},
				  method: 'POST'
				}).then(response => {
				  if (response.data.code == 1001) {
				    self.$Message.success(response.data.message)
				  } else {
						self.$Message.error(response.data.message)
					}
					utils.search(self)
				}).catch(error => {
				  console.log(error)
				  self.$Message.error('修改数据失败，稍候再试')
				})
			}
		}
	}
</script>

<style>
</style>
