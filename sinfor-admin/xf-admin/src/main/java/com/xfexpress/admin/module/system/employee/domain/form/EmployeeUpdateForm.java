package com.xfexpress.admin.module.system.employee.domain.form;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

/**
 * 更新员工
 *
 * @Date 2021-12-20 21:06:49
 */
@Data
public class EmployeeUpdateForm extends EmployeeAddForm {

    @Schema(description = "员工id")
    @NotNull(message = "员工id不能为空")
    private Long employeeId;
}
