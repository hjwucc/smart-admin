package com.xfexpress.base.module.support.config.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

/**
 * 配置更新表单
 *
 * @Date 2022-03-14 20:46:27
 */
@Data
public class ConfigUpdateForm extends ConfigAddForm {

    @Schema(description = "configId")
    @NotNull(message = "configId不能为空")
    private Long configId;
}
