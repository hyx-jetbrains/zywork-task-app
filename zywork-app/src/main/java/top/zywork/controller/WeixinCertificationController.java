package top.zywork.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import top.zywork.common.BeanUtils;
import top.zywork.common.BindingResultUtils;
import top.zywork.common.StringUtils;
import top.zywork.common.UploadUtils;
import top.zywork.dto.PagerDTO;
import top.zywork.dto.WeixinCertificationDTO;
import top.zywork.enums.ResponseStatusEnum;
import top.zywork.enums.StorageProviderEnum;
import top.zywork.enums.UploadTypeEnum;
import top.zywork.query.WeixinCertificationQuery;
import top.zywork.security.JwtUser;
import top.zywork.security.SecurityUtils;
import top.zywork.service.UploadService;
import top.zywork.service.WeixinCertificationService;
import top.zywork.vo.ResponseStatusVO;
import top.zywork.vo.PagerVO;
import top.zywork.vo.WeixinCertificationVO;

import java.util.Date;
import java.util.List;

/**
 * WeixinCertificationController控制器类<br/>
 *
 * 创建于2019-04-03<br/>
 *
 * @author http://zywork.top 邓敏
 * @version 1.0
 */
@RestController
@RequestMapping("/weixin-certification")
public class WeixinCertificationController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(WeixinCertificationController.class);

    @Value("${storage.local.certification.imgDir}")
    private String imgDir;

    @Value("${storage.local.certification.imgParentDir}")
    private String imgParentDir;

    @Value("${storage.local.certification.imgUrl}")
    private String imgUrl;

    private WeixinCertificationService weixinCertificationService;

    private UploadService uploadService;

    @PostMapping("user/upload-cer")
    public ResponseStatusVO userUploadCer(MultipartFile file) {
        JwtUser jwtUser = SecurityUtils.getJwtUser();
        if (jwtUser == null) {
            return ResponseStatusVO.authenticationError();
        }
        UploadUtils.UploadOptions uploadOptions = new UploadUtils.UploadOptions(imgParentDir, imgDir, imgUrl);
        ResponseStatusVO responseStatusVO = uploadService.uploadFile(StorageProviderEnum.LOCAL.getProvider(),file, UploadTypeEnum.IMAGE.getAllowedExts(),UploadTypeEnum.IMAGE.getMaxSize(),uploadOptions);
       if(responseStatusVO.getCode().intValue() == ResponseStatusEnum.OK.getCode().intValue()) {
           WeixinCertificationVO weixinCertificationVO = new WeixinCertificationVO();
           weixinCertificationVO.setUserId(jwtUser.getUserId());
           weixinCertificationVO.setUrl(responseStatusVO.getData().toString());
           weixinCertificationVO.setCheckStatus((byte) 4);

           Object obj = weixinCertificationService.getByUserId(jwtUser.getUserId());
           if(obj != null) {
               WeixinCertificationVO wcr = BeanUtils.copy(obj, WeixinCertificationVO.class);
               weixinCertificationVO.setId(wcr.getId());
               weixinCertificationService.update(BeanUtils.copy(weixinCertificationVO, WeixinCertificationDTO.class));
           } else {
               weixinCertificationService.save(BeanUtils.copy(weixinCertificationVO, WeixinCertificationDTO.class));
           }
       }
       return responseStatusVO;
    }

    @GetMapping("user/getByUserId")
    public ResponseStatusVO getByUserId() {
        JwtUser jwtUser = SecurityUtils.getJwtUser();
        if (jwtUser == null) {
            return ResponseStatusVO.authenticationError();
        }

        Object obj = weixinCertificationService.getByUserId(jwtUser.getUserId());
        WeixinCertificationVO weixinCertificationVO = new WeixinCertificationVO();
        if(obj != null) {
            weixinCertificationVO = BeanUtils.copy(obj, WeixinCertificationVO.class);
        }
        return ResponseStatusVO.ok("查询成功", weixinCertificationVO);
    }

    @PostMapping("admin/save")
    public ResponseStatusVO save(@RequestBody @Validated WeixinCertificationVO weixinCertificationVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinCertificationService.save(BeanUtils.copy(weixinCertificationVO, WeixinCertificationDTO.class));
        return ResponseStatusVO.ok("添加成功", null);
    }

    @PostMapping("admin/batch-save")
    public ResponseStatusVO saveBatch(@RequestBody @Validated List<WeixinCertificationVO> weixinCertificationVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinCertificationService.saveBatch(BeanUtils.copyListObj(weixinCertificationVOList, WeixinCertificationDTO.class));
        return ResponseStatusVO.ok("批量添加成功", null);
    }

    @GetMapping("admin/remove/{id}")
    public ResponseStatusVO removeById(@PathVariable("id") Long id) {
        weixinCertificationService.removeById(id);
        return ResponseStatusVO.ok("删除成功", null);
    }

    @PostMapping("admin/batch-remove")
    public ResponseStatusVO removeByIds(@RequestBody String[] ids) {
        weixinCertificationService.removeByIds(StringUtils.strArrayToLongArray(ids));
        return ResponseStatusVO.ok("批量删除成功", null);
    }

    @PostMapping("admin/update")
    public ResponseStatusVO update(@RequestBody @Validated WeixinCertificationVO weixinCertificationVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        return update(weixinCertificationVO);
    }

    private ResponseStatusVO update(WeixinCertificationVO weixinCertificationVO) {
        int updateRows = weixinCertificationService.update(BeanUtils.copy(weixinCertificationVO, WeixinCertificationDTO.class));
        if (updateRows == 1) {
            return ResponseStatusVO.ok("更新成功", null);
        } else {
            return ResponseStatusVO.dataError("数据版本号有问题，在此更新前数据已被更新", null);
        }
    }

    @GetMapping("user/question-no/{id}")
    public ResponseStatusVO userUpdateCheckStatusQuestionNo(@PathVariable("id") Long id) {
        WeixinCertificationVO weixinCertificationVO = new WeixinCertificationVO();
        weixinCertificationVO.setId(id);
        weixinCertificationVO.setCheckStatus((byte) 3);
        return update(weixinCertificationVO);
    }

    @GetMapping("user/question-yes/{id}")
    public ResponseStatusVO userUpdateCheckStatusQuestionYes(@PathVariable("id") Long id) {
        WeixinCertificationVO weixinCertificationVO = new WeixinCertificationVO();
        weixinCertificationVO.setId(id);
        weixinCertificationVO.setCheckStatus((byte) 4);
        return update(weixinCertificationVO);
    }

    @PostMapping("admin/updateCheckStatus")
    public ResponseStatusVO updateCheckStatus(@RequestBody @Validated WeixinCertificationVO weixinCertificationVO, BindingResult bindingResult) {
        weixinCertificationVO.setCheckStatus((byte)1);
        weixinCertificationVO.setCheckTime(new Date());
        return update(weixinCertificationVO,bindingResult);
    }

    @PostMapping("admin/batch-update")
    public ResponseStatusVO updateBatch(@RequestBody @Validated List<WeixinCertificationVO> weixinCertificationVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        weixinCertificationService.updateBatch(BeanUtils.copyListObj(weixinCertificationVOList, WeixinCertificationDTO.class));
        return ResponseStatusVO.ok("批量更新成功", null);
    }

    @PostMapping("admin/active")
    public ResponseStatusVO active(@RequestBody WeixinCertificationVO weixinCertificationVO) {
        weixinCertificationService.update(BeanUtils.copy(weixinCertificationVO, WeixinCertificationDTO.class));
        return ResponseStatusVO.ok("激活或冻结成功", null);
    }

    @PostMapping("admin/batch-active")
    public ResponseStatusVO activeBatch(@RequestBody @Validated List<WeixinCertificationVO> weixinCertificationVOList) {
        weixinCertificationService.updateBatch(BeanUtils.copyListObj(weixinCertificationVOList, WeixinCertificationDTO.class));
        return ResponseStatusVO.ok("批量激活或冻结成功", null);
    }

    @GetMapping("admin/one/{id}")
    public ResponseStatusVO getById(@PathVariable("id") Long id) {
        WeixinCertificationVO weixinCertificationVO = new WeixinCertificationVO();
        Object obj = weixinCertificationService.getById(id);
        if (obj != null) {
            weixinCertificationVO = BeanUtils.copy(obj, WeixinCertificationVO.class);
        }
        return ResponseStatusVO.ok("查询成功", weixinCertificationVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = weixinCertificationService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinCertificationVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody WeixinCertificationQuery weixinCertificationQuery) {
        PagerDTO pagerDTO = weixinCertificationService.listAllByCondition(weixinCertificationQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinCertificationVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody WeixinCertificationQuery weixinCertificationQuery) {
        PagerDTO pagerDTO = weixinCertificationService.listPageByCondition(weixinCertificationQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), WeixinCertificationVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @Autowired
    public void setWeixinCertificationService(WeixinCertificationService weixinCertificationService) {
        this.weixinCertificationService = weixinCertificationService;
    }

    @Autowired
    public void setUploadService(UploadService uploadService) {
        this.uploadService = uploadService;
    }
}
