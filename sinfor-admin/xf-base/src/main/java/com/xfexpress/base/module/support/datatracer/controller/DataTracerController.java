package com.xfexpress.base.module.support.datatracer.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import com.xfexpress.base.common.controller.SupportBaseController;
import com.xfexpress.base.common.domain.PageResult;
import com.xfexpress.base.common.domain.ResponseDTO;
import com.xfexpress.base.constant.SwaggerTagConst;
import com.xfexpress.base.module.support.datatracer.domain.form.DataTracerQueryForm;
import com.xfexpress.base.module.support.datatracer.domain.vo.DataTracerVO;
import com.xfexpress.base.module.support.datatracer.service.DataTracerService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * 数据变动记录
 *
 * @Date 2022-07-23 19:38:52
 */
@Tag(name = SwaggerTagConst.Support.DATA_TRACER)
@RestController
public class DataTracerController extends SupportBaseController {

    @Resource
    private DataTracerService dataTracerService;

    @Operation(summary = "分页查询业务操作日志 -")
    @PostMapping("/dataTracer/query")
    public ResponseDTO<PageResult<DataTracerVO>> query(@Valid @RequestBody DataTracerQueryForm queryForm) {
        return dataTracerService.query(queryForm);
    }
}
