package com.seerbigdata.sa.base.module.support.datatracer.constant;
import lombok.AllArgsConstructor;
import lombok.Getter;
import com.seerbigdata.sa.base.common.enumeration.BaseEnum;
/**
 * 数据业务类型
 *
 * 
 * @Date 2022-07-23 19:38:52-
 *
 * 
 * 
 */
@AllArgsConstructor
@Getter
public enum DataTracerTypeEnum implements BaseEnum {

    ;

    private final Integer value;

    private final String desc;
}
