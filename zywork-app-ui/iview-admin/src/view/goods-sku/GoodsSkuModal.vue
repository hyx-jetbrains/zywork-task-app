<template>
  <div>
    <Row>
      <i-col span="24">
        <Card>
          <Button @click="showAdd" type="primary">添加</Button>&nbsp;
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
        <FormItem label="商品编号" prop="goodsId">
	<InputNumber readonly v-model="form.goodsId" placeholder="请输入商品编号" style="width: 100%;"/>
</FormItem>
<FormItem label="商品图片编号" prop="picId">
	<InputNumber v-model="form.picId" placeholder="请输入商品图片编号" style="width: 100%;"/>
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
        <FormItem label="商品编号" prop="goodsId">
	<InputNumber readonly v-model="form.goodsId" placeholder="请输入商品编号" style="width: 100%;"/>
</FormItem>
<FormItem label="商品图片编号" prop="picId">
	<InputNumber v-model="form.picId" placeholder="请输入商品图片编号" style="width: 100%;"/>
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
        <FormItem label="SKU编号"><Row>
	<i-col span="11">
	<FormItem prop="idMin">
	<InputNumber v-model="searchForm.idMin" placeholder="请输入开始SKU编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="idMax">
	<InputNumber v-model="searchForm.idMax" placeholder="请输入结束SKU编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="商品编号"><Row>
	<i-col span="11">
	<FormItem prop="goodsIdMin">
	<InputNumber v-model="searchForm.goodsIdMin" placeholder="请输入开始商品编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="goodsIdMax">
	<InputNumber v-model="searchForm.goodsIdMax" placeholder="请输入结束商品编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
</FormItem>
<FormItem label="商品图片编号"><Row>
	<i-col span="11">
	<FormItem prop="picIdMin">
	<InputNumber v-model="searchForm.picIdMin" placeholder="请输入开始商品图片编号" style="width: 100%;"/>
</FormItem>
</i-col>
	<i-col span="2" style="text-align: center">-</i-col>
	<i-col span="11">
	<FormItem prop="picIdMax">
	<InputNumber v-model="searchForm.picIdMax" placeholder="请输入结束商品图片编号" style="width: 100%;"/>
</FormItem>
</i-col>
</Row>
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
      <p>SKU编号: <span v-text="form.id"></span></p>
<p>商品编号: <span v-text="form.goodsId"></span></p>
<p>商品图片编号: <span v-text="form.picId"></span></p>
<p>上架状态: <span v-text="form.shelfStatus"></span></p>
<p>版本号: <span v-text="form.version"></span></p>
<p>创建时间: <span v-text="form.createTime"></span></p>
<p>更新时间: <span v-text="form.updateTime"></span></p>
<p>是否激活: <span v-text="form.isActive"></span></p>

    </Modal>

    <Modal v-model="modal.imgModal" title="选择SKU图片">
      <div v-if="choosePic.id !== 0">
        <img :src="'/' + choosePic.url" style="width: 120px; height: 120px;">
      </div>
        <div class="demo-upload-list" v-for="pic in pics" :key="pic.name">
              <img :src="'/' + pic.picUrl">
              <div class="demo-upload-list-cover">
                  <Icon type="ios-eye-outline" @click="handleView(pic.picUrl)"></Icon>
                  <Icon type="md-checkmark" @click="handleChoose(pic)"></Icon>
              </div>
        </div>
    </Modal>

    <Modal v-model="modal.imgViewModal" title="查看图片">
      <img :src="'/' + picUrl" v-if="modal.imgViewModal" style="width: 100%">
    </Modal>

    <SkuDetailModal ref="skuDetailModal" style="width: 100%;"/>
  </div>
</template>

<script>
  import * as utils from '@/api/utils'
  import axios from '@/libs/api.request'
  import {allPicByGoods, getPicById} from '@/api/goods_pic'
  import SkuDetailModal from '_c/sku-detail-modal'

  export default {
    name: 'GoodsSkuModal',
    components: {
      SkuDetailModal
    },
    data() {
      return {
        categoryId: 0,
        defaultPicId: null,
        choosePic: {
          id: 0,
          url: ''
        },
        picUrl: '',
        pics: [],
        modal: {
          add: false,
          edit: false,
          search: false,
          detail: false,
          imgModal: false,
          imgViewModal: false
        },
        loading: {
          add: false,
          edit: false,
          search: false
        },
        urls: {
          addUrl: '/goods-sku/admin/save',
          batchAddUrl: '/goods-sku/admin/batch-save',
          editUrl: '/goods-sku/admin/update',
          batchEditUrl: '/goods-sku/admin/batch-update',
          searchUrl: '/goods-sku/admin/pager-cond',
          allUrl: '/goods-sku/admin/all',
          removeUrl: '/goods-sku/admin/remove/',
          batchRemoveUrl: '/goods-sku/admin/batch-remove',
          detailUrl: '/goods-sku/admin/one/',
          activeUrl: '/goods-sku/admin/active',
          batchActiveUrl: '/goods-sku/admin/batch-active'
        },
        page: {
          total: 0
        },
        form: {
          id: null,
goodsId: null,
picId: null,
shelfStatus: null,
version: null,
createTime: null,
updateTime: null,
isActive: null,

        },
        validateRules: {
          goodsId: [
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
goodsId: null,
goodsIdMin: null, 
goodsIdMax: null, 
picId: null,
picIdMin: null, 
picIdMax: null, 
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
title: 'SKU编号',
key: 'id',
minWidth: 120,
sortable: true
},
{
title: '商品编号',
key: 'goodsId',
minWidth: 120,
sortable: true
},
{
title: '商品图片编号',
key: 'picId',
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
                          name: 'imgModal'
                        }
                      }, '图片设置'),
                      h('DropdownItem', {
                        props:{
                          name: 'detailModal'
                        }
                      }, '详情设置')
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
      // this.search()
    },
    methods: {
      showModal(modal) {
        utils.showModal(this, modal)
      },
      showAdd() {
        this.form.picId = this.defaultPicId
        utils.showModal(this, 'add')
      },
      changeModalVisibleResetForm(formRef, visible) {
        let goodsId = this.form.goodsId
        if (!visible) {
          utils.resetForm(this, formRef)
        }
        this.form.goodsId = goodsId
        this.searchForm.goodsId = goodsId
      },
      resetForm(formRef) {
        let goodsId = this.form.goodsId
        utils.resetForm(this, formRef)
        this.form.goodsId = goodsId
        this.searchForm.goodsId = goodsId
      },
      cancelModal(modal) {
        utils.cancelModal(this, modal)
      },
      resetFormCancelModal(formRef, modal) {
        utils.cancelModal(this, modal)
        let goodsId = this.form.goodsId
        utils.resetForm(this, formRef)
        this.form.goodsId = goodsId
        this.searchForm.goodsId = goodsId
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
        } else if (itemName === 'imgModal') {
          utils.showModal(this, 'imgModal')
          this.form.id = row.id
          this.loadPics(row.picId)
        } else if (itemName === 'detailModal') {
          this.$refs.skuDetailModal.modal.skuDetailModal = true
          this.$refs.skuDetailModal.categoryId = this.categoryId
          this.$refs.skuDetailModal.skuId = row.id
          this.$refs.skuDetailModal.chooseSkuId = row.id
          this.$refs.skuDetailModal.goodsId = this.form.goodsId
          this.$refs.skuDetailModal.loadSkusByGoodsId()
          this.$refs.skuDetailModal.loadAllAttrVals()
        }
      },
      add() {
        let goodsId = this.form.goodsId
        this.$refs['addForm'].validate(valid => {
          if (valid) {
            let self = this
            self.loading['add'] = true
            axios.request({
              url: self.urls.addUrl,
              method: 'POST',
              data: self.form
            }).then(response => {
              self.loading['add'] = false
              if (response.data.code !== 1001) {
                self.$Message.error(response.data.message)
              } else {
                self.$Message.success(response.data.message)
                utils.resetForm(self, 'addForm')
                utils.cancelModal(self, 'add')
                self.form.goodsId = goodsId
                self.searchForm.goodsId = goodsId
                utils.search(self)
              }
            }).catch(error => {
              console.log(error)
              self.loading['add'] = false
              self.$Message.error('添加数据失败，稍候再试')
            })
          }
        })
      },
      edit() {
        let goodsId = this.form.goodsId
        this.$refs['editForm'].validate(valid => {
          if (valid) {
            this.loading['edit'] = true
            this.updateGoodsSku().then(response => {
              this.loading['edit'] = false
              if (response.data.code !== 1001) {
                this.$Message.error(response.data.message)
              } else {
                this.$Message.success(response.data.message)
                utils.resetForm(this, 'editForm')
                utils.cancelModal(this, 'edit')
                this.form.goodsId = goodsId
                this.searchForm.goodsId = goodsId
                utils.search(this)
              }
            }).catch(error => {
              this.loading['edit'] = false
              console.log(error)
              this.$Message.error('修改数据失败，稍候再试')
            })
          }
        })
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
      loadPics(picId) {
        this.choosePic = {
          id: 0,
          url: ''
        }
        if (picId !== null && picId !== undefined) {
          getPicById(picId).then(response => {
            if (response.data.code === 1001) {
              this.choosePic.id = picId
              this.choosePic.url = response.data.data.picUrl
            }
          }).catch(error => {
            console.log(error)
          })
        }
        let params = {
          goodsId: this.form.goodsId,
          sortColumn: 'picOrder',
          sortOrder: 'asc'
        }
        allPicByGoods(params).then(response => {
          if (response.data.code === 1001) {
            this.pics = response.data.data.rows
          } else {
            this.$Message.error(response.data.message)
          }
        }).catch(error => {
          console.log(error)
        })
      },
      handleView (picUrl) {
        this.picUrl = picUrl
        utils.showModal(this, 'imgViewModal')
      },
      handleChoose(pic) {
        this.$Spin.show()
        this.choosePic.url = pic.picUrl
        this.choosePic.id = pic.id
        this.form.picId = pic.id
        this.updateGoodsSku().then(response => {
          this.$Spin.hide()
          if (response.data.code !== 1001) {
                this.$Message.error(response.data.message)
              } else {
                this.$Message.success(response.data.message)
                utils.search(this)
              }
        }).catch(error => {
          console.log(error)
        })
      },
      updateGoodsSku() {
        return new Promise((resolve, reject) => {
            axios.request({
              url: this.urls.editUrl,
              method: 'POST',
              data: this.form
            }).then(response => {
              resolve(response)
            }).catch(error => {
              reject(error)
            })
        })
      }
    }
  }
</script>

<style>
    .demo-upload-list {
        display: inline-block;
        width: 60px;
        height: 60px;
        text-align: center;
        line-height: 60px;
        border: 1px solid transparent;
        border-radius: 4px;
        overflow: hidden;
        background: #fff;
        position: relative;
        box-shadow: 0 1px 1px rgba(0,0,0,.2);
        margin-right: 4px;
    }
    .demo-upload-list img{
        width: 100%;
        height: 100%;
    }
    .demo-upload-list-cover{
        display: none;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0,0,0,.6);
    }
    .demo-upload-list:hover .demo-upload-list-cover{
        display: block;
    }
    .demo-upload-list-cover i{
        color: #fff;
        font-size: 20px;
        cursor: pointer;
        margin: 0 2px;
    }
</style>

