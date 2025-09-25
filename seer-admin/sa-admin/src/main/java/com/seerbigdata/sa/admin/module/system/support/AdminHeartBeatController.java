package com.seerbigdata.sa.admin.module.system.support;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import com.seerbigdata.sa.base.common.controller.SupportBaseController;
import com.seerbigdata.sa.base.common.domain.PageResult;
import com.seerbigdata.sa.base.common.domain.ResponseDTO;
import com.seerbigdata.sa.base.constant.SwaggerTagConst;
import com.seerbigdata.sa.base.module.support.heartbeat.HeartBeatService;
import com.seerbigdata.sa.base.module.support.heartbeat.domain.HeartBeatRecordQueryForm;
import com.seerbigdata.sa.base.module.support.heartbeat.domain.HeartBeatRecordVO;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * 心跳记录
 *
 *
 * @Date 2022-01-09 20:57:24
 *
 *
 *
 */
@Tag(name = SwaggerTagConst.Support.HEART_BEAT)
@RestController
public class AdminHeartBeatController extends SupportBaseController {

    @Resource
    private HeartBeatService heartBeatService;

    @PostMapping("/heartBeat/query")
    @Operation(summary = "查询心跳记录 ")
    public ResponseDTO<PageResult<HeartBeatRecordVO>> query(@RequestBody @Valid HeartBeatRecordQueryForm pageParam) {
        return heartBeatService.pageQuery(pageParam);
    }

}
