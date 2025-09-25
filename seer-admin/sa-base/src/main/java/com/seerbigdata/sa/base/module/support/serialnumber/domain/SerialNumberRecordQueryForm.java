package com.seerbigdata.sa.base.module.support.serialnumber.domain;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import com.seerbigdata.sa.base.common.domain.PageParam;
/**
 * 单据序列号 生成记录 查询
 *
 *
 * @Date 2022-03-25 21:46:07
 *
 *
 *
 */
@Data
public class SerialNumberRecordQueryForm extends PageParam {

    @Schema(description = "单号id")
    @NotNull(message = "单号id不能为空")
    private Integer serialNumberId;
}
