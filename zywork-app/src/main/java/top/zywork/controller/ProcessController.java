package top.zywork.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import top.zywork.common.BeanUtils;
import top.zywork.common.BindingResultUtils;
import top.zywork.common.FileUtils;
import top.zywork.common.UploadUtils;
import top.zywork.dto.PagerDTO;
import top.zywork.dto.ProcessDTO;
import top.zywork.enums.ResponseStatusEnum;
import top.zywork.enums.StorageProviderEnum;
import top.zywork.query.ProcessQuery;
import top.zywork.service.ProcessService;
import top.zywork.service.UploadService;
import top.zywork.vo.PagerVO;
import top.zywork.vo.ProcessVO;
import top.zywork.vo.ResponseStatusVO;

import java.util.List;

/**
 * ProcessController控制器类<br/>
 *
 * 创建于2019-02-14<br/>
 *
 * @author http://zywork.top 王振宇
 * @version 1.0
 */
@RestController
@RequestMapping("/process")
public class ProcessController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(ProcessController.class);

    @Value("${activiti.processDir}")
    private String processDir;

    @Value("${activiti.allowedExts}")
    private String allowedExts;

    @Value("${activiti.maxSize}")
    private Integer maxSize;

    private ProcessService processService;

    private UploadService uploadService;

    @PostMapping("admin/save")
    public ResponseStatusVO save(@RequestBody @Validated ProcessVO processVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        processService.save(BeanUtils.copy(processVO, ProcessDTO.class));
        return ResponseStatusVO.ok("添加成功", null);
    }

    /**
     * 上传流程zip文件
     * @param id
     * @param file
     * @return
     */
    @PostMapping("admin/upload/{id}")
    public ResponseStatusVO uploadProcessFile(@PathVariable("id") Long id, MultipartFile file) {
        Object object = processService.getById(id);
        if (object == null) {
            return ResponseStatusVO.dataError("不存在的流程编号", null);
        }
        ProcessDTO processDTO = (ProcessDTO) object;
        String filePath = processDTO.getFilePath();
        UploadUtils.UploadOptions uploadOptions = new UploadUtils.UploadOptions(processDir, "", processDir);
        ResponseStatusVO responseStatusVO = uploadService.uploadFile(StorageProviderEnum.LOCAL.getProvider(), file, allowedExts, maxSize * 1024 * 1024L, uploadOptions);
        if (responseStatusVO.getCode().intValue() == ResponseStatusEnum.OK.getCode().intValue()) {
            processDTO.setFilePath(responseStatusVO.getData().toString());
            int updateRows = processService.update(processDTO);
            if (updateRows == 1) {
                if (org.apache.commons.lang.StringUtils.isNotEmpty(filePath)) {
                    FileUtils.deleteFile(filePath);
                }
            } else {
                return ResponseStatusVO.error("上传及更新流程失败", null);
            }
        }
        return responseStatusVO;
    }

    @PostMapping("admin/batch-save")
    public ResponseStatusVO saveBatch(@RequestBody @Validated List<ProcessVO> processVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        processService.saveBatch(BeanUtils.copyListObj(processVOList, ProcessDTO.class));
        return ResponseStatusVO.ok("批量添加成功", null);
    }

    @GetMapping("admin/remove/{id}")
    public ResponseStatusVO removeById(@PathVariable("id") Long id) {
        Object object = processService.getById(id);
        if (object == null) {
            return ResponseStatusVO.dataError("不存在的流程编号", null);
        }
        ProcessDTO processDTO = (ProcessDTO) object;
        int removeRows = processService.removeById(id);
        if (removeRows == 1) {
            if (org.apache.commons.lang.StringUtils.isNotEmpty(processDTO.getFilePath())) {
                FileUtils.deleteFile(processDTO.getFilePath());
            }
        }
        return ResponseStatusVO.ok("删除成功", null);
    }

    @PostMapping("admin/batch-remove")
    public ResponseStatusVO removeByIds(@RequestBody String[] ids) {
        for (String id : ids) {
            Object object = processService.getById(id);
            if (object == null) {
                continue;
            }
            ProcessDTO processDTO = (ProcessDTO) object;
            int removeRows = processService.removeById(id);
            if (removeRows == 1) {
                if (org.apache.commons.lang.StringUtils.isNotEmpty(processDTO.getFilePath())) {
                    FileUtils.deleteFile(processDTO.getFilePath());
                }
            }
        }
        return ResponseStatusVO.ok("批量删除成功", null);
    }

    @PostMapping("admin/update")
    public ResponseStatusVO update(@RequestBody @Validated ProcessVO processVO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        int updateRows = processService.update(BeanUtils.copy(processVO, ProcessDTO.class));
        if (updateRows == 1) {
            return ResponseStatusVO.ok("更新成功", null);
        } else {
            return ResponseStatusVO.dataError("数据版本号有问题，在此更新前数据已被更新", null);
        }
    }

    @PostMapping("admin/batch-update")
    public ResponseStatusVO updateBatch(@RequestBody @Validated List<ProcessVO> processVOList, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseStatusVO.dataError(BindingResultUtils.errorString(bindingResult), null);
        }
        processService.updateBatch(BeanUtils.copyListObj(processVOList, ProcessDTO.class));
        return ResponseStatusVO.ok("批量更新成功", null);
    }

    @PostMapping("admin/active")
    public ResponseStatusVO active(@RequestBody ProcessVO processVO) {
        processService.update(BeanUtils.copy(processVO, ProcessDTO.class));
        return ResponseStatusVO.ok("激活或冻结成功", null);
    }

    @PostMapping("admin/batch-active")
    public ResponseStatusVO activeBatch(@RequestBody @Validated List<ProcessVO> processVOList) {
        processService.updateBatch(BeanUtils.copyListObj(processVOList, ProcessDTO.class));
        return ResponseStatusVO.ok("批量激活或冻结成功", null);
    }

    @GetMapping("admin/one/{id}")
    public ResponseStatusVO getById(@PathVariable("id") Long id) {
        ProcessVO processVO = new ProcessVO();
        Object obj = processService.getById(id);
        if (obj != null) {
            processVO = BeanUtils.copy(obj, ProcessVO.class);
        }
        return ResponseStatusVO.ok("查询成功", processVO);
    }

    @GetMapping("admin/all")
    public ResponseStatusVO listAll() {
        PagerDTO pagerDTO = processService.listAll();
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), ProcessVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/all-cond")
    public ResponseStatusVO listAllByCondition(@RequestBody ProcessQuery processQuery) {
        PagerDTO pagerDTO = processService.listAllByCondition(processQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), ProcessVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @PostMapping("admin/pager-cond")
    public ResponseStatusVO listPageByCondition(@RequestBody ProcessQuery processQuery) {
        PagerDTO pagerDTO = processService.listPageByCondition(processQuery);
        PagerVO pagerVO = BeanUtils.copy(pagerDTO, PagerVO.class);
        pagerVO.setRows(BeanUtils.copyList(pagerDTO.getRows(), ProcessVO.class));
        return ResponseStatusVO.ok("查询成功", pagerVO);
    }

    @Autowired
    public void setProcessService(ProcessService processService) {
        this.processService = processService;
    }

    @Autowired
    public void setUploadService(UploadService uploadService) {
        this.uploadService = uploadService;
    }
}
