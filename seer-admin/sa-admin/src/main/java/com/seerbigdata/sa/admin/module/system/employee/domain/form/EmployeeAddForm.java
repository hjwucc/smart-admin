package com.seerbigdata.sa.admin.module.system.employee.domain.form;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Data;
import com.seerbigdata.sa.base.common.enumeration.GenderEnum;
import com.seerbigdata.sa.base.common.swagger.SchemaEnum;
import com.seerbigdata.sa.base.common.util.SmartVerificationUtil;
import com.seerbigdata.sa.base.common.validator.enumeration.CheckEnum;
import org.hibernate.validator.constraints.Length;

import java.util.List;

/**
 * 添加员工
 *
 * @Date 2021-12-20 21:06:49
 */
@Data
public class EmployeeAddForm {

    @Schema(description = "姓名")
    @NotNull(message = "姓名不能为空")
    @Length(max = 30, message = "姓名最多30字符")
    private String actualName;

    @Schema(description = "登录账号")
    @NotNull(message = "登录账号不能为空")
    @Length(max = 30, message = "登录账号最多30字符")
    private String loginName;

    @Schema(description = "登录密码")
    @Length(min = 6, max = 20, message = "登录密码长度为6到20位字符")
    private String loginPwd;

    @SchemaEnum(GenderEnum.class)
    @CheckEnum(value = GenderEnum.class, message = "性别错误")
    private Integer gender;

    @Schema(description = "部门id")
    private Long departmentId;

    @Schema(description = "是否启用")
    private Boolean disabledFlag;

    @Schema(description = "手机号")
    @Pattern(regexp = SmartVerificationUtil.PHONE_REGEXP, message = "手机号格式不正确")
    private String phone;

    @Schema(description = "邮箱账号")
    @Pattern(regexp = SmartVerificationUtil.EMAIL, message = "邮箱账号格式不正确")
    private String email;

    @Schema(description = "职务级别ID")
    private Long positionId;

    @Schema(description = "角色列表")
    private List<Long> roleIdList;

    @Schema(description = "备注")
    @Length(max = 200, message = "备注最多200字符")
    private String remark;

}
