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
				<FormItem label="报名编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyIdMin">
								<InputNumber v-model="searchForm.weixinTaskApplyIdMin" placeholder="请输入开始报名编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyIdMax">
								<InputNumber v-model="searchForm.weixinTaskApplyIdMax" placeholder="请输入结束报名编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="任务编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyTaskIdMin">
								<InputNumber v-model="searchForm.weixinTaskApplyTaskIdMin" placeholder="请输入开始任务编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyTaskIdMax">
								<InputNumber v-model="searchForm.weixinTaskApplyTaskIdMax" placeholder="请输入结束任务编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="报名用户编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyUserIdMin">
								<InputNumber v-model="searchForm.weixinTaskApplyUserIdMin" placeholder="请输入开始报名用户编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyUserIdMax">
								<InputNumber v-model="searchForm.weixinTaskApplyUserIdMax" placeholder="请输入结束报名用户编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="昵称" prop="userDetailNickname">
					<Input v-model="searchForm.userDetailNickname" placeholder="请输入昵称" />
				</FormItem>
				<FormItem label="手机号" prop="userPhone">
					<Input v-model="searchForm.userPhone" placeholder="请输入手机号" />
				</FormItem>
				<FormItem label="发布方确认状态">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyPubConfirmStatusMin">
								<InputNumber v-model="searchForm.weixinTaskApplyPubConfirmStatusMin" placeholder="请输入开始发布方确认状态" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyPubConfirmStatusMax">
								<InputNumber v-model="searchForm.weixinTaskApplyPubConfirmStatusMax" placeholder="请输入结束发布方确认状态" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="发布方确认时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyPubConfirmTimeMin">
								<DatePicker @on-change="searchForm.weixinTaskApplyPubConfirmTimeMin=$event" :value="searchForm.weixinTaskApplyPubConfirmTimeMin"
								 placeholder="请输入开始发布方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyPubConfirmTimeMax">
								<DatePicker @on-change="searchForm.weixinTaskApplyPubConfirmTimeMax=$event" :value="searchForm.weixinTaskApplyPubConfirmTimeMax"
								 placeholder="请输入结束发布方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="报名方确认状态">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyAppConfirmStatusMin">
								<InputNumber v-model="searchForm.weixinTaskApplyAppConfirmStatusMin" placeholder="请输入开始报名方确认状态" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyAppConfirmStatusMax">
								<InputNumber v-model="searchForm.weixinTaskApplyAppConfirmStatusMax" placeholder="请输入结束报名方确认状态" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="报名方确认时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyAppConfirmTimeMin">
								<DatePicker @on-change="searchForm.weixinTaskApplyAppConfirmTimeMin=$event" :value="searchForm.weixinTaskApplyAppConfirmTimeMin"
								 placeholder="请输入开始报名方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyAppConfirmTimeMax">
								<DatePicker @on-change="searchForm.weixinTaskApplyAppConfirmTimeMax=$event" :value="searchForm.weixinTaskApplyAppConfirmTimeMax"
								 placeholder="请输入结束报名方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="创建时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyCreateTimeMin">
								<DatePicker @on-change="searchForm.weixinTaskApplyCreateTimeMin=$event" :value="searchForm.weixinTaskApplyCreateTimeMin"
								 placeholder="请输入开始创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyCreateTimeMax">
								<DatePicker @on-change="searchForm.weixinTaskApplyCreateTimeMax=$event" :value="searchForm.weixinTaskApplyCreateTimeMax"
								 placeholder="请输入结束创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="更新时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyUpdateTimeMin">
								<DatePicker @on-change="searchForm.weixinTaskApplyUpdateTimeMin=$event" :value="searchForm.weixinTaskApplyUpdateTimeMin"
								 placeholder="请输入开始更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyUpdateTimeMax">
								<DatePicker @on-change="searchForm.weixinTaskApplyUpdateTimeMax=$event" :value="searchForm.weixinTaskApplyUpdateTimeMax"
								 placeholder="请输入结束更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="版本号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyVersionMin">
								<InputNumber v-model="searchForm.weixinTaskApplyVersionMin" placeholder="请输入开始版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyVersionMax">
								<InputNumber v-model="searchForm.weixinTaskApplyVersionMax" placeholder="请输入结束版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="是否激活">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyIsActiveMin">
								<InputNumber v-model="searchForm.weixinTaskApplyIsActiveMin" placeholder="请输入开始是否激活" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskApplyIsActiveMax">
								<InputNumber v-model="searchForm.weixinTaskApplyIsActiveMax" placeholder="请输入结束是否激活" style="width: 100%;" />
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
			<p>报名编号: <span v-text="form.weixinTaskApplyId"></span></p>
			<p>任务编号: <span v-text="form.weixinTaskApplyTaskId"></span></p>
			<p>报名用户编号: <span v-text="form.weixinTaskApplyUserId"></span></p>
			<p>昵称: <span v-text="form.userDetailNickname"></span></p>
			<p>手机号: <span v-text="form.userPhone"></span></p>
			<p>发布方确认状态: <span v-text="form.weixinTaskApplyPubConfirmStatus==0?'未确认':'已确认'"></span></p>
			<p>发布方确认时间: <span v-text="form.weixinTaskApplyPubConfirmTime"></span></p>
			<p>报名方确认状态: <span v-text="form.weixinTaskApplyAppConfirmStatus==0?'未确认':'已确认'"></span></p>
			<p>报名方确认时间: <span v-text="form.weixinTaskApplyAppConfirmTime"></span></p>
			<p>创建时间: <span v-text="form.weixinTaskApplyCreateTime"></span></p>
			<p>更新时间: <span v-text="form.weixinTaskApplyUpdateTime"></span></p>
			<p>版本号: <span v-text="form.weixinTaskApplyVersion"></span></p>
			<p>是否激活: <span v-text="form.weixinTaskApplyIsActive"></span></p>

		</Modal>
		
		<WeixinTaskDetail :form="weinxinTaskDetailForm" :detail="modal.weixinTaskDetail" v-on:setDetail="setDetailModal"/>
	</div>
</template>

<script>
	import * as utils from '@/api/utils'
	import {getWeixinTaskById} from '@/api/module'
	import WeixinTaskDetail from '@/view/weixin-task/WeixinTaskDetail.vue'

	export default {
		name: 'WeixinUserTaskApply',
		components: {
			WeixinTaskDetail
		},
		data() {
			return {
				modal: {
					add: false,
					edit: false,
					search: false,
					detail: false,
					weixinTaskDetail: false
				},
				loading: {
					search: false
				},
				urls: {
					searchUrl: '/WeixinUserTaskApply/admin/pager-cond',
					allUrl: '/WeixinUserTaskApply/admin/all',
					detailUrl: '/WeixinUserTaskApply/admin/one/',
					multiUrl: '/WeixinUserTaskApply/admin/multi/'
				},
				page: {
					total: 0
				},
				form: {
					weixinTaskApplyId: null,
					weixinTaskApplyTaskId: null,
					weixinTaskApplyUserId: null,
					weixinTaskApplyPubConfirmStatus: null,
					weixinTaskApplyPubConfirmTime: null,
					weixinTaskApplyAppConfirmStatus: null,
					weixinTaskApplyAppConfirmTime: null,
					weixinTaskApplyCreateTime: null,
					weixinTaskApplyUpdateTime: null,
					weixinTaskApplyVersion: null,
					weixinTaskApplyIsActive: null,
					userDetailNickname: null,
					userPhone: null,

				},
				weinxinTaskDetailForm: {
					id: null,
					userId: null,
					title: null,
					totalNumber: null,
					confirmNumber: null,
					integral: null,
					description: null,
					taskStatus: null,
					createTime: null,
				},
				searchForm: {
					pageNo: 1,
					pageSize: 10,
					sortColumn: null,
					sortOrder: null,
					weixinTaskApplyId: null,
					weixinTaskApplyIdMin: null,
					weixinTaskApplyIdMax: null,
					weixinTaskApplyTaskId: null,
					weixinTaskApplyTaskIdMin: null,
					weixinTaskApplyTaskIdMax: null,
					weixinTaskApplyUserId: null,
					weixinTaskApplyUserIdMin: null,
					weixinTaskApplyUserIdMax: null,
					weixinTaskApplyPubConfirmStatus: null,
					weixinTaskApplyPubConfirmStatusMin: null,
					weixinTaskApplyPubConfirmStatusMax: null,
					weixinTaskApplyPubConfirmTime: null,
					weixinTaskApplyPubConfirmTimeMin: null,
					weixinTaskApplyPubConfirmTimeMax: null,
					weixinTaskApplyAppConfirmStatus: null,
					weixinTaskApplyAppConfirmStatusMin: null,
					weixinTaskApplyAppConfirmStatusMax: null,
					weixinTaskApplyAppConfirmTime: null,
					weixinTaskApplyAppConfirmTimeMin: null,
					weixinTaskApplyAppConfirmTimeMax: null,
					weixinTaskApplyCreateTime: null,
					weixinTaskApplyCreateTimeMin: null,
					weixinTaskApplyCreateTimeMax: null,
					weixinTaskApplyUpdateTime: null,
					weixinTaskApplyUpdateTimeMin: null,
					weixinTaskApplyUpdateTimeMax: null,
					weixinTaskApplyVersion: null,
					weixinTaskApplyVersionMin: null,
					weixinTaskApplyVersionMax: null,
					weixinTaskApplyIsActive: null,
					weixinTaskApplyIsActiveMin: null,
					weixinTaskApplyIsActiveMax: null,
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
							title: '报名编号',
							key: 'weixinTaskApplyId',
							minWidth: 120,
							sortable: true
						},
						{
							title: '任务编号',
							key: 'weixinTaskApplyTaskId',
							minWidth: 120,
							sortable: true,
							render: (h, params) => {
							  return h(
							    'Dropdown',
							    {
							      on: {
							        'on-click': itemName => {
							          this.userOpt(itemName, params.row)
							        }
							      },
							        props: {
							          transfer: true
							        }
							    },
							    [
							      h(
							        'span',
							        [
							          params.row.weixinTaskApplyTaskId,
							          h('Icon', {
							            props: {
							              type: 'ios-list',
							              size: '25'
							            }
							          })
							        ]
							      ),
							      h(
							        'DropdownMenu',
							        {
							          slot: 'list'
							        },
							        [
							          h(
							            'DropdownItem',
							            {
							              props: {
							                name: 'showSearch'
							              }
							            },
							            '查看微信任务'
							          )
							        ]
							      )
							    ]
							  )
							}
						},
						{
							title: '报名用户编号',
							key: 'weixinTaskApplyUserId',
							minWidth: 130,
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
							title: '发布方确认状态',
							key: 'weixinTaskApplyPubConfirmStatus',
							minWidth: 140,
							sortable: true,
							render: (h, params) => {
								let txt = null
								if(params.row.weixinTaskApplyPubConfirmStatus == 0) {
									txt = '未确认'
								} else if(params.row.weixinTaskApplyPubConfirmStatus == 1) {
									txt = '已确认'
								}
								return h('span', txt)
							}
						},
						{
							title: '发布方确认时间',
							key: 'weixinTaskApplyPubConfirmTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '报名方确认状态',
							key: 'weixinTaskApplyAppConfirmStatus',
							minWidth: 140,
							sortable: true,
							render: (h, params) => {
								let txt = null
								if(params.row.weixinTaskApplyAppConfirmStatus == 0) {
									txt = '未确认'
								} else if(params.row.weixinTaskApplyAppConfirmStatus == 1) {
									txt = '已确认'
								}
								return h('span', txt)
							}
						},
						{
							title: '报名方确认时间',
							key: 'weixinTaskApplyAppConfirmTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '创建时间',
							key: 'weixinTaskApplyCreateTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '更新时间',
							key: 'weixinTaskApplyUpdateTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '版本号',
							key: 'weixinTaskApplyVersion',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否激活',
							key: 'weixinTaskApplyIsActive',
							minWidth: 120,
							sortable: true
						},

						{
							title: '操作',
							key: 'action',
							width: 120,
							align: 'center',
							fixed: 'right',
							render: (h, params) => {
								return h('div', [
									h('Button', {
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
								])
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
			batchOpt(itemName) {
			  
			},
			userOpt(itemName, row) {
			  if (itemName === 'showSearch') {
			    this.showModuleDetailModal(row.weixinTaskApplyTaskId)
			  }
			},
			setDetailModal(val) {
			  this.modal.weixinTaskDetail = val
			},
			showModuleDetailModal(id) {
			  getWeixinTaskById(id)
			    .then(res => {
			      const data = res.data
			      if (data.code === 1001) {
			        this.weinxinTaskDetailForm = data.data
			        this.modal.weixinTaskDetail = true
			      } else {
			        this.$Message.error(data.message)
			      }
			    })
			    .catch(err => {
			      this.$Message.error(err)
			    })
			}
		}
	}
</script>

<style>
</style>
