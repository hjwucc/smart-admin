package com.seerbigdata.sa.base.module.support.helpdoc.domain.form;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

/**
 * 更新 帮助文档
 *
 *
 * @Date 2022-08-20 23:11:42
 * 
 * 
 * 
 */
@Data
public class HelpDocUpdateForm extends HelpDocAddForm {

    @Schema(description = "id")
    @NotNull(message = "通知id不能为空")
    private Long helpDocId;

}
