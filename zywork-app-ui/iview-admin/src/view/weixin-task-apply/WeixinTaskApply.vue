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
          <Table ref="dataTable" stripe :loading="table.loading" :columns="table.tableColumns" :data="table.tableDetails" style="margin-top:20px;" @on-selection-change="changeSelection" @on-sort-change="changeSort"></Table>
          <div style="margin: 20px;overflow: hidden">
            <div style="float: right;">
              <Page :total="page.total" :current="searchForm.pageNo" @on-change="changePageNo" @on-page-size-change="changePageSize" showSizer showTotal></Page>
            </div>
          </div>
        </Card>
      </i-col>
    </Row>
    <Modal v-model="modal.add" title="添加" @on-visible-change="changeModalVisibleResetForm('addForm', $event)">
      <Form ref="addForm" :model="form" :label-width="80" :rules="validateRules">
        <FormItem label="任务编号" prop="taskId">
	<InputNumber v-model="form.taskId" placeholder="请输入任务编号" style="width: 100%;"/>
</FormItem>
<FormItem label="报名用户编号" prop="userId">
	<InputNumber v-model="form.userId" placeholder="请输入报名用户编号" style="width: 100%;"/>
</FormItem>
<FormItem label="发布方确认状态" prop="pubConfirmStatus">
	<InputNumber v-model="form.pubConfirmStatus" placeholder="请输入发布方确认状态" style="width: 100%;"/>
</FormItem>
<FormItem label="发布方确认时间" prop="pubConfirmTime">
	<DatePicker @on-change="form.pubConfirmTime=$event" :value="form.pubConfirmTime" placeholder="请输入发布方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
<FormItem label="报名方确认状态" prop="appConfirmStatus">
	<InputNumber v-model="form.appConfirmStatus" placeholder="请输入报名方确认状态" style="width: 100%;"/>
</FormItem>
<FormItem label="报名方确认时间" prop="appConfirmTime">
	<DatePicker @on-change="form.appConfirmTime=$event" :value="form.appConfirmTime" placeholder="请输入报名方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>

      </Form>
      <div slot="footer">
        <Button type="text" size="large" @click="resetFormCancelModal('addForm', 'add')">取消</Button>
        <Button type="primary" size="large" @click="add" :loading="loading.add">添加</Button>
      </div>
    </Modal>
    <Modal v-model="modal.edit" title="修改" @on-visible-change="changeModalVisibleResetForm('editForm', $event)">
      <Form ref="editForm" :model="form" :label-width="80" :rules="validateRules">
        <FormItem label="任务编号" prop="taskId">
	<InputNumber v-model="form.taskId" placeholder="请输入任务编号" style="width: 100%;"/>
</FormItem>
<FormItem label="报名用户编号" prop="userId">
	<InputNumber v-model="form.userId" placeholder="请输入报名用户编号" style="width: 100%;"/>
</FormItem>
<FormItem label="发布方确认状态" prop="pubConfirmStatus">
	<InputNumber v-model="form.pubConfirmStatus" placeholder="请输入发布方确认状态" style="width: 100%;"/>
</FormItem>
<FormItem label="发布方确认时间" prop="pubConfirmTime">
	<DatePicker @on-change="form.pubConfirmTime=$event" :value="form.pubConfirmTime" placeholder="请输入发布方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
<FormItem label="报名方确认状态" prop="appConfirmStatus">
	<InputNumber v-model="form.appConfirmStatus" placeholder="请输入报名方确认状态" style="width: 100%;"/>
</FormItem>
<FormItem label="报名方确认时间" prop="appConfirmTime">
	<DatePicker @on-change="form.appConfirmTime=$event" :value="form.appConfirmTime" placeholder="请输入报名方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>

      </Form>
      <div slot="footer">
        <Button type="text" size="large" @click="resetFormCancelModal('editForm', 'edit')">取消</Button>
        <Button type="primary" size="large" @click="edit" :loading="loading.edit">修改</Button>
      </div>
    </Modal>
    <Modal v-model="modal.search" title="高级搜索">
      <Form ref="searchForm" :model="searchForm" :label-width="80">
        <FormItem label="报名编号"><Row>
	<i-col span="11">
	<FormItem prop="idMin">
	<InputNumber v-model="searchForm.idMin" placeholder="请输入开始报名编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="idMax">
	<InputNumber v-model="searchForm.idMax" placeholder="请输入结束报名编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="任务编号"><Row>
	<i-col span="11">
	<FormItem prop="taskIdMin">
	<InputNumber v-model="searchForm.taskIdMin" placeholder="请输入开始任务编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="taskIdMax">
	<InputNumber v-model="searchForm.taskIdMax" placeholder="请输入结束任务编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="报名用户编号"><Row>
	<i-col span="11">
	<FormItem prop="userIdMin">
	<InputNumber v-model="searchForm.userIdMin" placeholder="请输入开始报名用户编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="userIdMax">
	<InputNumber v-model="searchForm.userIdMax" placeholder="请输入结束报名用户编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="发布方确认状态"><Row>
	<i-col span="11">
	<FormItem prop="pubConfirmStatusMin">
	<InputNumber v-model="searchForm.pubConfirmStatusMin" placeholder="请输入开始发布方确认状态" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="pubConfirmStatusMax">
	<InputNumber v-model="searchForm.pubConfirmStatusMax" placeholder="请输入结束发布方确认状态" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="发布方确认时间"><Row>
	<i-col span="11">
	<FormItem prop="pubConfirmTimeMin">
	<DatePicker @on-change="searchForm.pubConfirmTimeMin=$event" :value="searchForm.pubConfirmTimeMin" placeholder="请输入开始发布方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="pubConfirmTimeMax">
	<DatePicker @on-change="searchForm.pubConfirmTimeMax=$event" :value="searchForm.pubConfirmTimeMax" placeholder="请输入结束发布方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="报名方确认状态"><Row>
	<i-col span="11">
	<FormItem prop="appConfirmStatusMin">
	<InputNumber v-model="searchForm.appConfirmStatusMin" placeholder="请输入开始报名方确认状态" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="appConfirmStatusMax">
	<InputNumber v-model="searchForm.appConfirmStatusMax" placeholder="请输入结束报名方确认状态" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="报名方确认时间"><Row>
	<i-col span="11">
	<FormItem prop="appConfirmTimeMin">
	<DatePicker @on-change="searchForm.appConfirmTimeMin=$event" :value="searchForm.appConfirmTimeMin" placeholder="请输入开始报名方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="appConfirmTimeMax">
	<DatePicker @on-change="searchForm.appConfirmTimeMax=$event" :value="searchForm.appConfirmTimeMax" placeholder="请输入结束报名方确认时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="创建时间"><Row>
	<i-col span="11">
	<FormItem prop="createTimeMin">
	<DatePicker @on-change="searchForm.createTimeMin=$event" :value="searchForm.createTimeMin" placeholder="请输入开始创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="createTimeMax">
	<DatePicker @on-change="searchForm.createTimeMax=$event" :value="searchForm.createTimeMax" placeholder="请输入结束创建时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="更新时间"><Row>
	<i-col span="11">
	<FormItem prop="updateTimeMin">
	<DatePicker @on-change="searchForm.updateTimeMin=$event" :value="searchForm.updateTimeMin" placeholder="请输入开始更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="updateTimeMax">
	<DatePicker @on-change="searchForm.updateTimeMax=$event" :value="searchForm.updateTimeMax" placeholder="请输入结束更新时间" type="datetime" format="yyyy-MM-dd HH:mm:ss" style="width: 100%;"></DatePicker>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="版本号"><Row>
	<i-col span="11">
	<FormItem prop="versionMin">
	<InputNumber v-model="searchForm.versionMin" placeholder="请输入开始版本号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="versionMax">
	<InputNumber v-model="searchForm.versionMax" placeholder="请输入结束版本号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="是否激活"><Row>
	<i-col span="11">
	<FormItem prop="isActiveMin">
	<InputNumber v-model="searchForm.isActiveMin" placeholder="请输入开始是否激活" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="isActiveMax">
	<InputNumber v-model="searchForm.isActiveMax" placeholder="请输入结束是否激活" style="width: 100%;"/>
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
      <p>报名编号: <span v-text="form.id"></span></p>
<p>任务编号: <span v-text="form.taskId"></span></p>
<p>报名用户编号: <span v-text="form.userId"></span></p>
<p>发布方确认状态: <span v-text="form.pubConfirmStatus"></span></p>
<p>发布方确认时间: <span v-text="form.pubConfirmTime"></span></p>
<p>报名方确认状态: <span v-text="form.appConfirmStatus"></span></p>
<p>报名方确认时间: <span v-text="form.appConfirmTime"></span></p>
<p>创建时间: <span v-text="form.createTime"></span></p>
<p>更新时间: <span v-text="form.updateTime"></span></p>
<p>版本号: <span v-text="form.version"></span></p>
<p>是否激活: <span v-text="form.isActive"></span></p>

    </Modal>
  </div>
</template>

<script>
  import * as utils from '@/api/utils'

  export default {
    name: 'WeixinTaskApply',
    data() {
      return {
        modal: {
          add: false,
          edit: false,
          search: false,
          detail: false
        },
        loading: {
          add: false,
          edit: false,
          search: false
        },
        urls: {
          addUrl: '/weixin-task-apply/admin/save',
          batchAddUrl: '/weixin-task-apply/admin/batch-save',
          editUrl: '/weixin-task-apply/admin/update',
          batchEditUrl: '/weixin-task-apply/admin/batch-update',
          searchUrl: '/weixin-task-apply/admin/pager-cond',
          allUrl: '/weixin-task-apply/admin/all',
          removeUrl: '/weixin-task-apply/admin/remove/',
          batchRemoveUrl: '/weixin-task-apply/admin/batch-remove',
          detailUrl: '/weixin-task-apply/admin/one/',
          activeUrl: '/weixin-task-apply/admin/active',
          batchActiveUrl: '/weixin-task-apply/admin/batch-active'
        },
        page: {
          total: 0
        },
        form: {
          id: null,
taskId: null,
userId: null,
pubConfirmStatus: null,
pubConfirmTime: null,
appConfirmStatus: null,
appConfirmTime: null,
createTime: null,
updateTime: null,
version: null,
isActive: null,

        },
        validateRules: {
          taskId: [
{type: 'integer', required: true, message: '此项为必须项', trigger: 'blur, change'}
],
userId: [
{type: 'integer', required: true, message: '此项为必须项', trigger: 'blur, change'}
],

        },
        searchForm: {
          pageNo: 1,
          pageSize: 10,
          sortColumn: null,
          sortOrder: null,
          id: null,
idMin: null, 
idMax: null, 
taskId: null,
taskIdMin: null, 
taskIdMax: null, 
userId: null,
userIdMin: null, 
userIdMax: null, 
pubConfirmStatus: null,
pubConfirmStatusMin: null, 
pubConfirmStatusMax: null, 
pubConfirmTime: null,
pubConfirmTimeMin: null, 
pubConfirmTimeMax: null, 
appConfirmStatus: null,
appConfirmStatusMin: null, 
appConfirmStatusMax: null, 
appConfirmTime: null,
appConfirmTimeMin: null, 
appConfirmTimeMax: null, 
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
title: '报名编号',
key: 'id',
minWidth: 120,
sortable: true
},
{
title: '任务编号',
key: 'taskId',
minWidth: 120,
sortable: true
},
{
title: '报名用户编号',
key: 'userId',
minWidth: 120,
sortable: true
},
{
title: '发布方确认状态',
key: 'pubConfirmStatus',
minWidth: 120,
sortable: true
},
{
title: '发布方确认时间',
key: 'pubConfirmTime',
minWidth: 120,
sortable: true
},
{
title: '报名方确认状态',
key: 'appConfirmStatus',
minWidth: 120,
sortable: true
},
{
title: '报名方确认时间',
key: 'appConfirmTime',
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
                      slot:"list"
                    },[
                      h('DropdownItem', {
                        props:{
                          name: 'showEdit'
                        }
                      }, '编辑'),
                      h('DropdownItem', {
                        props:{
                          name: 'showDetail'
                        }
                      }, '详情'),
                      h('DropdownItem', {
                        props:{
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
      }
    }
  }
</script>

<style>
</style>
