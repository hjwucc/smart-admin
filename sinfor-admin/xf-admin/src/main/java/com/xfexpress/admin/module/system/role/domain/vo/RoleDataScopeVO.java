package com.xfexpress.admin.module.system.role.domain.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 角色的数据范围
 *
 * @Date 2022-04-08 21:53:04
 */
@Data
public class RoleDataScopeVO {

    @Schema(description = "数据范围id")
    private Integer dataScopeType;

    @Schema(description = "可见范围")
    private Integer viewType;
}
