package com.seerbigdata.sa.admin.module.system.support;
import cn.dev33.satoken.annotation.SaCheckPermission;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import com.seerbigdata.sa.base.common.controller.SupportBaseController;
import com.seerbigdata.sa.base.common.domain.PageResult;
import com.seerbigdata.sa.base.common.domain.ResponseDTO;
import com.seerbigdata.sa.base.constant.SwaggerTagConst;
import com.seerbigdata.sa.base.module.support.file.domain.form.FileQueryForm;
import com.seerbigdata.sa.base.module.support.file.domain.vo.FileVO;
import com.seerbigdata.sa.base.module.support.file.service.FileService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件服务
 *
 * 
 * @Date 2019年10月11日 15:34:47
 *
 * 
 * 
 */
@RestController
@Tag(name = SwaggerTagConst.Support.FILE)
public class AdminFileController extends SupportBaseController {

    @Resource
    private FileService fileService;

    @Operation(summary = "分页查询 ")
    @PostMapping("/file/queryPage")
    @SaCheckPermission("support:file:query")
    public ResponseDTO<PageResult<FileVO>> queryPage(@RequestBody @Valid FileQueryForm queryForm) {
        return ResponseDTO.ok(fileService.queryPage(queryForm));
    }

}
