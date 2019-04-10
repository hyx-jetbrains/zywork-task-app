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
				<FormItem label="申诉编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealIdMin">
								<InputNumber v-model="searchForm.weixinTaskAppealIdMin" placeholder="请输入开始申诉编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealIdMax">
								<InputNumber v-model="searchForm.weixinTaskAppealIdMax" placeholder="请输入结束申诉编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="任务编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealTaskIdMin">
								<InputNumber v-model="searchForm.weixinTaskAppealTaskIdMin" placeholder="请输入开始任务编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealTaskIdMax">
								<InputNumber v-model="searchForm.weixinTaskAppealTaskIdMax" placeholder="请输入结束任务编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="申诉用户编号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealUserIdMin">
								<InputNumber v-model="searchForm.weixinTaskAppealUserIdMin" placeholder="请输入开始申诉用户编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealUserIdMax">
								<InputNumber v-model="searchForm.weixinTaskAppealUserIdMax" placeholder="请输入结束申诉用户编号" style="width: 100%;" />
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
				<FormItem label="申诉描述" prop="weixinTaskAppealAppealDes">
					<Input v-model="searchForm.weixinTaskAppealAppealDes" placeholder="请输入申诉描述" />
				</FormItem>
				<FormItem label="申诉状态">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealAppealStatusMin">
								<InputNumber v-model="searchForm.weixinTaskAppealAppealStatusMin" placeholder="请输入开始申诉状态" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealAppealStatusMax">
								<InputNumber v-model="searchForm.weixinTaskAppealAppealStatusMax" placeholder="请输入结束申诉状态" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="处理时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealHandleTimeMin">
								<DatePicker @on-change="searchForm.weixinTaskAppealHandleTimeMin=$event" :value="searchForm.weixinTaskAppealHandleTimeMin"
								 placeholder="请输入开始处理时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealHandleTimeMax">
								<DatePicker @on-change="searchForm.weixinTaskAppealHandleTimeMax=$event" :value="searchForm.weixinTaskAppealHandleTimeMax"
								 placeholder="请输入结束处理时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="创建时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealCreateTimeMin">
								<DatePicker @on-change="searchForm.weixinTaskAppealCreateTimeMin=$event" :value="searchForm.weixinTaskAppealCreateTimeMin"
								 placeholder="请输入开始创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealCreateTimeMax">
								<DatePicker @on-change="searchForm.weixinTaskAppealCreateTimeMax=$event" :value="searchForm.weixinTaskAppealCreateTimeMax"
								 placeholder="请输入结束创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="更新时间">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealUpdateTimeMin">
								<DatePicker @on-change="searchForm.weixinTaskAppealUpdateTimeMin=$event" :value="searchForm.weixinTaskAppealUpdateTimeMin"
								 placeholder="请输入开始更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealUpdateTimeMax">
								<DatePicker @on-change="searchForm.weixinTaskAppealUpdateTimeMax=$event" :value="searchForm.weixinTaskAppealUpdateTimeMax"
								 placeholder="请输入结束更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="版本号">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealVersionMin">
								<InputNumber v-model="searchForm.weixinTaskAppealVersionMin" placeholder="请输入开始版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealVersionMax">
								<InputNumber v-model="searchForm.weixinTaskAppealVersionMax" placeholder="请输入结束版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="是否激活">
					<Row>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealIsActiveMin">
								<InputNumber v-model="searchForm.weixinTaskAppealIsActiveMin" placeholder="请输入开始是否激活" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="weixinTaskAppealIsActiveMax">
								<InputNumber v-model="searchForm.weixinTaskAppealIsActiveMax" placeholder="请输入结束是否激活" style="width: 100%;" />
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
			<p>申诉编号: <span v-text="form.weixinTaskAppealId"></span></p>
			<p>任务编号: <span v-text="form.weixinTaskAppealTaskId"></span></p>
			<p>申诉用户编号: <span v-text="form.weixinTaskAppealUserId"></span></p>
			<p>昵称: <span v-text="form.userDetailNickname"></span></p>
			<p>手机号: <span v-text="form.userPhone"></span></p>
			<p>申诉描述: <span v-text="form.weixinTaskAppealAppealDes"></span></p>
			<p>申诉状态: 
				<span v-if="form.weixinTaskAppealAppealStatus == 0">申述中</span>
				<span v-if="form.weixinTaskAppealAppealStatus == 1">已通过</span>
				<span v-if="form.weixinTaskAppealAppealStatus == 2">未通过</span>
			</p>
			<p>处理时间: <span v-text="form.weixinTaskAppealHandleTime"></span></p>
			<p>创建时间: <span v-text="form.weixinTaskAppealCreateTime"></span></p>
			<p>更新时间: <span v-text="form.weixinTaskAppealUpdateTime"></span></p>
			<p>版本号: <span v-text="form.weixinTaskAppealVersion"></span></p>
			<p>是否激活: <span v-text="form.weixinTaskAppealIsActive"></span></p>

		</Modal>
		
		<Modal
		 :transfer="false"
		 v-model="modal.moduleSearch" title="微信任务" width="900">
		<WeixinTaskList ref="WeixinTaskList" />
			<div slot="footer">
				<Button type="text" size="large" @click="cancelModal('moduleSearch')">取消</Button>
				<Button type="primary" size="large" @click="confirm">确认</Button>
			</div>
		</Modal>
	</div>
</template>

<script>
	import * as utils from '@/api/utils'
	import axios from '@/libs/api.request'
	import WeixinTaskList from '@/view/weixin-task/WeixinTaskList.vue'

	export default {
		name: 'WeixinUserTaskAppeal',
		components: {
			WeixinTaskList
		},
		data() {
			return {
				modal: {
					add: false,
					edit: false,
					search: false,
					detail: false,
					moduleSearch: false
				},
				loading: {
					search: false
				},
				urls: {
					searchUrl: '/WeixinUserTaskAppeal/admin/pager-cond',
					allUrl: '/WeixinUserTaskAppeal/admin/all',
					detailUrl: '/WeixinUserTaskAppeal/admin/one/',
					multiUrl: '/WeixinUserTaskAppeal/admin/multi/',
					updateUrl: '/weixin-task-appeal/admin/updateStatus'
				},
				page: {
					total: 0
				},
				form: {
					weixinTaskAppealId: null,
					weixinTaskAppealTaskId: null,
					weixinTaskAppealUserId: null,
					weixinTaskAppealAppealDes: null,
					weixinTaskAppealAppealStatus: null,
					weixinTaskAppealHandleTime: null,
					weixinTaskAppealCreateTime: null,
					weixinTaskAppealUpdateTime: null,
					weixinTaskAppealVersion: null,
					weixinTaskAppealIsActive: null,
					userPhone: null,
					userDetailNickname: null,

				},
				searchForm: {
					pageNo: 1,
					pageSize: 10,
					sortColumn: null,
					sortOrder: null,
					weixinTaskAppealId: null,
					weixinTaskAppealIdMin: null,
					weixinTaskAppealIdMax: null,
					weixinTaskAppealTaskId: null,
					weixinTaskAppealTaskIdMin: null,
					weixinTaskAppealTaskIdMax: null,
					weixinTaskAppealUserId: null,
					weixinTaskAppealUserIdMin: null,
					weixinTaskAppealUserIdMax: null,
					weixinTaskAppealAppealDes: null,
					weixinTaskAppealAppealStatus: null,
					weixinTaskAppealAppealStatusMin: null,
					weixinTaskAppealAppealStatusMax: null,
					weixinTaskAppealHandleTime: null,
					weixinTaskAppealHandleTimeMin: null,
					weixinTaskAppealHandleTimeMax: null,
					weixinTaskAppealCreateTime: null,
					weixinTaskAppealCreateTimeMin: null,
					weixinTaskAppealCreateTimeMax: null,
					weixinTaskAppealUpdateTime: null,
					weixinTaskAppealUpdateTimeMin: null,
					weixinTaskAppealUpdateTimeMax: null,
					weixinTaskAppealVersion: null,
					weixinTaskAppealVersionMin: null,
					weixinTaskAppealVersionMax: null,
					weixinTaskAppealIsActive: null,
					weixinTaskAppealIsActiveMin: null,
					weixinTaskAppealIsActiveMax: null,
					userPhone: null,
					userDetailNickname: null,

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
							title: '申诉编号',
							key: 'weixinTaskAppealId',
							minWidth: 120,
							sortable: true
						},
						{
							title: '任务编号',
							key: 'weixinTaskAppealTaskId',
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
							          params.row.weixinTaskAppealTaskId,
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
							title: '申诉用户编号',
							key: 'weixinTaskAppealUserId',
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
							title: '申诉描述',
							key: 'weixinTaskAppealAppealDes',
							minWidth: 120,
							sortable: true
						},
						{
							title: '申诉状态',
							key: 'weixinTaskAppealAppealStatus',
							minWidth: 120,
							sortable: true,
							render: (h, params) => {
								let txt = null
								if(params.row.weixinTaskAppealAppealStatus == 0) {
									txt = '申述中'
								} else if(params.row.weixinTaskAppealAppealStatus == 1) {
									txt = '已通过'
								} else if(params.row.weixinTaskAppealAppealStatus == 2) {
									txt = '未通过'
								}
								return h('span', txt)
							}
						},
						{
							title: '处理时间',
							key: 'weixinTaskAppealHandleTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '创建时间',
							key: 'weixinTaskAppealCreateTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '更新时间',
							key: 'weixinTaskAppealUpdateTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '版本号',
							key: 'weixinTaskAppealVersion',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否激活',
							key: 'weixinTaskAppealIsActive',
							minWidth: 120,
							sortable: true
						},
						{
							title: '操作',
							key: 'action',
							width: 200,
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
								if(params.row.weixinTaskAppealAppealStatus == 0) {
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
													this.examine('adopt', params.row)
												}
											}
										}, '通过'),
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
														this.examine('notpass', params.row)
													}
												}
											}, '不通过')
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
			batchOpt(itemName) {
			  
			},
			userOpt(itemName, row) {
			  if (itemName === 'showSearch') {
			    utils.showModal(this, 'moduleSearch')
			  }
			},
			confirm() {
			  this.modal.moduleSearch = false
			},
			examine(modal, row) {
				var status = null;
				if(modal == 'adopt') {
					status = 1
				} else if(modal == 'notpass'){
					status = 2
				}
				var self = this
				axios.request({
				  url: self.urls.updateUrl,
					data: {
						id: row.weixinTaskAppealId,
						appealStatus: status,
						appealDes: row.weixinTaskAppealAppealDes,
						taskId: row.weixinTaskAppealTaskId,
						userId: row.weixinTaskAppealUserId
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
