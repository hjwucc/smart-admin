package com.xfexpress.base.module.support.datatracer.domain.form;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import com.xfexpress.base.common.domain.PageParam;
import com.xfexpress.base.common.swagger.SchemaEnum;
import com.xfexpress.base.module.support.datatracer.constant.DataTracerTypeEnum;

/**
 * 查询表单
 *
 * @Date 2022-07-23 19:38:52
 */
@Data
public class DataTracerQueryForm extends PageParam {

    @SchemaEnum(DataTracerTypeEnum.class)
    private Integer type;

    @Schema(description = "业务id")
    @NotNull(message = "业务id不能为空")
    private Long dataId;

    @Schema(description = "关键字")
    private String keywords;
}
