package com.seerbigdata.sa.admin.module.system.employee.domain.form;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

/**
 * @author whj
 * @date 2025/9/20 10:01
 */
@Data
public class EmployeeResetPwdForm {

    @Schema(description = "员工id")
    @NotNull(message = "员工id不能为空")
    private Long employeeId;

    @Schema(description = "新密码")
    @Length(min = 6, max = 20, message = "登录密码长度为6到20位字符")
    private String resetPwd;
}
