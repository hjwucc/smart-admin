package com.seerbigdata.sa.admin.module.system.role.domain.form;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import com.seerbigdata.sa.base.common.domain.PageParam;
/**
 * 角色的员工查询
 *
 * 
 * @Date 2022-04-08 21:53:04
 *
 *
 *
 */
@Data
public class RoleEmployeeQueryForm extends PageParam {

    @Schema(description = "关键字")
    private String keywords;

    @Schema(description = "角色id")
    private String roleId;
}
