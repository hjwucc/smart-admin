package com.xfexpress.base.module.support.heartbeat.core;

/**
 * 心跳处理接口
 *
 * @Date 2022-01-09 20:57:24
 */
public interface IHeartBeatRecordHandler {

    /**
     * 心跳日志处理方法
     *
     * @param heartBeatRecord
     */
    void handler(HeartBeatRecord heartBeatRecord);
}
