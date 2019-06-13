<template>
	<div>
		<Row>
			<i-col span="24">
				<Card>
					<Button @click="showModal('add')" type="primary">添加</Button>&nbsp;
					<Dropdown @on-click="batchOpt">
						<Button type="primary">
							批量操作
							<Icon type="ios-arrow-down"></Icon>
						</Button>
						<DropdownMenu slot="list">
							<DropdownItem name="batchActive">批量激活</DropdownItem>
							<DropdownItem name="batchInactive"><span style="color: red;">批量冻结</span></DropdownItem>
							<DropdownItem name="batchRemove" divided><span style="color: red;">批量删除</span></DropdownItem>
						</DropdownMenu>
					</Dropdown>&nbsp;
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
		<Modal v-model="modal.add" title="添加" @on-visible-change="changeModalVisibleResetForm('addForm', $event)">
			<Form ref="addForm" :model="form" :label-width="80" :rules="validateRules">
				<FormItem label="发布用户编号" prop="userId">
					<InputNumber v-model="form.userId" placeholder="请输入发布用户编号" style="width: 100%;" />
				</FormItem>
				<FormItem label="任务标题" prop="title">
					<Input v-model="form.title" placeholder="请输入任务标题" />
				</FormItem>
				<FormItem label="加友总数" prop="totalNumber">
					<InputNumber v-model="form.totalNumber" placeholder="请输入加友总数" style="width: 100%;" />
				</FormItem>
				<FormItem label="奖励积分" prop="integral">
					<InputNumber v-model="form.integral" placeholder="请输入奖励积分" style="width: 100%;" />
				</FormItem>
				<FormItem label="任务描述" prop="description">
					<Input v-model="form.description" type="textarea" :autosize="descriptionAutoSize" placeholder="请输入任务描述" />
				</FormItem>
			</Form>
			<div slot="footer">
				<Button type="text" size="large" @click="resetFormCancelModal('addForm', 'add')">取消</Button>
				<Button type="primary" size="large" @click="add" :loading="loading.add">添加</Button>
			</div>
		</Modal>
		<Modal v-model="modal.edit" title="修改" @on-visible-change="changeModalVisibleResetForm('editForm', $event)">
			<Form ref="editForm" :model="form" :label-width="80" :rules="validateRules">
				<FormItem label="发布用户编号" prop="userId">
					<InputNumber v-model="form.userId" placeholder="请输入发布用户编号" style="width: 100%;"/>
				</FormItem>
				<FormItem label="任务标题" prop="title">
					<Input v-model="form.title" placeholder="请输入任务标题" />
				</FormItem>
				<FormItem label="加友总数" prop="totalNumber">
					<InputNumber v-model="form.totalNumber" placeholder="请输入加友总数" style="width: 100%;" />
				</FormItem>
				<FormItem label="已确认数" prop="confirmNumber">
					<InputNumber v-model="form.confirmNumber" placeholder="请输入已确认数" style="width: 100%;" />
				</FormItem>
				<FormItem label="奖励积分" prop="integral">
					<InputNumber v-model="form.integral/100" placeholder="请输入奖励积分" style="width: 100%;" />
				</FormItem>
				<FormItem label="任务描述" prop="description">
					<Input v-model="form.description" type="textarea" :autosize="descriptionAutoSize" placeholder="请输入任务描述" />
				</FormItem>
			</Form>
			<div slot="footer">
				<Button type="text" size="large" @click="resetFormCancelModal('editForm', 'edit')">取消</Button>
				<Button type="primary" size="large" @click="edit" :loading="loading.edit">修改</Button>
			</div>
		</Modal>
		<Modal v-model="modal.search" title="高级搜索">
			<Form ref="searchForm" :model="searchForm" :label-width="80">
				<FormItem label="任务编号">
					<Row>
						<FormItem prop="id">
							<InputNumber v-model="searchForm.id" placeholder="请输入任务编号" style="width: 100%;" />
						</FormItem>
					</Row>
				</FormItem>
				<FormItem label="发布用户编号">
					<Row>
						<FormItem prop="userId">
							<InputNumber v-model="searchForm.userId" placeholder="请输入发布用户编号" style="width: 100%;" />
						</FormItem>
					</Row>
				</FormItem>
				<FormItem label="任务标题" prop="title">
					<Input v-model="searchForm.title" placeholder="请输入任务标题" />
				</FormItem>
				<FormItem label="加友总数">
					<Row>
						<FormItem prop="totalNumber">
							<InputNumber v-model="searchForm.totalNumber" placeholder="请输入加友总数" style="width: 100%;" />
						</FormItem>
					</Row>
				</FormItem>
				<FormItem label="已确认数">
					<Row>
						<FormItem prop="confirmNumber">
							<InputNumber v-model="searchForm.confirmNumber" placeholder="请输入已确认数" style="width: 100%;" />
						</FormItem>
					</Row>
				</FormItem>
				<FormItem label="奖励积分">
					<Row>
						<FormItem prop="integral">
							<InputNumber v-model="searchForm.integral" placeholder="请输入奖励积分" style="width: 100%;" />
						</FormItem>
					</Row>
				</FormItem>
				<FormItem label="任务描述" prop="description">
					<Input v-model="searchForm.description" placeholder="请输入任务描述" />
				</FormItem>
				<FormItem label="任务状态">
					<Row>
						<FormItem prop="taskStatus">
							<Select v-model="searchForm.taskStatus" clearable >
								<Option value="0">进行中</option>
								<Option value="1">已完成</option>
							</Select>
						</FormItem>
					</Row>
				</FormItem>
				<FormItem label="创建时间">
					<Row>
						<i-col span="11">
							<FormItem prop="createTimeMin">
								<DatePicker @on-change="searchForm.createTimeMin=$event" :value="searchForm.createTimeMin" placeholder="请输入开始创建时间"
								 type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="createTimeMax">
								<DatePicker @on-change="searchForm.createTimeMax=$event" :value="searchForm.createTimeMax" placeholder="请输入结束创建时间"
								 type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="更新时间">
					<Row>
						<i-col span="11">
							<FormItem prop="updateTimeMin">
								<DatePicker @on-change="searchForm.updateTimeMin=$event" :value="searchForm.updateTimeMin" placeholder="请输入开始更新时间"
								 type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="updateTimeMax">
								<DatePicker @on-change="searchForm.updateTimeMax=$event" :value="searchForm.updateTimeMax" placeholder="请输入结束更新时间"
								 type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="版本号">
					<Row>
						<i-col span="11">
							<FormItem prop="versionMin">
								<InputNumber v-model="searchForm.versionMin" placeholder="请输入开始版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="versionMax">
								<InputNumber v-model="searchForm.versionMax" placeholder="请输入结束版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="是否激活">
					<Row>
						<i-col span="11">
							<FormItem prop="isActiveMin">
								<InputNumber v-model="searchForm.isActiveMin" placeholder="请输入开始是否激活" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="isActiveMax">
								<InputNumber v-model="searchForm.isActiveMax" placeholder="请输入结束是否激活" style="width: 100%;" />
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
		<Modal v-model="modal.detail" title="详情" @on-visible-change="changeModalVisibleResetForm('editForm', $event)">
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

		</Modal>
		
		<Modal :transfer="false" v-model="modal.userDetail" title="用户详情">
		  <UserDetail :form="userDetailForm" v-on:setDetail="setDetailModal"/>
		</Modal>
		
		<Modal :transfer="false" fullscreen v-model="modal.userDetalSearch" title="搜索主表信息">
		  <user-list-single ref="UserListSingle" v-on:confirmSelection="confirmSelection"/>
		  <div slot="footer">
		    <Button type="text" size="large" @click="cancelModal('userDetalSearch')">取消</Button>
		    <Button type="primary" size="large" @click="confirm">确认选择</Button>
		  </div>
		</Modal>
	</div>
</template>

<script>
	import * as utils from '@/api/utils'
	import UserListSingle from '@/view/user/UserListSingle.vue'
	import UserDetail from '@/view/user-detail/UserDetail.vue'
	import { getUserById } from '@/api/module'

	export default {
		name: 'WeixinTask',
		components: {
			UserDetail,
			UserListSingle
		},
		data() {
			return {
				descriptionAutoSize: true,
				modal: {
					add: false,
					edit: false,
					search: false,
					detail: false,
					userDetail: false,
					userDetalSearch: false
				},
				loading: {
					add: false,
					edit: false,
					search: false
				},
				urls: {
					addUrl: '/weixin-task/admin/save',
					batchAddUrl: '/weixin-task/admin/batch-save',
					editUrl: '/weixin-task/admin/update',
					batchEditUrl: '/weixin-task/admin/batch-update',
					searchUrl: '/weixin-task/admin/pager-cond',
					allUrl: '/weixin-task/admin/all',
					removeUrl: '/weixin-task/admin/remove/',
					batchRemoveUrl: '/weixin-task/admin/batch-remove',
					detailUrl: '/weixin-task/admin/one/',
					activeUrl: '/weixin-task/admin/active',
					batchActiveUrl: '/weixin-task/admin/batch-active'
				},
				page: {
					total: 0
				},
				form: {
					id: null,
					userId: null,
					title: null,
					totalNumber: null,
					confirmNumber: null,
					integral: null,
					description: null,
					taskStatus: null,
					createTime: null,
					updateTime: null,
					version: null,
					isActive: null,
				},
				userDetailForm: {
					id: null,
					nickname: null,
					headicon: null,
					gender: null,
					birthday: null,
					age: null,
					qq: null,
					qqQrcode: null,
					wechat: null,
					wechatQrcode: null,
					alipay: null,
					alipayQrcode: null,
					shareCode: null,
					version: null,
					createTime: null,
					updateTime: null,
					isActive: null,
				},
				validateRules: {
					userId: [{
						type: 'integer',
						required: true,
						message: '此项为必须项',
						trigger: 'blur, change'
					}],
					title: [{
							type: 'string',
							required: true,
							message: '此项为必须项',
							trigger: 'blur'
						},
						{
							type: 'string',
							min: 1,
							max: 200,
							message: '必须1-200个字符',
							trigger: 'blur'
						}
					],
					totalNumber: [{
						type: 'integer',
						required: true,
						message: '此项为必须项',
						trigger: 'blur, change'
					}],
					integral: [{
						type: 'integer',
						required: true,
						message: '此项为必须项',
						trigger: 'blur, change'
					}],
					description: [{
						type: 'string',
						min: 1,
						max: 300,
						message: '必须1-300个字符',
						trigger: 'blur'
					}],

				},
				searchForm: {
					pageNo: 1,
					pageSize: 10,
					sortColumn: null,
					sortOrder: null,
					id: null,
					idMin: null,
					idMax: null,
					userId: null,
					userIdMin: null,
					userIdMax: null,
					title: null,
					totalNumber: null,
					totalNumberMin: null,
					totalNumberMax: null,
					confirmNumber: null,
					confirmNumberMin: null,
					confirmNumberMax: null,
					integral: null,
					integralMin: null,
					integralMax: null,
					description: null,
					taskStatus: null,
					taskStatusMin: null,
					taskStatusMax: null,
					createTime: null,
					createTimeMin: null,
					createTimeMax: null,
					updateTime: null,
					updateTimeMin: null,
					updateTimeMax: null,
					version: null,
					versionMin: null,
					versionMax: null,
					isActive: null,
					isActiveMin: null,
					isActiveMax: null,

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
							title: '任务编号',
							key: 'id',
							align: 'center',
							minWidth: 120,
							sortable: true
						},
						{
							title: '发布用户编号',
							key: 'userId',
							minWidth: 150,
							align: 'center',
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
							      h('span', [
							        params.row.userId,
							        h('Icon', {
							          props: {
							            type: 'ios-list',
							            size: '25'
							          }
							        })
							      ]),
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
							                name: 'userDetail'
							              }
							            },
							            '详情'
							          ),
							          h(
							            'DropdownItem',
							            {
							              props: {
							                name: 'showUserSearch'
							              }
							            },
							            '搜索'
							          )
							        ]
							      )
							    ]
							  )
							}
						},
						{
							title: '任务标题',
							key: 'title',
							minWidth: 120,
							sortable: true
						},
						{
							title: '加友总数',
							key: 'totalNumber',
							minWidth: 120,
							align: 'center',
							sortable: true
						},
						{
							title: '已确认数',
							key: 'confirmNumber',
							align: 'center',
							minWidth: 120,
							sortable: true
						},
						{
							title: '奖励积分',
							key: 'integral',
							align: 'center',
							minWidth: 120,
							sortable: true,
							render: (h, params) => {
								return h('span', params.row.integral/100)
							}
						},
						{
							title: '群聊二维码',
							key: 'groupChatQrcode',
							align: 'center',
							minWidth: 120,
							sortable: true
						},
						{
							title: '任务描述',
							key: 'description',
							minWidth: 180,
							sortable: true
						},
						{
							title: '任务状态',
							key: 'taskStatus',
							minWidth: 120,
							align: 'center',
							sortable: true,
							render: (h, params) => {
								let txt = null
								if(params.row.taskStatus == 0) {
									txt = '进行中'
								} else if(params.row.taskStatus == 1) {
									txt = '已完成'
								}	else if(params.row.taskStatus == 2) {
									txt = '已失效'
								}
								return h('span', txt)
							}
						},
						{
							title: '创建时间',
							key: 'createTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '更新时间',
							key: 'updateTime',
							minWidth: 150,
							sortable: true
						},
						{
							title: '版本号',
							key: 'version',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否激活',
							key: 'isActive',
							minWidth: 120,
							sortable: true
						},

						{
							title: '激活状态',
							key: 'isActive',
							minWidth: 100,
							align: 'center',
							render: (h, params) => {
								return h('i-switch', {
									props: {
										size: 'large',
										value: params.row.isActive === 0
									},
									style: {
										marginRight: '5px'
									},
									on: {
										'on-change': (status) => {
											this.active(params.row)
										}
									}
								}, [
									h('span', {
										slot: 'open'
									}, '激活'),
									h('span', {
										slot: 'close'
									}, '冻结')
								])
							}
						},
						{
							title: '操作',
							key: 'action',
							width: 120,
							align: 'center',
							fixed: 'right',
							render: (h, params) => {
								return h('Dropdown', {
									on: {
										'on-click': (itemName) => {
											this.userOpt(itemName, params.row)
										}
									},
									props: {
										transfer: true
									}
								}, [
									h('Button', {
										props: {
											type: 'primary',
											size: 'small'
										}
									}, [
										'选择操作 ',
										h('Icon', {
											props: {
												type: 'ios-arrow-down'
											}
										})
									]),
									h('DropdownMenu', {
										slot: "list"
									}, [
										h('DropdownItem', {
											props: {
												name: 'showEdit'
											}
										}, '编辑'),
										h('DropdownItem', {
											props: {
												name: 'showDetail'
											}
										}, '详情'),
										h('DropdownItem', {
											props: {
												name: 'remove'
											}
										}, [
											h('span', {
												style: {
													color: 'red'
												}
											}, '删除')
										])
									])
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
				this.searchForm.pageNo = 1
				utils.search(this)
			},
			batchOpt(itemName) {
				if (itemName === 'batchActive') {
					utils.batchActive(this, 0)
				} else if (itemName === 'batchInactive') {
					utils.batchActive(this, 1)
				} else if (itemName === 'batchRemove') {
					utils.batchRemove(this)
				}
			},
			userOpt(itemName, row) {
				if (itemName === 'showEdit') {
					utils.showModal(this, 'edit')
					this.form = JSON.parse(JSON.stringify(row))
				} else if (itemName === 'showDetail') {
					utils.showModal(this, 'detail')
					this.form = JSON.parse(JSON.stringify(row))
				} else if (itemName === 'remove') {
					utils.remove(this, row)
				} else if (itemName === 'userDetail') {
					this.showUserDetailModal(row.userId)
				} else if (itemName === 'showUserSearch') {
					utils.showModal(this, 'userDetalSearch')
				}
			},
			showUserDetailModal(id) {
			  getUserById(id)
			    .then(res => {
			      const data = res.data
			      if (data.code === 1001) {
			        this.userDetailForm = data.data
			        this.modal.userDetail = true
			      } else {
			        this.$Message.error(data.message)
			      }
			    })
			    .catch(err => {
			      this.$Message.error(err)
			    })
			},
			setDetailModal(val) {
			  this.modal.userDetail = val
			},
			confirmSelection(id) {
			  this.modal.userDetalSearch = false
			  this.searchForm.userId = id
			  utils.search(this)
			},
			confirm() {
			  this.$refs.UserListSingle.confirmSelection()
			},
			add() {
				utils.add(this)
			},
			edit() {
				utils.edit(this)
			},
			active(row) {
				utils.active(this, row)
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
			}
		}
	}
</script>

<style>
</style>
