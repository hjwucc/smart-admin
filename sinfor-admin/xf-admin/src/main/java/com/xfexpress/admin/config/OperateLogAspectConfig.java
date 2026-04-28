package com.xfexpress.admin.config;

import com.xfexpress.base.module.support.operatelog.core.OperateLogAspect;
import com.xfexpress.base.module.support.operatelog.core.OperateLogConfig;
import org.springframework.context.annotation.Configuration;

/**
 * 操作日志切面 配置
 *
 * @Date 2022-05-30 21:22:12
 */
@Configuration
public class OperateLogAspectConfig extends OperateLogAspect{

    /**
     * 配置信息
     */
    @Override
    public OperateLogConfig getOperateLogConfig() {
        return OperateLogConfig.builder().corePoolSize(1).queueCapacity(10000).build();
    }


}