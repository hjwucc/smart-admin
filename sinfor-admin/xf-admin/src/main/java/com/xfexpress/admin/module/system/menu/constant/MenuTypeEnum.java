package com.xfexpress.admin.module.system.menu.constant;


import com.xfexpress.base.common.enumeration.BaseEnum;

/**
 * 菜单类型枚举
 *
 * @Date 2022-03-06 22:04:37
 */
public enum MenuTypeEnum implements BaseEnum {
    /**
     * 目录
     */
    CATALOG(1, "目录"),
    /**
     * 菜单
     */
    MENU(2, "菜单"),
    /**
     * 功能点
     */
    POINTS(3, "功能点");

    private final Integer value;

    private final String desc;


    MenuTypeEnum(Integer value, String desc) {
        this.value = value;
        this.desc = desc;
    }

    @Override
    public Integer getValue() {
        return value;
    }

    @Override
    public String getDesc() {
        return desc;
    }
}
