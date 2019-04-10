package top.zywork.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import top.zywork.common.BeanUtils;
import top.zywork.dto.PagerDTO;
import top.zywork.query.WeixinUserTaskApplyQuery;
import top.zywork.security.JwtUser;
import top.zywork.security.SecurityUtils;
import top.zywork.service.WeixinUserTaskApplyService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.PagerVO;
import top.zywork.vo.WeixinUserTaskApplyVO;

/**
 * WeixinUserTaskApplyController控制器类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@RestController
@RequestMapping("/WeixinUserTaskApply")
public class WeixinUserTaskApplyController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(WeixinUserTaskApplyController.class);

    private WeixinUserTaskApplyService weixinUserTaskApplyService;

    @GetMapping("admin/multi/{id}")
    public ResponseStatusVO listById(@PathVariable("id") Long id) {
        PagerDTO pagerDTO = weixinUserTaskApplyService.listById(id);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskApplyVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = weixinUserTaskApplyService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskApplyVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody WeixinUserTaskApplyQuery weixinUserTaskApplyQuery) {
        PagerDTO pagerDTO = weixinUserTaskApplyService.listAllByCondition(weixinUserTaskApplyQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskApplyVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody WeixinUserTaskApplyQuery weixinUserTaskApplyQuery) {
        PagerDTO pagerDTO = weixinUserTaskApplyService.listPageByCondition(weixinUserTaskApplyQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskApplyVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("user/pager-cond")
    public ResponseStatusVO userListPageByCondition(@RequestBody WeixinUserTaskApplyQuery weixinUserTaskApplyQuery) {
        return listPageByCondition(weixinUserTaskApplyQuery);
    }

    @Autowired
    public void setWeixinUserTaskApplyService(WeixinUserTaskApplyService weixinUserTaskApplyService) {
        this.weixinUserTaskApplyService = weixinUserTaskApplyService;
    }
}
