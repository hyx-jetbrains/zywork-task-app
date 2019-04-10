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
import top.zywork.dto.WeixinTaskApplyDTO;
import top.zywork.query.WeixinTaskApplyQuery;
import top.zywork.security.JwtUser;
import top.zywork.security.SecurityUtils;
import top.zywork.service.WeixinTaskApplyService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.PagerVO;
import top.zywork.vo.WeixinTaskApplyVO;

import java.util.List;

/**
 * WeixinTaskApplyController控制器类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@RestController
@RequestMapping("/weixin-task-apply")
public class WeixinTaskApplyController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(WeixinTaskApplyController.class);

    private WeixinTaskApplyService weixinTaskApplyService;

    public ResponseStatusVO confirmWeinxinTaskApply(@RequestBody @Validated WeixinTaskApplyVO weixinTaskApplyVO, BindingResult bindingResult) {
        JwtUser jwtUser = SecurityUtils.getJwtUser();
        if (jwtUser == null) {
            return ResponseStatusVO.authenticationError();
        }

        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }

        weixinTaskApplyVO.setUserId(jwtUser.getUserId());
        return weixinTaskApplyService.confirmTaskApply(weixinTaskApplyVO);
    }

    @PostMapping("admin/save")
    public ResponseStatusVO save(@RequestBody @Validated WeixinTaskApplyVO weixinTaskApplyVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskApplyService.save(BeanUtils.copy(weixinTaskApplyVO, WeixinTaskApplyDTO.class));
        return ResponseStatusVO.ok("添加成功", null);
    }

    @PostMapping("admin/batch-save")
    public ResponseStatusVO saveBatch(@RequestBody @Validated List<WeixinTaskApplyVO> weixinTaskApplyVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskApplyService.saveBatch(BeanUtils.copyListObj(weixinTaskApplyVOList, WeixinTaskApplyDTO.class));
        return ResponseStatusVO.ok("批量添加成功", null);
    }

    @GetMapping("admin/remove/{id}")
    public ResponseStatusVO removeById(@PathVariable("id") Long id) {
        weixinTaskApplyService.removeById(id);
        return ResponseStatusVO.ok("删除成功", null);
    }

    @PostMapping("admin/batch-remove")
    public ResponseStatusVO removeByIds(@RequestBody String[] ids) {
        weixinTaskApplyService.removeByIds(StringUtils.strArrayToLongArray(ids));
        return ResponseStatusVO.ok("批量删除成功", null);
    }

    @PostMapping("admin/update")
    public ResponseStatusVO update(@RequestBody @Validated WeixinTaskApplyVO weixinTaskApplyVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        int updateRows = weixinTaskApplyService.update(BeanUtils.copy(weixinTaskApplyVO, WeixinTaskApplyDTO.class));
        if (updateRows == 1) {
            return ResponseStatusVO.ok("更新成功", null);
        } else {
            return ResponseStatusVO.dataError("数据版本号有问题，在此更新前数据已被更新", null);
        }
    }

    @PostMapping("admin/batch-update")
    public ResponseStatusVO updateBatch(@RequestBody @Validated List<WeixinTaskApplyVO> weixinTaskApplyVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskApplyService.updateBatch(BeanUtils.copyListObj(weixinTaskApplyVOList, WeixinTaskApplyDTO.class));
        return ResponseStatusVO.ok("批量更新成功", null);
    }

    @PostMapping("admin/active")
    public ResponseStatusVO active(@RequestBody WeixinTaskApplyVO weixinTaskApplyVO) {
        weixinTaskApplyService.update(BeanUtils.copy(weixinTaskApplyVO, WeixinTaskApplyDTO.class));
        return ResponseStatusVO.ok("激活或冻结成功", null);
    }

    @PostMapping("admin/batch-active")
    public ResponseStatusVO activeBatch(@RequestBody @Validated List<WeixinTaskApplyVO> weixinTaskApplyVOList) {
        weixinTaskApplyService.updateBatch(BeanUtils.copyListObj(weixinTaskApplyVOList, WeixinTaskApplyDTO.class));
        return ResponseStatusVO.ok("批量激活或冻结成功", null);
    }

    @GetMapping("admin/one/{id}")
    public ResponseStatusVO getById(@PathVariable("id") Long id) {
        WeixinTaskApplyVO weixinTaskApplyVO = new WeixinTaskApplyVO();
        Object obj = weixinTaskApplyService.getById(id);
        if (obj != null) {
            weixinTaskApplyVO = BeanUtils.copy(obj, WeixinTaskApplyVO.class);
        }
        return ResponseStatusVO.ok("查询成功", weixinTaskApplyVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = weixinTaskApplyService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskApplyVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody WeixinTaskApplyQuery weixinTaskApplyQuery) {
        PagerDTO pagerDTO = weixinTaskApplyService.listAllByCondition(weixinTaskApplyQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskApplyVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody WeixinTaskApplyQuery weixinTaskApplyQuery) {
        PagerDTO pagerDTO = weixinTaskApplyService.listPageByCondition(weixinTaskApplyQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskApplyVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @Autowired
    public void setWeixinTaskApplyService(WeixinTaskApplyService weixinTaskApplyService) {
        this.weixinTaskApplyService = weixinTaskApplyService;
    }
}
