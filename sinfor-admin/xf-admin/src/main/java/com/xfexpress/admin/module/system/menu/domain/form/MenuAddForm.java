package com.xfexpress.admin.module.system.menu.domain.form;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 菜单 添加表单
 *
 * @Date 2022-03-06 22:04:37
 */
@Data
public class MenuAddForm extends MenuBaseForm {

    @Schema(hidden = true)
    private Long createUserId;
}
