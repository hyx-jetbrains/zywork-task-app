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
        <FormItem label="店铺编号" prop="shopId">
	<InputNumber v-model="form.shopId" placeholder="请输入店铺编号" style="width: 100%;"/>
</FormItem>
<FormItem label="类目编号" prop="categoryId">
	<InputNumber v-model="form.categoryId" placeholder="请输入类目编号" style="width: 100%;"/>
</FormItem>
<FormItem label="图文详情" prop="intro">
	<Input v-model="form.intro" placeholder="请输入图文详情"/>
</FormItem>
<FormItem label="上架状态" prop="shelfStatus">
	<InputNumber v-model="form.shelfStatus" placeholder="请输入上架状态" style="width: 100%;"/>
</FormItem>

      </Form>
      <div slot="footer">
        <Button type="text" size="large" @click="resetFormCancelModal('addForm', 'add')">取消</Button>
        <Button type="primary" size="large" @click="add" :loading="loading.add">添加</Button>
      </div>
    </Modal>
    <Modal v-model="modal.edit" title="修改" @on-visible-change="changeModalVisibleResetForm('editForm', $event)">
      <Form ref="editForm" :model="form" :label-width="80" :rules="validateRules">
        <FormItem label="店铺编号" prop="shopId">
	<InputNumber v-model="form.shopId" placeholder="请输入店铺编号" style="width: 100%;"/>
</FormItem>
<FormItem label="类目编号" prop="categoryId">
	<InputNumber v-model="form.categoryId" placeholder="请输入类目编号" style="width: 100%;"/>
</FormItem>
<FormItem label="图文详情" prop="intro">
	<Input v-model="form.intro" placeholder="请输入图文详情"/>
</FormItem>
<FormItem label="上架状态" prop="shelfStatus">
	<InputNumber v-model="form.shelfStatus" placeholder="请输入上架状态" style="width: 100%;"/>
</FormItem>

      </Form>
      <div slot="footer">
        <Button type="text" size="large" @click="resetFormCancelModal('editForm', 'edit')">取消</Button>
        <Button type="primary" size="large" @click="edit" :loading="loading.edit">修改</Button>
      </div>
    </Modal>
    <Modal v-model="modal.search" title="高级搜索">
      <Form ref="searchForm" :model="searchForm" :label-width="80">
        <FormItem label="商品编号"><Row>
	<i-col span="11">
	<FormItem prop="idMin">
	<InputNumber v-model="searchForm.idMin" placeholder="请输入开始商品编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="idMax">
	<InputNumber v-model="searchForm.idMax" placeholder="请输入结束商品编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="店铺编号"><Row>
	<i-col span="11">
	<FormItem prop="shopIdMin">
	<InputNumber v-model="searchForm.shopIdMin" placeholder="请输入开始店铺编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="shopIdMax">
	<InputNumber v-model="searchForm.shopIdMax" placeholder="请输入结束店铺编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="类目编号"><Row>
	<i-col span="11">
	<FormItem prop="categoryIdMin">
	<InputNumber v-model="searchForm.categoryIdMin" placeholder="请输入开始类目编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="categoryIdMax">
	<InputNumber v-model="searchForm.categoryIdMax" placeholder="请输入结束类目编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="图文详情" prop="intro">
	<Input v-model="searchForm.intro" placeholder="请输入图文详情"/>
</FormItem>
<FormItem label="上架状态"><Row>
	<i-col span="11">
	<FormItem prop="shelfStatusMin">
	<InputNumber v-model="searchForm.shelfStatusMin" placeholder="请输入开始上架状态" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="shelfStatusMax">
	<InputNumber v-model="searchForm.shelfStatusMax" placeholder="请输入结束上架状态" style="width: 100%;"/>
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
      <p>商品编号: <span v-text="form.id"></span></p>
<p>店铺编号: <span v-text="form.shopId"></span></p>
<p>类目编号: <span v-text="form.categoryId"></span></p>
<p>图文详情: <span v-text="form.intro"></span></p>
<p>上架状态: <span v-text="form.shelfStatus"></span></p>
<p>版本号: <span v-text="form.version"></span></p>
<p>创建时间: <span v-text="form.createTime"></span></p>
<p>更新时间: <span v-text="form.updateTime"></span></p>
<p>是否激活: <span v-text="form.isActive"></span></p>

    </Modal>

    <UploadImgModal
      ref="uploadModal"
      :title="uploadModal.title"
      :format="uploadModal.format"
      :multiple="true"/>

    <Modal :transfer="false" v-model="modal.picOrder" title="设置属性排序" width="60%">
      <GoodsPicOrder ref="goodsPicOrder" v-on:hideModal="hideModal"/>
      <div slot="footer">
        <Button type="text" size="large" @click="cancelModal('picOrder')">取消</Button>
        <Button type="primary" size="large" @click="picOrder">确认排序</Button>
      </div>
    </Modal>

    <Modal :transfer="false" v-model="modal.skuModal" title="商品SKU管理" width="80%">
      <GoodsSkuModal ref="goodsSkuModal"/>
    </Modal>
  </div>
</template>

<script>
  import * as utils from '@/api/utils'
  import UploadImgModal from '_c/upload-img-modal'
  import GoodsPicOrder from '../goods-pic/GoodsPicOrder.vue'
  import {allPicByGoods} from '@/api/goods_pic'
  import GoodsSkuModal from '../goods-sku/GoodsSkuModal.vue'
  import config from '@/config'
  const baseUrl = process.env.NODE_ENV === 'development' ? config.baseUrl.dev : config.baseUrl.pro

  export default {
    name: 'GoodsInfo',
    components: {
      UploadImgModal,
      GoodsPicOrder,
      GoodsSkuModal
    },
    data() {
      return {
        uploadModal: {
          title: '商品图片管理',
          format: ['jpg','jpeg','png','bmp'],
          uploadUrl: '/goods-pic/admin/upload/',
          removeUrl: '/goods-pic/admin/remove/'
        },
        modal: {
          add: false,
          edit: false,
          search: false,
          detail: false,
          picOrder: false,
          skuModal: false
        },
        loading: {
          add: false,
          edit: false,
          search: false
        },
        urls: {
          addUrl: '/goods-info/admin/save',
          batchAddUrl: '/goods-info/admin/batch-save',
          editUrl: '/goods-info/admin/update',
          batchEditUrl: '/goods-info/admin/batch-update',
          searchUrl: '/goods-info/admin/pager-cond',
          allUrl: '/goods-info/admin/all',
          removeUrl: '/goods-info/admin/remove/',
          batchRemoveUrl: '/goods-info/admin/batch-remove',
          detailUrl: '/goods-info/admin/one/',
          activeUrl: '/goods-info/admin/active',
          batchActiveUrl: '/goods-info/admin/batch-active'
        },
        page: {
          total: 0
        },
        form: {
          id: null,
shopId: null,
categoryId: null,
intro: null,
shelfStatus: null,
version: null,
createTime: null,
updateTime: null,
isActive: null,

        },
        validateRules: {
          shopId: [
{type: 'integer', required: true, message: '此项为必须项', trigger: 'blur, change'}
],
categoryId: [
{type: 'integer', required: true, message: '此项为必须项', trigger: 'blur, change'}
],
intro: [
{type: 'string', required: true, message: '此项为必须项', trigger: 'blur'},
{type: 'string', min: 1, max: 65535, message: '必须1-65535个字符', trigger: 'blur'}
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
shopId: null,
shopIdMin: null, 
shopIdMax: null, 
categoryId: null,
categoryIdMin: null, 
categoryIdMax: null, 
intro: null,
shelfStatus: null,
shelfStatusMin: null, 
shelfStatusMax: null, 
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
title: '商品编号',
key: 'id',
minWidth: 120,
sortable: true
},
{
title: '店铺编号',
key: 'shopId',
minWidth: 120,
sortable: true
},
{
title: '类目编号',
key: 'categoryId',
minWidth: 120,
sortable: true
},
{
title: '图文详情',
key: 'intro',
minWidth: 120,
sortable: true
},
{
title: '上架状态',
key: 'shelfStatus',
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
                      ]),
                      h('DropdownItem', {
                        props:{
                          name: 'imgMgrModal'
                        }
                      }, '图片管理'),
                      h('DropdownItem', {
                        props:{
                          name: 'imgOrderModal'
                        }
                      }, '图片排序'),
                      h('DropdownItem', {
                        props:{
                          name: 'skuMgrModal'
                        }
                      }, '商品SKU管理')
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
        } else if (itemName === 'imgMgrModal') {
          this.imgMgr(row)
        } else if (itemName === 'imgOrderModal') {
          utils.showModal(this, 'picOrder')
          this.$refs.goodsPicOrder.initData(row.id)
        } else if (itemName === 'skuMgrModal') {
          let params = {
            goodsId: row.id,
            sortColumn: 'picOrder',
            sortOrder: 'asc'
          }
          allPicByGoods(params).then(response => {
            if (response.data.code === 1001) {
              if (response.data.data.rows.length > 0) {
                utils.showModal(this, 'skuModal')
                this.$refs.goodsSkuModal.form.goodsId = row.id
                this.$refs.goodsSkuModal.searchForm.goodsId = row.id
                this.$refs.goodsSkuModal.categoryId = row.categoryId
                this.$refs.goodsSkuModal.defaultPicId = response.data.data.rows[0].id
                this.$refs.goodsSkuModal.search()
              } else {
                this.$Notice.warning({
                  title: '提示',
                  desc: '此商品还未设置图片，请先进入图片管理菜单设置图片'
                })
              }
            } else {
              this.$Message.error(response.data.message)
            }
          }).catch(error => {
            console.log(error)
          })
          
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
      imgMgr(row) {
        let params = {
            goodsId: row.id,
            sortColumn: 'picOrder',
            sortOrder: 'asc'
          }
          allPicByGoods(params).then(response => {
            if (response.data.code === 1001) {
              this.$refs.uploadModal.defaultList = []
              response.data.data.rows.forEach((img, index) => {
                this.$refs.uploadModal.defaultList.push({
                  name: img.id,
                  url: '/' + img.picUrl
                })
              })
              this.$refs.uploadModal.updateUploadList('default')
            }
          }).catch(error => {
            console.log(error)
          })
          this.$refs.uploadModal.uploadUrl = this.uploadModal.uploadUrl + row.shopId
          this.$refs.uploadModal.removeUrl = this.uploadModal.removeUrl
          this.$refs.uploadModal.uploadModal = true
      },
      picOrder() {
        this.$refs.goodsPicOrder.confirmSelection()
      },
      hideModal() {
        this.modal.picOrder = false
      }
    }
  }
</script>

<style>
</style>
