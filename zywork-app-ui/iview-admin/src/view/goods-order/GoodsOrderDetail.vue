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
				<FormItem label="订单编号">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderIdMin">
								<InputNumber v-model="searchForm.goodsOrderIdMin" placeholder="请输入开始订单编号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderIdMax">
								<InputNumber v-model="searchForm.goodsOrderIdMax" placeholder="请输入结束订单编号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="昵称" prop="userDetailNickname">
					<Input v-model="searchForm.userDetailNickname" placeholder="请输入昵称" />
				</FormItem>
				<FormItem label="收货人" prop="goodsOrderLogisticsRealName">
					<Input v-model="searchForm.goodsOrderLogisticsRealName" placeholder="请输入收货人" />
				</FormItem>
				<FormItem label="手机号" prop="goodsOrderLogisticsPhone">
					<Input v-model="searchForm.goodsOrderLogisticsPhone" placeholder="请输入手机号" />
				</FormItem>
				<FormItem label="订单号" prop="goodsOrderOrderNo">
					<Input v-model="searchForm.goodsOrderOrderNo" placeholder="请输入订单号" />
				</FormItem>
				<FormItem label="订单金额">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderTotalAmountMin">
								<InputNumber v-model="searchForm.goodsOrderTotalAmountMin" placeholder="请输入开始订单金额" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderTotalAmountMax">
								<InputNumber v-model="searchForm.goodsOrderTotalAmountMax" placeholder="请输入结束订单金额" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="实付金额">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderPayAmountMin">
								<InputNumber v-model="searchForm.goodsOrderPayAmountMin" placeholder="请输入开始实付金额" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderPayAmountMax">
								<InputNumber v-model="searchForm.goodsOrderPayAmountMax" placeholder="请输入结束实付金额" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="优惠金额">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderDiscountAmountMin">
								<InputNumber v-model="searchForm.goodsOrderDiscountAmountMin" placeholder="请输入开始优惠金额" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderDiscountAmountMax">
								<InputNumber v-model="searchForm.goodsOrderDiscountAmountMax" placeholder="请输入结束优惠金额" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="赠送积分">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderIntegralAmountMin">
								<InputNumber v-model="searchForm.goodsOrderIntegralAmountMin" placeholder="请输入开始赠送积分" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderIntegralAmountMax">
								<InputNumber v-model="searchForm.goodsOrderIntegralAmountMax" placeholder="请输入结束赠送积分" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="运费">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderExpressFeeMin">
								<InputNumber v-model="searchForm.goodsOrderExpressFeeMin" placeholder="请输入开始运费" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderExpressFeeMax">
								<InputNumber v-model="searchForm.goodsOrderExpressFeeMax" placeholder="请输入结束运费" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="订单状态">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderOrderStatusMin">
								<InputNumber v-model="searchForm.goodsOrderOrderStatusMin" placeholder="请输入开始订单状态" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderOrderStatusMax">
								<InputNumber v-model="searchForm.goodsOrderOrderStatusMax" placeholder="请输入结束订单状态" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="支付时间">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderPayTimeMin">
								<DatePicker @on-change="searchForm.goodsOrderPayTimeMin=$event" :value="searchForm.goodsOrderPayTimeMin"
								 placeholder="请输入开始支付时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderPayTimeMax">
								<DatePicker @on-change="searchForm.goodsOrderPayTimeMax=$event" :value="searchForm.goodsOrderPayTimeMax"
								 placeholder="请输入结束支付时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="支付方式">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderPayTypeMin">
								<InputNumber v-model="searchForm.goodsOrderPayTypeMin" placeholder="请输入开始支付方式" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderPayTypeMax">
								<InputNumber v-model="searchForm.goodsOrderPayTypeMax" placeholder="请输入结束支付方式" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="支付订单号" prop="goodsOrderTransactionNo">
					<Input v-model="searchForm.goodsOrderTransactionNo" placeholder="请输入支付订单号" />
				</FormItem>
				<FormItem label="是否支付成功">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderPaySuccessMin">
								<InputNumber v-model="searchForm.goodsOrderPaySuccessMin" placeholder="请输入开始是否支付成功" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderPaySuccessMax">
								<InputNumber v-model="searchForm.goodsOrderPaySuccessMax" placeholder="请输入结束是否支付成功" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="省" prop="goodsOrderLogisticsProvince">
					<Input v-model="searchForm.goodsOrderLogisticsProvince" placeholder="请输入省" />
				</FormItem>
				<FormItem label="市" prop="goodsOrderLogisticsCity">
					<Input v-model="searchForm.goodsOrderLogisticsCity" placeholder="请输入市" />
				</FormItem>
				<FormItem label="区/县" prop="goodsOrderLogisticsDistrict">
					<Input v-model="searchForm.goodsOrderLogisticsDistrict" placeholder="请输入区/县" />
				</FormItem>
				<FormItem label="详细地址" prop="goodsOrderLogisticsAddress">
					<Input v-model="searchForm.goodsOrderLogisticsAddress" placeholder="请输入详细地址" />
				</FormItem>
				<FormItem label="是否已发货">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderLogisticsIsDeliverMin">
								<InputNumber v-model="searchForm.goodsOrderLogisticsIsDeliverMin" placeholder="请输入开始是否已发货" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderLogisticsIsDeliverMax">
								<InputNumber v-model="searchForm.goodsOrderLogisticsIsDeliverMax" placeholder="请输入结束是否已发货" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="发货时间">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderDeliverTimeMin">
								<DatePicker @on-change="searchForm.goodsOrderDeliverTimeMin=$event" :value="searchForm.goodsOrderDeliverTimeMin"
								 placeholder="请输入开始发货时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderDeliverTimeMax">
								<DatePicker @on-change="searchForm.goodsOrderDeliverTimeMax=$event" :value="searchForm.goodsOrderDeliverTimeMax"
								 placeholder="请输入结束发货时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="成交时间">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderDealTimeMin">
								<DatePicker @on-change="searchForm.goodsOrderDealTimeMin=$event" :value="searchForm.goodsOrderDealTimeMin"
								 placeholder="请输入开始成交时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderDealTimeMax">
								<DatePicker @on-change="searchForm.goodsOrderDealTimeMax=$event" :value="searchForm.goodsOrderDealTimeMax"
								 placeholder="请输入结束成交时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="版本号">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderVersionMin">
								<InputNumber v-model="searchForm.goodsOrderVersionMin" placeholder="请输入开始版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderVersionMax">
								<InputNumber v-model="searchForm.goodsOrderVersionMax" placeholder="请输入结束版本号" style="width: 100%;" />
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="创建时间">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderCreateTimeMin">
								<DatePicker @on-change="searchForm.goodsOrderCreateTimeMin=$event" :value="searchForm.goodsOrderCreateTimeMin"
								 placeholder="请输入开始创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderCreateTimeMax">
								<DatePicker @on-change="searchForm.goodsOrderCreateTimeMax=$event" :value="searchForm.goodsOrderCreateTimeMax"
								 placeholder="请输入结束创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="更新时间">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderUpdateTimeMin">
								<DatePicker @on-change="searchForm.goodsOrderUpdateTimeMin=$event" :value="searchForm.goodsOrderUpdateTimeMin"
								 placeholder="请输入开始更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderUpdateTimeMax">
								<DatePicker @on-change="searchForm.goodsOrderUpdateTimeMax=$event" :value="searchForm.goodsOrderUpdateTimeMax"
								 placeholder="请输入结束更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
							</FormItem>
						</i-col>
					</Row>
				</FormItem>
				<FormItem label="是否激活">
					<Row>
						<i-col span="11">
							<FormItem prop="goodsOrderIsActiveMin">
								<InputNumber v-model="searchForm.goodsOrderIsActiveMin" placeholder="请输入开始是否激活" style="width: 100%;" />
							</FormItem>
						</i-col>
						<i-col span="2" style="text-align: center">-</i-col>
						<i-col span="11">
							<FormItem prop="goodsOrderIsActiveMax">
								<InputNumber v-model="searchForm.goodsOrderIsActiveMax" placeholder="请输入结束是否激活" style="width: 100%;" />
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
		<Modal v-model="modal.goodsItem" title="条目">
			
		</Modal>
		<Modal v-model="modal.goodsOrderLogistics" title="物流">
			
		</Modal>
		<Modal v-model="modal.detail" title="详情">
			<p>订单编号: <span v-text="form.goodsOrderId"></span></p>
			<p>昵称: <span v-text="form.userDetailNickname"></span></p>
			<p>收货人: <span v-text="form.goodsOrderLogisticsRealName"></span></p>
			<p>手机号: <span v-text="form.goodsOrderLogisticsPhone"></span></p>
			<p>订单号: <span v-text="form.goodsOrderOrderNo"></span></p>
			<p>订单金额: <span v-text="form.goodsOrderTotalAmount"></span></p>
			<p>实付金额: <span v-text="form.goodsOrderPayAmount"></span></p>
			<p>优惠金额: <span v-text="form.goodsOrderDiscountAmount"></span></p>
			<p>赠送积分: <span v-text="form.goodsOrderIntegralAmount"></span></p>
			<p>运费: <span v-text="form.goodsOrderExpressFee"></span></p>
			<p>订单状态: <span v-text="form.goodsOrderOrderStatus"></span></p>
			<p>支付时间: <span v-text="form.goodsOrderPayTime"></span></p>
			<p>支付方式: <span v-text="form.goodsOrderPayType"></span></p>
			<p>支付订单号: <span v-text="form.goodsOrderTransactionNo"></span></p>
			<p>是否支付成功: <span v-text="form.goodsOrderPaySuccess"></span></p>
			<p>省: <span v-text="form.goodsOrderLogisticsProvince"></span></p>
			<p>市: <span v-text="form.goodsOrderLogisticsCity"></span></p>
			<p>区/县: <span v-text="form.goodsOrderLogisticsDistrict"></span></p>
			<p>详细地址: <span v-text="form.goodsOrderLogisticsAddress"></span></p>
			<p>是否已发货: <span v-text="form.goodsOrderLogisticsIsDeliver"></span></p>
			<p>发货时间: <span v-text="form.goodsOrderDeliverTime"></span></p>
			<p>成交时间: <span v-text="form.goodsOrderDealTime"></span></p>
			<p>版本号: <span v-text="form.goodsOrderVersion"></span></p>
			<p>创建时间: <span v-text="form.goodsOrderCreateTime"></span></p>
			<p>更新时间: <span v-text="form.goodsOrderUpdateTime"></span></p>
			<p>是否激活: <span v-text="form.goodsOrderIsActive"></span></p>
		</Modal>
	</div>
</template>

<script>
	import * as utils from '@/api/utils'
	import axios from '@/libs/api.request'

	export default {
		name: 'GoodsOrderDetail',
		data() {
			return {
				modal: {
					add: false,
					edit: false,
					search: false,
					detail: false,
					goodsItem: false,
					goodsOrderLogistics: false
				},
				loading: {
					search: false
				},
				urls: {
					searchUrl: '/GoodsOrderDetail/admin/pager-cond',
					allUrl: '/GoodsOrderDetail/admin/all',
					detailUrl: '/GoodsOrderDetail/admin/one/',
					multiUrl: '/GoodsOrderDetail/admin/multi/',
					goodsItemUrl: '/goods-order-item/admin/pager-cond'
				},
				page: {
					total: 0
				},
				form: {
					goodsOrderId: null,
					goodsOrderUserId: null,
					goodsOrderOrderNo: null,
					goodsOrderTotalAmount: null,
					goodsOrderPayAmount: null,
					goodsOrderDiscountAmount: null,
					goodsOrderIntegralAmount: null,
					goodsOrderExpressFee: null,
					goodsOrderOrderStatus: null,
					goodsOrderPayTime: null,
					goodsOrderPayType: null,
					goodsOrderTransactionNo: null,
					goodsOrderPaySuccess: null,
					goodsOrderDeliverTime: null,
					goodsOrderDealTime: null,
					goodsOrderVersion: null,
					goodsOrderCreateTime: null,
					goodsOrderUpdateTime: null,
					goodsOrderIsActive: null,
					userDetailNickname: null,
					goodsOrderLogisticsRealName: null,
					goodsOrderLogisticsPhone: null,
					goodsOrderLogisticsProvince: null,
					goodsOrderLogisticsCity: null,
					goodsOrderLogisticsDistrict: null,
					goodsOrderLogisticsAddress: null,
					goodsOrderLogisticsIsDeliver: null,
					goodsOrderLogisticsLogisticsCompany: null,
					goodsOrderLogisticsLogisticsCode: null,
					goodsOrderLogisticsLogisticsNo: null,

				},
				searchForm: {
					pageNo: 1,
					pageSize: 10,
					sortColumn: null,
					sortOrder: null,
					goodsOrderId: null,
					goodsOrderIdMin: null,
					goodsOrderIdMax: null,
					goodsOrderUserId: null,
					goodsOrderUserIdMin: null,
					goodsOrderUserIdMax: null,
					goodsOrderOrderNo: null,
					goodsOrderTotalAmount: null,
					goodsOrderTotalAmountMin: null,
					goodsOrderTotalAmountMax: null,
					goodsOrderPayAmount: null,
					goodsOrderPayAmountMin: null,
					goodsOrderPayAmountMax: null,
					goodsOrderDiscountAmount: null,
					goodsOrderDiscountAmountMin: null,
					goodsOrderDiscountAmountMax: null,
					goodsOrderIntegralAmount: null,
					goodsOrderIntegralAmountMin: null,
					goodsOrderIntegralAmountMax: null,
					goodsOrderExpressFee: null,
					goodsOrderExpressFeeMin: null,
					goodsOrderExpressFeeMax: null,
					goodsOrderOrderStatus: null,
					goodsOrderOrderStatusMin: null,
					goodsOrderOrderStatusMax: null,
					goodsOrderPayTime: null,
					goodsOrderPayTimeMin: null,
					goodsOrderPayTimeMax: null,
					goodsOrderPayType: null,
					goodsOrderPayTypeMin: null,
					goodsOrderPayTypeMax: null,
					goodsOrderTransactionNo: null,
					goodsOrderPaySuccess: null,
					goodsOrderPaySuccessMin: null,
					goodsOrderPaySuccessMax: null,
					goodsOrderDeliverTime: null,
					goodsOrderDeliverTimeMin: null,
					goodsOrderDeliverTimeMax: null,
					goodsOrderDealTime: null,
					goodsOrderDealTimeMin: null,
					goodsOrderDealTimeMax: null,
					goodsOrderVersion: null,
					goodsOrderVersionMin: null,
					goodsOrderVersionMax: null,
					goodsOrderCreateTime: null,
					goodsOrderCreateTimeMin: null,
					goodsOrderCreateTimeMax: null,
					goodsOrderUpdateTime: null,
					goodsOrderUpdateTimeMin: null,
					goodsOrderUpdateTimeMax: null,
					goodsOrderIsActive: null,
					goodsOrderIsActiveMin: null,
					goodsOrderIsActiveMax: null,
					userDetailNickname: null,
					goodsOrderLogisticsRealName: null,
					goodsOrderLogisticsPhone: null,
					goodsOrderLogisticsProvince: null,
					goodsOrderLogisticsCity: null,
					goodsOrderLogisticsDistrict: null,
					goodsOrderLogisticsAddress: null,
					goodsOrderLogisticsIsDeliver: null,
					goodsOrderLogisticsIsDeliverMin: null,
					goodsOrderLogisticsIsDeliverMax: null,
					goodsOrderLogisticsLogisticsCompany: null,
					goodsOrderLogisticsLogisticsCode: null,
					goodsOrderLogisticsLogisticsNo: null,

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
							title: '订单编号',
							key: 'goodsOrderId',
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
							title: '收货人',
							key: 'goodsOrderLogisticsRealName',
							minWidth: 120,
							sortable: true
						},
						{
							title: '手机号',
							key: 'goodsOrderLogisticsPhone',
							minWidth: 120,
							sortable: true
						},
						{
							title: '订单号',
							key: 'goodsOrderOrderNo',
							minWidth: 120,
							sortable: true
						},
						{
							title: '订单金额',
							key: 'goodsOrderTotalAmount',
							minWidth: 120,
							sortable: true
						},
						{
							title: '实付金额',
							key: 'goodsOrderPayAmount',
							minWidth: 120,
							sortable: true
						},
						{
							title: '优惠金额',
							key: 'goodsOrderDiscountAmount',
							minWidth: 120,
							sortable: true
						},
						{
							title: '赠送积分',
							key: 'goodsOrderIntegralAmount',
							minWidth: 120,
							sortable: true
						},
						{
							title: '运费',
							key: 'goodsOrderExpressFee',
							minWidth: 120,
							sortable: true
						},
						{
							title: '订单状态',
							key: 'goodsOrderOrderStatus',
							minWidth: 120,
							sortable: true,
							render: (h, params) => {
								let text = null
								if (params.row.goodsOrderOrderStatus == 0) {
									text = "待付款"
								} else if (params.row.goodsOrderOrderStatus == 1) {
									text = "已付款"
								} else if (params.row.goodsOrderOrderStatus == 2) {
									text = "支付失败"
								} else if (params.row.goodsOrderOrderStatus == 3) {
									text = "待发货"
								} else if (params.row.goodsOrderOrderStatus == 4) {
									text = "待收货"
								} else if (params.row.goodsOrderOrderStatus == 5) {
									text = "已确认收货"
								} else if (params.row.goodsOrderOrderStatus == 6) {
									text = "已取消"
								} else if (params.row.goodsOrderOrderStatus == 7) {
									text = "已申请退货"
								} else if (params.row.goodsOrderOrderStatus == 8) {
									text = "拒绝退货"
								} else if (params.row.goodsOrderOrderStatus == 9) {
									text = "退货中"
								} else if (params.row.goodsOrderOrderStatus == 10) {
									text = "已退货"
								}
								return h('span', text)
							}
						},
						{
							title: '支付时间',
							key: 'goodsOrderPayTime',
							minWidth: 120,
							sortable: true
						},
						{
							title: '支付方式',
							key: 'goodsOrderPayType',
							minWidth: 120,
							sortable: true,
							render: (h, params) => {
								let text = null
								if (params.row.goodsOrderPayType == 0) {
									text = "微信支付"
								} else if (params.row.goodsOrderPayType == 1) {
									text = "支付宝支付"
								} else if (params.row.goodsOrderPayType == 2) {
									text = "银联支付"
								} else if (params.row.goodsOrderPayType == 3) {
									text = "余额支付"
								}
								return h('span', text)
							}
						},
						{
							title: '支付订单号',
							key: 'goodsOrderTransactionNo',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否支付成功',
							key: 'goodsOrderPaySuccess',
							minWidth: 150,
							sortable: true
						},
						{
							title: '省',
							key: 'goodsOrderLogisticsProvince',
							minWidth: 120,
							sortable: true
						},
						{
							title: '市',
							key: 'goodsOrderLogisticsCity',
							minWidth: 120,
							sortable: true
						},
						{
							title: '区/县',
							key: 'goodsOrderLogisticsDistrict',
							minWidth: 120,
							sortable: true
						},
						{
							title: '详细地址',
							key: 'goodsOrderLogisticsAddress',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否已发货',
							key: 'goodsOrderLogisticsIsDeliver',
							minWidth: 120,
							sortable: true
						},
						{
							title: '发货时间',
							key: 'goodsOrderDeliverTime',
							minWidth: 120,
							sortable: true
						},
						{
							title: '成交时间',
							key: 'goodsOrderDealTime',
							minWidth: 120,
							sortable: true
						},
						{
							title: '创建时间',
							key: 'goodsOrderCreateTime',
							minWidth: 120,
							sortable: true
						},
						{
							title: '更新时间',
							key: 'goodsOrderUpdateTime',
							minWidth: 120,
							sortable: true
						},
						{
							title: '版本号',
							key: 'goodsOrderVersion',
							minWidth: 120,
							sortable: true
						},
						{
							title: '是否激活',
							key: 'goodsOrderIsActive',
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
										]),
										h('DropdownItem', {
											props: {
												name: 'goodsItemModal'
											}
										}, '查看商品条目'),
										h('DropdownItem', {
											props: {
												name: 'goodsOrderLogistics'
											}
										}, '查看商品物流')
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
				} else if(itemName === 'goodsItemModal') {
					var self = this
					this.modal.goodsItem = true
					axios.request({
						url: self.urls.goodsItemUrl,
						method: 'POST',
						data: {
							'orderId': row.goodsOrderId
						}
					}).then(response => {
						console.log(response)
					}).catch(error => {
						console.log(error)
						self.$Message.error('数据失败，稍候再试')
					})
				} else if(itemName === 'goodsOrderLogistics') {
					this.modal.goodsOrderLogistics = true
					
				}
			},
		}
	}
</script>

<style>
</style>
