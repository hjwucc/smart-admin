package com.seerbigdata.sa.admin.module.system.role.domain.form;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import com.seerbigdata.sa.base.common.domain.PageParam;
/**
 * 角色 查询
 *
 * 
 * @Date 2022-02-26 19:09:42
 *
 *
 *
 */
@Data
public class RoleQueryForm extends PageParam {

    @Schema(description = "角色名称")
    private String roleName;

    @Schema(description = "角色id")
    private String roleId;
}
