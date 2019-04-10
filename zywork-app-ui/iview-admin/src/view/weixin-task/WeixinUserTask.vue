<template>
  <div>
    <Row>
      <i-col span="24">
        <Card>
          <Button @click="showModal('search')" type="primary">高级搜索</Button>&nbsp;
          <Tooltip content="刷新" placement="right">
            <Button icon="md-refresh" type="success" shape="circle" @click="search"></Button>
          </Tooltip>
          <Table ref="dataTable" stripe :loading="table.loading" :columns="table.tableColumns" :data="table.tableDetails" style="margin-top:20px;" @on-selection-change="changeSelection" @on-sort-change="changeSort"></Table>
          <div style="margin: 20px;overflow: hidden">
            <div style="float: right;">
              <Page :total="page.total" :current="searchForm.pageNo" @on-change="changePageNo" @on-page-size-change="changePageSize" showSizer showTotal></Page>
            </div>
          </div>
        </Card>
      </i-col>
    </Row>
    <Modal v-model="modal.search" title="高级搜索">
      <Form ref="searchForm" :model="searchForm" :label-width="80">
        <FormItem label="任务编号"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskIdMin">
	<InputNumber v-model="searchForm.weixinTaskIdMin" placeholder="请输入开始任务编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskIdMax">
	<InputNumber v-model="searchForm.weixinTaskIdMax" placeholder="请输入结束任务编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="发布用户编号"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskUserIdMin">
	<InputNumber v-model="searchForm.weixinTaskUserIdMin" placeholder="请输入开始发布用户编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskUserIdMax">
	<InputNumber v-model="searchForm.weixinTaskUserIdMax" placeholder="请输入结束发布用户编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="任务标题" prop="weixinTaskTitle">
	<Input v-model="searchForm.weixinTaskTitle" placeholder="请输入任务标题"/>
</FormItem>
<FormItem label="加友总数"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskTotalNumberMin">
	<InputNumber v-model="searchForm.weixinTaskTotalNumberMin" placeholder="请输入开始加友总数" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskTotalNumberMax">
	<InputNumber v-model="searchForm.weixinTaskTotalNumberMax" placeholder="请输入结束加友总数" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="已确认数"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskConfirmNumberMin">
	<InputNumber v-model="searchForm.weixinTaskConfirmNumberMin" placeholder="请输入开始已确认数" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskConfirmNumberMax">
	<InputNumber v-model="searchForm.weixinTaskConfirmNumberMax" placeholder="请输入结束已确认数" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="奖励积分"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskIntegralMin">
	<InputNumber v-model="searchForm.weixinTaskIntegralMin" placeholder="请输入开始奖励积分" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskIntegralMax">
	<InputNumber v-model="searchForm.weixinTaskIntegralMax" placeholder="请输入结束奖励积分" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="任务描述" prop="weixinTaskDescription">
	<Input v-model="searchForm.weixinTaskDescription" placeholder="请输入任务描述"/>
</FormItem>
<FormItem label="任务状态"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskTaskStatusMin">
	<InputNumber v-model="searchForm.weixinTaskTaskStatusMin" placeholder="请输入开始任务状态" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskTaskStatusMax">
	<InputNumber v-model="searchForm.weixinTaskTaskStatusMax" placeholder="请输入结束任务状态" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="创建时间"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskCreateTimeMin">
	<DatePicker @on-change="searchForm.weixinTaskCreateTimeMin=$event" :value="searchForm.weixinTaskCreateTimeMin" placeholder="请输入开始创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskCreateTimeMax">
	<DatePicker @on-change="searchForm.weixinTaskCreateTimeMax=$event" :value="searchForm.weixinTaskCreateTimeMax" placeholder="请输入结束创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="更新时间"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskUpdateTimeMin">
	<DatePicker @on-change="searchForm.weixinTaskUpdateTimeMin=$event" :value="searchForm.weixinTaskUpdateTimeMin" placeholder="请输入开始更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskUpdateTimeMax">
	<DatePicker @on-change="searchForm.weixinTaskUpdateTimeMax=$event" :value="searchForm.weixinTaskUpdateTimeMax" placeholder="请输入结束更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="版本号"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskVersionMin">
	<InputNumber v-model="searchForm.weixinTaskVersionMin" placeholder="请输入开始版本号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskVersionMax">
	<InputNumber v-model="searchForm.weixinTaskVersionMax" placeholder="请输入结束版本号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="是否激活"><Row>
	<i-col span="11">
	<FormItem prop="weixinTaskIsActiveMin">
	<InputNumber v-model="searchForm.weixinTaskIsActiveMin" placeholder="请输入开始是否激活" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="weixinTaskIsActiveMax">
	<InputNumber v-model="searchForm.weixinTaskIsActiveMax" placeholder="请输入结束是否激活" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="昵称" prop="userDetailNickname">
	<Input v-model="searchForm.userDetailNickname" placeholder="请输入昵称"/>
</FormItem>
<FormItem label="头像地址" prop="userDetailHeadicon">
	<Input v-model="searchForm.userDetailHeadicon" placeholder="请输入头像地址"/>
</FormItem>
<FormItem label="手机号" prop="userPhone">
	<Input v-model="searchForm.userPhone" placeholder="请输入手机号"/>
</FormItem>

      </Form>
      <div slot="footer">
        <Button type="text" size="large" @click="resetForm('searchForm')">清空</Button>
        <Button type="text" size="large" @click="cancelModal('search')">取消</Button>
        <Button type="primary" size="large" @click="searchOkModal('search')" :loading="loading.search">搜索</Button>
      </div>
    </Modal>
    <Modal v-model="modal.detail" title="详情">
      <p>任务编号: <span v-text="form.weixinTaskId"></span></p>
<p>发布用户编号: <span v-text="form.weixinTaskUserId"></span></p>
<p>任务标题: <span v-text="form.weixinTaskTitle"></span></p>
<p>加友总数: <span v-text="form.weixinTaskTotalNumber"></span></p>
<p>已确认数: <span v-text="form.weixinTaskConfirmNumber"></span></p>
<p>奖励积分: <span v-text="form.weixinTaskIntegral"></span></p>
<p>任务描述: <span v-text="form.weixinTaskDescription"></span></p>
<p>任务状态: <span v-text="form.weixinTaskTaskStatus"></span></p>
<p>创建时间: <span v-text="form.weixinTaskCreateTime"></span></p>
<p>更新时间: <span v-text="form.weixinTaskUpdateTime"></span></p>
<p>版本号: <span v-text="form.weixinTaskVersion"></span></p>
<p>是否激活: <span v-text="form.weixinTaskIsActive"></span></p>
<p>昵称: <span v-text="form.userDetailNickname"></span></p>
<p>头像地址: <span v-text="form.userDetailHeadicon"></span></p>
<p>手机号: <span v-text="form.userPhone"></span></p>

    </Modal>
  </div>
</template>

<script>
  import * as utils from '@/api/utils'

  export default {
    name: 'WeixinUserTask',
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
          searchUrl: '/WeixinUserTask/admin/pager-cond',
          allUrl: '/WeixinUserTask/admin/all',
          detailUrl: '/WeixinUserTask/admin/one/',
          multiUrl: '/WeixinUserTask/admin/multi/'
        },
        page: {
          total: 0
        },
        form: {
          weixinTaskId: null,
weixinTaskUserId: null,
weixinTaskTitle: null,
weixinTaskTotalNumber: null,
weixinTaskConfirmNumber: null,
weixinTaskIntegral: null,
weixinTaskDescription: null,
weixinTaskTaskStatus: null,
weixinTaskCreateTime: null,
weixinTaskUpdateTime: null,
weixinTaskVersion: null,
weixinTaskIsActive: null,
userDetailNickname: null,
userDetailHeadicon: null,
userPhone: null,

        },
        searchForm: {
          pageNo: 1,
          pageSize: 10,
          sortColumn: null,
          sortOrder: null,
          weixinTaskId: null,
weixinTaskIdMin: null, 
weixinTaskIdMax: null, 
weixinTaskUserId: null,
weixinTaskUserIdMin: null, 
weixinTaskUserIdMax: null, 
weixinTaskTitle: null,
weixinTaskTotalNumber: null,
weixinTaskTotalNumberMin: null, 
weixinTaskTotalNumberMax: null, 
weixinTaskConfirmNumber: null,
weixinTaskConfirmNumberMin: null, 
weixinTaskConfirmNumberMax: null, 
weixinTaskIntegral: null,
weixinTaskIntegralMin: null, 
weixinTaskIntegralMax: null, 
weixinTaskDescription: null,
weixinTaskTaskStatus: null,
weixinTaskTaskStatusMin: null, 
weixinTaskTaskStatusMax: null, 
weixinTaskCreateTime: null,
weixinTaskCreateTimeMin: null, 
weixinTaskCreateTimeMax: null, 
weixinTaskUpdateTime: null,
weixinTaskUpdateTimeMin: null, 
weixinTaskUpdateTimeMax: null, 
weixinTaskVersion: null,
weixinTaskVersionMin: null, 
weixinTaskVersionMax: null, 
weixinTaskIsActive: null,
weixinTaskIsActiveMin: null, 
weixinTaskIsActiveMax: null, 
userDetailNickname: null,
userDetailHeadicon: null,
userPhone: null,

        },
        table: {
          loading: false,
          tableColumns: [
            {
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
key: 'weixinTaskId',
minWidth: 120,
sortable: true
},
{
title: '发布用户编号',
key: 'weixinTaskUserId',
minWidth: 120,
sortable: true
},
{
title: '任务标题',
key: 'weixinTaskTitle',
minWidth: 120,
sortable: true
},
{
title: '加友总数',
key: 'weixinTaskTotalNumber',
minWidth: 120,
sortable: true
},
{
title: '已确认数',
key: 'weixinTaskConfirmNumber',
minWidth: 120,
sortable: true
},
{
title: '奖励积分',
key: 'weixinTaskIntegral',
minWidth: 120,
sortable: true
},
{
title: '任务描述',
key: 'weixinTaskDescription',
minWidth: 120,
sortable: true
},
{
title: '任务状态',
key: 'weixinTaskTaskStatus',
minWidth: 120,
sortable: true
},
{
title: '创建时间',
key: 'weixinTaskCreateTime',
minWidth: 120,
sortable: true
},
{
title: '更新时间',
key: 'weixinTaskUpdateTime',
minWidth: 120,
sortable: true
},
{
title: '版本号',
key: 'weixinTaskVersion',
minWidth: 120,
sortable: true
},
{
title: '是否激活',
key: 'weixinTaskIsActive',
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
title: '头像地址',
key: 'userDetailHeadicon',
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
      }
    }
  }
</script>

<style>
</style>
