package top.zywork.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import top.zywork.common.BeanUtils;
import top.zywork.dto.PagerDTO;
import top.zywork.query.WeixinUserTaskQuery;
import top.zywork.security.JwtUser;
import top.zywork.security.SecurityUtils;
import top.zywork.service.WeixinUserTaskService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.PagerVO;
import top.zywork.vo.WeixinUserTaskVO;

/**
 * WeixinUserTaskController控制器类<br/>
 *
 * 创建于2019-04-08<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@RestController
@RequestMapping("/WeixinUserTask")
public class WeixinUserTaskController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(WeixinUserTaskController.class);

    private WeixinUserTaskService weixinUserTaskService;

    @PostMapping("any/listOngoing")
    public ResponseStatusVO listOngoing(@RequestBody WeixinUserTaskQuery weixinUserTaskQuery) {
        weixinUserTaskQuery.setWeixinTaskTaskStatus(0);
        return listAllByCondition(weixinUserTaskQuery);
    }

    @PostMapping("user/list-publish")
    public ResponseStatusVO listPublish(@RequestBody WeixinUserTaskQuery weixinUserTaskQuery) {
        JwtUser jwtUser = SecurityUtils.getJwtUser();
        if (jwtUser == null) {
            return ResponseStatusVO.authenticationError();
        }

        weixinUserTaskQuery.setWeixinTaskUserId(jwtUser.getUserId());
        return listAllByCondition(weixinUserTaskQuery);
    }

    @PostMapping("user/list-join")
    public ResponseStatusVO listJoin(@RequestBody WeixinUserTaskQuery weixinUserTaskQuery) {
        JwtUser jwtUser = SecurityUtils.getJwtUser();
        if (jwtUser == null) {
            return ResponseStatusVO.authenticationError();
        }

        weixinUserTaskQuery.setWeixinTaskUserId(jwtUser.getUserId());
        PagerDTO  pagerDTO = weixinUserTaskService.listJoin(weixinUserTaskQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @GetMapping("user/task-apply-user/{id}")
    public ResponseStatusVO taskApplyUser(@PathVariable("id") Long id) {
        WeixinUserTaskVO weixinUserTaskVO = new WeixinUserTaskVO();
        Object obj = weixinUserTaskService.getByweixinTaskId(id);
        if(obj != null) {
            weixinUserTaskVO = BeanUtils.copy(obj, WeixinUserTaskVO.class);
        }
        return ResponseStatusVO.ok("查询成功", weixinUserTaskVO);
    }

    @GetMapping("admin/multi/{id}")
    public ResponseStatusVO listById(@PathVariable("id") Long id) {
        PagerDTO pagerDTO = weixinUserTaskService.listById(id);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = weixinUserTaskService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody WeixinUserTaskQuery weixinUserTaskQuery) {
        PagerDTO pagerDTO = weixinUserTaskService.listAllByCondition(weixinUserTaskQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody WeixinUserTaskQuery weixinUserTaskQuery) {
        PagerDTO pagerDTO = weixinUserTaskService.listPageByCondition(weixinUserTaskQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinUserTaskVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @Autowired
    public void setWeixinUserTaskService(WeixinUserTaskService weixinUserTaskService) {
        this.weixinUserTaskService = weixinUserTaskService;
    }
}