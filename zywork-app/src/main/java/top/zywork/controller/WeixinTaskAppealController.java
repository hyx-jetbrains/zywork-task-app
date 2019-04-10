package top.zywork.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import top.zywork.common.BeanUtils;
import top.zywork.common.BindingResultUtils;
import top.zywork.common.StringUtils;
import top.zywork.dto.PagerDTO;
import top.zywork.dto.WeixinTaskAppealDTO;
import top.zywork.query.WeixinTaskAppealQuery;
import top.zywork.service.WeixinTaskAppealService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.PagerVO;
import top.zywork.vo.WeixinTaskAppealVO;

import java.util.Date;
import java.util.List;

/**
 * WeixinTaskAppealController控制器类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@RestController
@RequestMapping("/weixin-task-appeal")
public class WeixinTaskAppealController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(WeixinTaskAppealController.class);

    private WeixinTaskAppealService weixinTaskAppealService;

    @PostMapping("admin/save")
    public ResponseStatusVO save(@RequestBody @Validated WeixinTaskAppealVO weixinTaskAppealVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskAppealService.save(BeanUtils.copy(weixinTaskAppealVO, WeixinTaskAppealDTO.class));
        return ResponseStatusVO.ok("添加成功", null);
    }

    @PostMapping("admin/batch-save")
    public ResponseStatusVO saveBatch(@RequestBody @Validated List<WeixinTaskAppealVO> weixinTaskAppealVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskAppealService.saveBatch(BeanUtils.copyListObj(weixinTaskAppealVOList, WeixinTaskAppealDTO.class));
        return ResponseStatusVO.ok("批量添加成功", null);
    }

    @GetMapping("admin/remove/{id}")
    public ResponseStatusVO removeById(@PathVariable("id") Long id) {
        weixinTaskAppealService.removeById(id);
        return ResponseStatusVO.ok("删除成功", null);
    }

    @PostMapping("admin/batch-remove")
    public ResponseStatusVO removeByIds(@RequestBody String[] ids) {
        weixinTaskAppealService.removeByIds(StringUtils.strArrayToLongArray(ids));
        return ResponseStatusVO.ok("批量删除成功", null);
    }

    @PostMapping("admin/update")
    public ResponseStatusVO update(@RequestBody @Validated WeixinTaskAppealVO weixinTaskAppealVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        int updateRows = weixinTaskAppealService.update(BeanUtils.copy(weixinTaskAppealVO, WeixinTaskAppealDTO.class));
        if (updateRows == 1) {
            return ResponseStatusVO.ok("更新成功", null);
        } else {
            return ResponseStatusVO.dataError("数据版本号有问题，在此更新前数据已被更新", null);
        }
    }

    @PostMapping("admin/updateStatus")
    public ResponseStatusVO updateStatus(@RequestBody @Validated WeixinTaskAppealVO weixinTaskAppealVO, BindingResult bindingResult) {
        weixinTaskAppealVO.setHandleTime(new Date());
        return update(weixinTaskAppealVO, bindingResult);
    }

    @PostMapping("admin/batch-update")
    public ResponseStatusVO updateBatch(@RequestBody @Validated List<WeixinTaskAppealVO> weixinTaskAppealVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskAppealService.updateBatch(BeanUtils.copyListObj(weixinTaskAppealVOList, WeixinTaskAppealDTO.class));
        return ResponseStatusVO.ok("批量更新成功", null);
    }

    @PostMapping("admin/active")
    public ResponseStatusVO active(@RequestBody WeixinTaskAppealVO weixinTaskAppealVO) {
        weixinTaskAppealService.update(BeanUtils.copy(weixinTaskAppealVO, WeixinTaskAppealDTO.class));
        return ResponseStatusVO.ok("激活或冻结成功", null);
    }

    @PostMapping("admin/batch-active")
    public ResponseStatusVO activeBatch(@RequestBody @Validated List<WeixinTaskAppealVO> weixinTaskAppealVOList) {
        weixinTaskAppealService.updateBatch(BeanUtils.copyListObj(weixinTaskAppealVOList, WeixinTaskAppealDTO.class));
        return ResponseStatusVO.ok("批量激活或冻结成功", null);
    }

    @GetMapping("admin/one/{id}")
    public ResponseStatusVO getById(@PathVariable("id") Long id) {
        WeixinTaskAppealVO weixinTaskAppealVO = new WeixinTaskAppealVO();
        Object obj = weixinTaskAppealService.getById(id);
        if (obj != null) {
            weixinTaskAppealVO = BeanUtils.copy(obj, WeixinTaskAppealVO.class);
        }
        return ResponseStatusVO.ok("查询成功", weixinTaskAppealVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = weixinTaskAppealService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskAppealVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody WeixinTaskAppealQuery weixinTaskAppealQuery) {
        PagerDTO pagerDTO = weixinTaskAppealService.listAllByCondition(weixinTaskAppealQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskAppealVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody WeixinTaskAppealQuery weixinTaskAppealQuery) {
        PagerDTO pagerDTO = weixinTaskAppealService.listPageByCondition(weixinTaskAppealQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskAppealVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @Autowired
    public void setWeixinTaskAppealService(WeixinTaskAppealService weixinTaskAppealService) {
        this.weixinTaskAppealService = weixinTaskAppealService;
    }
}
