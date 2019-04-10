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
import top.zywork.dos.RateConfig;
import top.zywork.dto.PagerDTO;
import top.zywork.dto.WeixinTaskDTO;
import top.zywork.enums.SysConfigEnum;
import top.zywork.query.WeixinTaskQuery;
import top.zywork.security.JwtUser;
import top.zywork.security.SecurityUtils;
import top.zywork.service.SysConfigService;
import top.zywork.service.WeixinTaskService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.PagerVO;
import top.zywork.vo.WeixinTaskVO;

import java.util.List;

/**
 * WeixinTaskController控制器类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@RestController
@RequestMapping("/weixin-task")
public class WeixinTaskController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(WeixinTaskController.class);

    private WeixinTaskService weixinTaskService;

    private SysConfigService sysConfigService;

    @PostMapping("user/createTask")
    public ResponseStatusVO createTask(@RequestBody @Validated WeixinTaskVO weixinTaskVO, BindingResult bindingResult) {
        JwtUser jwtUser = SecurityUtils.getJwtUser();
        if (jwtUser == null) {
            return ResponseStatusVO.authenticationError();
        }

        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }

        if(weixinTaskVO.getIntegral() <= 0) {
            return ResponseStatusVO.dataError("填写的奖励积分不能小于或等于零", null);
        }

        if(weixinTaskVO.getConfirmNumber() <= 0) {
            return ResponseStatusVO.dataError("填写的加友总数不能小于或等于零", null);
        }

        RateConfig rateConfig = sysConfigService.getByName(SysConfigEnum.RATE_CONFIG.getValue(), RateConfig.class);
        weixinTaskVO.setUserId(jwtUser.getUserId());
        weixinTaskVO.setTaskStatus(0);
        weixinTaskVO.setConfirmNumber(0);
        return weixinTaskService.createTask(weixinTaskVO,rateConfig);
    }

    @PostMapping("admin/save")
    public ResponseStatusVO save(@RequestBody @Validated WeixinTaskVO weixinTaskVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskService.save(BeanUtils.copy(weixinTaskVO, WeixinTaskDTO.class));
        return ResponseStatusVO.ok("添加成功", null);
    }

    @PostMapping("admin/batch-save")
    public ResponseStatusVO saveBatch(@RequestBody @Validated List<WeixinTaskVO> weixinTaskVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskService.saveBatch(BeanUtils.copyListObj(weixinTaskVOList, WeixinTaskDTO.class));
        return ResponseStatusVO.ok("批量添加成功", null);
    }

    @GetMapping("admin/remove/{id}")
    public ResponseStatusVO removeById(@PathVariable("id") Long id) {
        weixinTaskService.removeById(id);
        return ResponseStatusVO.ok("删除成功", null);
    }

    @PostMapping("admin/batch-remove")
    public ResponseStatusVO removeByIds(@RequestBody String[] ids) {
        weixinTaskService.removeByIds(StringUtils.strArrayToLongArray(ids));
        return ResponseStatusVO.ok("批量删除成功", null);
    }

    @PostMapping("admin/update")
    public ResponseStatusVO update(@RequestBody @Validated WeixinTaskVO weixinTaskVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        int updateRows = weixinTaskService.update(BeanUtils.copy(weixinTaskVO, WeixinTaskDTO.class));
        if (updateRows == 1) {
            return ResponseStatusVO.ok("更新成功", null);
        } else {
            return ResponseStatusVO.dataError("数据版本号有问题，在此更新前数据已被更新", null);
        }
    }

    @PostMapping("admin/batch-update")
    public ResponseStatusVO updateBatch(@RequestBody @Validated List<WeixinTaskVO> weixinTaskVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinTaskService.updateBatch(BeanUtils.copyListObj(weixinTaskVOList, WeixinTaskDTO.class));
        return ResponseStatusVO.ok("批量更新成功", null);
    }

    @PostMapping("admin/active")
    public ResponseStatusVO active(@RequestBody WeixinTaskVO weixinTaskVO) {
        weixinTaskService.update(BeanUtils.copy(weixinTaskVO, WeixinTaskDTO.class));
        return ResponseStatusVO.ok("激活或冻结成功", null);
    }

    @PostMapping("admin/batch-active")
    public ResponseStatusVO activeBatch(@RequestBody @Validated List<WeixinTaskVO> weixinTaskVOList) {
        weixinTaskService.updateBatch(BeanUtils.copyListObj(weixinTaskVOList, WeixinTaskDTO.class));
        return ResponseStatusVO.ok("批量激活或冻结成功", null);
    }

    @GetMapping("admin/one/{id}")
    public ResponseStatusVO getById(@PathVariable("id") Long id) {
        WeixinTaskVO weixinTaskVO = new WeixinTaskVO();
        Object obj = weixinTaskService.getById(id);
        if (obj != null) {
            weixinTaskVO = BeanUtils.copy(obj, WeixinTaskVO.class);
        }
        return ResponseStatusVO.ok("查询成功", weixinTaskVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = weixinTaskService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody WeixinTaskQuery weixinTaskQuery) {
        PagerDTO pagerDTO = weixinTaskService.listAllByCondition(weixinTaskQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody WeixinTaskQuery weixinTaskQuery) {
        PagerDTO pagerDTO = weixinTaskService.listPageByCondition(weixinTaskQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @Autowired
    public void setWeixinTaskService(WeixinTaskService weixinTaskService) {
        this.weixinTaskService = weixinTaskService;
    }

    @Autowired
    public void setSysConfigService(SysConfigService sysConfigService) {
        this.sysConfigService = sysConfigService;
    }
}