package com.seerbigdata.sa.base.common.enumeration;
import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 系统环境枚举类
 *
 * 
 * @Date 2020-10-15 22:45:04
 *
 *
 *
 */
@AllArgsConstructor
@Getter
public enum SystemEnvironmentEnum implements BaseEnum {
    /**
     * dev
     */
    DEV(SystemEnvironmentNameConst.DEV, "开发环境"),

    /**
     * test
     */
    TEST(SystemEnvironmentNameConst.TEST, "测试环境"),

    /**
     * pre
     */
    PRE(SystemEnvironmentNameConst.PRE, "预发布环境"),

    /**
     * docker
     */
    DOCKER(SystemEnvironmentNameConst.DOCKER, "docker环境"),

    /**
     * prod
     */
    PROD(SystemEnvironmentNameConst.PROD, "生产环境");

    private final String value;

    private final String desc;

    public static final class SystemEnvironmentNameConst {
        public static final String DEV = "dev";
        public static final String TEST = "test";
        public static final String PRE = "pre";
        public static final String PROD = "prod";
        public static final String DOCKER = "docker";
    }

}
