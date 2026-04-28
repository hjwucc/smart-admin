package com.xfexpress.base.module.support.feedback.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import com.xfexpress.base.common.controller.SupportBaseController;
import com.xfexpress.base.common.domain.PageResult;
import com.xfexpress.base.common.domain.RequestUser;
import com.xfexpress.base.common.domain.ResponseDTO;
import com.xfexpress.base.common.util.SmartRequestUtil;
import com.xfexpress.base.constant.SwaggerTagConst;
import com.xfexpress.base.module.support.feedback.domain.FeedbackAddForm;
import com.xfexpress.base.module.support.feedback.domain.FeedbackQueryForm;
import com.xfexpress.base.module.support.feedback.domain.FeedbackVO;
import com.xfexpress.base.module.support.feedback.service.FeedbackService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * 意见反馈
 *
 * @Date 2022-08-11 20:48:09
 */
@Slf4j
@Tag(name = SwaggerTagConst.Support.FEEDBACK)
@RestController
public class FeedbackController extends SupportBaseController {

    @Resource
    private FeedbackService feedbackService;

    @Operation(summary = "意见反馈-分页查询")
    @PostMapping("/feedback/query")
    public ResponseDTO<PageResult<FeedbackVO>> query(@RequestBody @Valid FeedbackQueryForm queryForm) {
        return feedbackService.query(queryForm);
    }

    @Operation(summary = "意见反馈-新增")
    @PostMapping("/feedback/add")
    public ResponseDTO<String> add(@RequestBody @Valid FeedbackAddForm addForm) {
        RequestUser employee = SmartRequestUtil.getRequestUser();
        return feedbackService.add(addForm, employee);
    }
}
