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
				<FormItem label="用户编号" prop="userId">
					<Input v-model="form.userId" style="width: 200px" placeholder="输入用户编号" />&nbsp;
					<Button @click="modal.select = true" type="primary">选择用户</Button>&nbsp;
				</FormItem>
				<FormItem label="充值金额" prop="amount">
					<InputNumber v-model="form.amount" placeholder="请输入充值金额" style="width: 100%;" />
				</FormItem>
				</FormItem>

			</Form>
			<div slot="footer">
				<Button type="text" size="large" @click="resetFormCancelModal('addForm', 'add')">取消</Button>
				<Button type="primary" size="large" @click="human" :loading="loading.add">添加</Button>
			</div>
		</Modal>
		<Modal v-model="modal.edit" title="修改" @on-visible-change="changeModalVisibleResetForm('editForm', $event)">
			<Form ref="editForm" :model="form" :label-width="80" :rules="validateRules">
				<FormItem label="用户编号" prop="userId">
					<InputNumber v-model="form.userId" placeholder="请输入用户编号" style="width: 100%;" />
				</FormItem>
				<FormItem label="充值金额" prop="amount">
					<InputNumber v-model="form.amount/100" placeholder="请输入充值金额" style="width: 100%;" />
				</FormItem>
			</Form>
			<div slot="footer">
				<Button type="text" size="large" @click="resetFormCancelModal('editForm', 'edit')">取消</Button>
				<Button type="primary" size="large" @click="edit" :loading="loading.edit">修改</Button>
			</div>
		</Modal>
		<Modal v-model="modal.search" title="高级搜索">
			<Form ref="searchForm" :model="searchForm" :label-width="80">
				<FormItem label="充值编号">
					<Row>
						<i-col span="11">
							<FormItem prop="idMin">
								<InputNumber v-model="searchForm.idMin" placeholder="请输入开始充值编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="idMax">
								<InputNumber v-model="searchForm.idMax" placeholder="请输入结束充值编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="交易编号" prop="transactionNo">
					<Input v-model="searchForm.transactionNo" placeholder="请输入交易编号" />
				</FormItem>
				<FormItem label="用户编号">
					<Row>
						<i-col span="11">
							<FormItem prop="userIdMin">
								<InputNumber v-model="searchForm.userIdMin" placeholder="请输入开始用户编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="userIdMax">
								<InputNumber v-model="searchForm.userIdMax" placeholder="请输入结束用户编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="充值金额">
					<Row>
						<i-col span="11">
							<FormItem prop="amountMin">
								<InputNumber v-model="searchForm.amountMin" placeholder="请输入开始充值金额" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="amountMax">
								<InputNumber v-model="searchForm.amountMax" placeholder="请输入结束充值金额" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="充值类型" prop="rechargeType">
					<Input v-model="searchForm.rechargeType" placeholder="请输入充值类型" />
				</FormItem>
				<FormItem label="是否成功">
					<Row>
						<i-col span="11">
							<FormItem prop="isSuccessMin">
								<InputNumber v-model="searchForm.isSuccessMin" placeholder="请输入开始是否成功" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="isSuccessMax">
								<InputNumber v-model="searchForm.isSuccessMax" placeholder="请输入结束是否成功" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="商户订单号" prop="outTradeNo">
					<Input v-model="searchForm.outTradeNo" placeholder="请输入商户订单号" />
				</FormItem>
				<FormItem label="支付系统订单号" prop="tradeNo">
					<Input v-model="searchForm.tradeNo" placeholder="请输入支付系统订单号" />
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
			<p>充值编号: <span v-text="form.id"></span></p>
			<p>交易编号: <span v-text="form.transactionNo"></span></p>
			<p>用户编号: <span v-text="form.userId"></span></p>
			<p>充值金额: <span v-text="form.amount/100"></span></p>
			<p>充值类型: <span v-text="form.rechargeType"></span></p>
			<p>是否成功: <span v-text="form.isSuccess==0?'成功':'失败'"></span></p>
			<p>商户订单号: <span v-text="form.outTradeNo"></span></p>
			<p>支付系统订单号: <span v-text="form.tradeNo"></span></p>
			<p>版本号: <span v-text="form.version"></span></p>
			<p>创建时间: <span v-text="form.createTime"></span></p>
			<p>更新时间: <span v-text="form.updateTime"></span></p>
			<p>是否激活: <span v-text="form.isActive"></span></p>

		</Modal>
		
		<Modal v-model="modal.select" title="选择用户" width="850">
			<UserDetailList @selectProduct="selectProduct" />
			<div slot="footer">
			</div>
		</Modal>
	</div>
</template>

<script>
	import * as utils from '@/api/utils'
	import UserDetailList from '@/view/user-detail/UserDetailList.vue'
	import {humanRecharge} from '@/api/funds.js'

	export default {
		name: 'FundsRecharge',
		components: {
			UserDetailList
		},
		data() {
			return {
				modal: {
					add: false,
					edit: false,
					search: false,
					detail: false,
					select:false
				},
				loading: {
					add: false,
					edit: false,
					search: false
				},
				urls: {
					addUrl: '/user-recharge/admin/human',
					batchAddUrl: '/funds-recharge/admin/batch-save',
					editUrl: '/funds-recharge/admin/update',
					batchEditUrl: '/funds-recharge/admin/batch-update',
					searchUrl: '/funds-recharge/admin/pager-cond',
					allUrl: '/funds-recharge/admin/all',
					removeUrl: '/funds-recharge/admin/remove/',
					batchRemoveUrl: '/funds-recharge/admin/batch-remove',
					detailUrl: '/funds-recharge/admin/one/',
					activeUrl: '/funds-recharge/admin/active',
					batchActiveUrl: '/funds-recharge/admin/batch-active'
				},
				page: {
					total: 0
				},
				form: {
					id: null,
					transactionNo: null,
					userId: null,
					amount: null,
					rechargeType: null,
					isSuccess: null,
					outTradeNo: null,
					tradeNo: null,
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
					amount: [{
						type: 'integer',
						required: true,
						message: '此项为必须项',
						trigger: 'blur, change'
					}],
					rechargeType: [{
						type: 'string',
						min: 1,
						max: 10,
						message: '必须1-10个字符',
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
					transactionNo: null,
					userId: null,
					userIdMin: null,
					userIdMax: null,
					amount: null,
					amountMin: null,
					amountMax: null,
					rechargeType: null,
					isSuccess: null,
					isSuccessMin: null,
					isSuccessMax: null,
					outTradeNo: null,
					tradeNo: null,
					version: null,
					versionMin: null,
					versionMax: null,
					createTime: null,
					createTimeMin: null,
					createTimeMax: null,
					updateTime: null,
					updateTimeMin: null,
					updateTimeMax: null,
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
							title: '充值编号',
							key: 'id',
							minWidth: 120,
							sortable: true
						},
						{
							title: '交易编号',
							key: 'transactionNo',
							minWidth: 120,
							sortable: true
						},
						{
							title: '用户编号',
							key: 'userId',
							minWidth: 120,
							sortable: true
						},
						{
							title: '充值金额',
							key: 'amount',
							minWidth: 120,
							sortable: true,
								render: (h, params) => {
									return h('span', params.row.amount/100)
								}
						},
						{
							title: '充值类型',
							key: 'rechargeType',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否成功',
							key: 'isSuccess',
							minWidth: 120,
							sortable: true,
							render: (h, params) => {
								let txt = null
								if(params.row.isSuccess == 0) {
									txt = '成功'
								} else if(params.row.isSuccess == 1) {
									txt = '失败'
								}
								return h('span', txt)
							}
						},
						{
							title: '商户订单号',
							key: 'outTradeNo',
							minWidth: 120,
							sortable: true
						},
						{
							title: '支付系统订单号',
							key: 'tradeNo',
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
							title: '创建时间',
							key: 'createTime',
							minWidth: 120,
							sortable: true
						},
						{
							title: '更新时间',
							key: 'updateTime',
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
				}
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
			},
			selectProduct(processRow) {
				this.form.userId = processRow.id
				this.modal.select = false
			},
			human() {
				var params = {
					userId: this.form.userId,
					amount: this.form.amount*100
				}
				humanRecharge(params).then(response => {
				  if (response.data.code !== 1001) {
					this.$Message.error(response.data.message)
				  } else {
					this.$Message.success(response.data.message)
					this.modal.add = false
					utils.search(this)
				  }
				}).catch(error => {
				  console.log(error)
				  this.$Message.error('设置失败，稍候再试')
				})
			}
		}
	}
</script>

<style>
</style>
