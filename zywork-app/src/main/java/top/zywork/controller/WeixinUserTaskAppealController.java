package top.zywork.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import top.zywork.common.BeanUtils;
import top.zywork.dto.PagerDTO;
import top.zywork.query.WeixinUserTaskAppealQuery;
import top.zywork.service.WeixinUserTaskAppealService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.PagerVO;
import top.zywork.vo.WeixinUserTaskAppealVO;

/**
 * WeixinUserTaskAppealController控制器类<br/>
 *
 * 创建于2019-04-04<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@RestController
@RequestMapping("/WeixinUserTaskAppeal")
public class WeixinUserTaskAppealController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(WeixinUserTaskAppealController.class);

    private WeixinUserTaskAppealService weixinUserTaskAppealService;

    @GetMapping("admin/multi/{id}")
    public ResponseStatusVO listById(@PathVariable("id") Long id) {
        PagerDTO pagerDTO = weixinUserTaskAppealService.listById(id);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskAppealVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = weixinUserTaskAppealService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskAppealVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody WeixinUserTaskAppealQuery weixinUserTaskAppealQuery) {
        PagerDTO pagerDTO = weixinUserTaskAppealService.listAllByCondition(weixinUserTaskAppealQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskAppealVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody WeixinUserTaskAppealQuery weixinUserTaskAppealQuery) {
        PagerDTO pagerDTO = weixinUserTaskAppealService.listPageByCondition(weixinUserTaskAppealQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskAppealVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @Autowired
    public void setWeixinUserTaskAppealService(WeixinUserTaskAppealService weixinUserTaskAppealService) {
        this.weixinUserTaskAppealService = weixinUserTaskAppealService;
    }
}
