package com.xfexpress.base.config;

import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import com.xfexpress.base.common.constant.StringConst;
import com.xfexpress.base.common.util.SmartRequestUtil;
import com.xfexpress.base.module.support.repeatsubmit.RepeatSubmitAspect;
import com.xfexpress.base.module.support.repeatsubmit.ticket.RepeatSubmitRedisTicket;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * 重复提交配置
 *
 * @Date 2021/10/9 18:47
 */
@Configuration
public class RepeatSubmitConfig {

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    @Bean
    public RepeatSubmitAspect repeatSubmitAspect() {
        RepeatSubmitRedisTicket ticket = new RepeatSubmitRedisTicket(redisTemplate, this::ticket);
        return new RepeatSubmitAspect(ticket);
    }

    /**
     * 获取指明某个用户的凭证
     */
    private String ticket(HttpServletRequest request) {
        Long userId = SmartRequestUtil.getRequestUserId();
        if (null == userId) {
            return StringConst.EMPTY;
        }
        return request.getServletPath() + "_" + userId;
    }
}
