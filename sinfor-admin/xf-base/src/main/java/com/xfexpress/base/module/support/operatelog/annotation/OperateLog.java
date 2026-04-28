package com.xfexpress.base.module.support.operatelog.annotation;

import java.lang.annotation.*;

/**
 * 用户操作日志 注解
 *
 * @Date 2021-12-08 20:48:52
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.METHOD})
@Documented
public @interface OperateLog {

}
