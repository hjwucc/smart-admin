package com.seerbigdata.sa.base.config;
import jakarta.annotation.Resource;
import com.seerbigdata.sa.base.module.support.heartbeat.core.HeartBeatManager;
import com.seerbigdata.sa.base.module.support.heartbeat.core.IHeartBeatRecordHandler;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 心跳配置
 *
 * 
 * @Date 2018/10/9 18:47
 *
 *
 *
 */
@Configuration
public class HeartBeatConfig {

    /**
     * 间隔时间
     */
    @Value("${heart-beat.interval-seconds}")
    private Long intervalSeconds;

    @Resource
    private IHeartBeatRecordHandler heartBeatRecordHandler;

    @Bean
    public HeartBeatManager heartBeatManager() {
        return new HeartBeatManager(intervalSeconds * 1000L, heartBeatRecordHandler);
    }


}
