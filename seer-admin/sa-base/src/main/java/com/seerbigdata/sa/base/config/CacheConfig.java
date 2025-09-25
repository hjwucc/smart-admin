package com.seerbigdata.sa.base.config;
import com.alibaba.fastjson.support.spring.GenericFastJsonRedisSerializer;
import jakarta.annotation.Resource;
import com.seerbigdata.sa.base.module.support.cache.CacheService;
import com.seerbigdata.sa.base.module.support.cache.CaffeineCacheServiceImpl;
import com.seerbigdata.sa.base.module.support.cache.RedisCacheServiceImpl;
import com.seerbigdata.sa.base.module.support.redis.CustomRedisCacheManager;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.cache.CacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheWriter;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.serializer.RedisSerializationContext;

/**
 * 缓存配置
 *
 */
@Configuration
public class CacheConfig {

    private static final String REDIS_CACHE = "redis";
    private static final String CAFFEINE_CACHE = "caffeine";


    @Resource
    private RedisConnectionFactory redisConnectionFactory;

    /**
     * 创建自定义Redis缓存管理器Bean 整合spring-cache
     * Redis连接工厂，用于建立与Redis服务器的连接
     *
     * @return RedisCacheManager Redis缓存管理器实例（同时满足CacheManager和RedisCacheManager的需求）
     */
    @Bean("redisCacheManager")
    @Primary
    @ConditionalOnProperty(prefix = "spring.cache", name = {"type"}, havingValue = REDIS_CACHE)
    public RedisCacheManager redisCacheManager() {
        // 使用非阻塞模式的缓存写入器，适用于大多数高并发场景
        RedisCacheWriter redisCacheWriter = RedisCacheWriter.nonLockingRedisCacheWriter(redisConnectionFactory);

        // 构建默认缓存配置
        RedisCacheConfiguration defaultCacheConfig = RedisCacheConfiguration.defaultCacheConfig()
                // 禁止缓存 null 值，避免缓存穿透
                .disableCachingNullValues()
                .computePrefixWith(name -> "cache:" + name + ":")
                // 使用 FastJSON 序列化缓存值，支持复杂对象
                .serializeValuesWith(RedisSerializationContext.SerializationPair
                        .fromSerializer(new GenericFastJsonRedisSerializer()));

        // 返回自定义缓存管理器，支持 cacheName#ttl 格式与永久缓存（#-1）
        return new CustomRedisCacheManager(redisCacheWriter, defaultCacheConfig);
    }

    /**
     * 为Spring Cache提供CacheManager接口的别名
     *
     * @return CacheManager 缓存管理器接口
     */
    @Bean("cacheManager")
    @ConditionalOnProperty(prefix = "spring.cache", name = {"type"}, havingValue = REDIS_CACHE)
    public CacheManager cacheManager() {
        return redisCacheManager();
    }

    @Bean
    @ConditionalOnProperty(prefix = "spring.cache", name = {"type"}, havingValue = REDIS_CACHE)
    public CacheService redisCacheService() {
        return new RedisCacheServiceImpl();
    }

    @Bean
    @ConditionalOnProperty(prefix = "spring.cache", name = {"type"}, havingValue = CAFFEINE_CACHE)
    public CacheService caffeineCacheService() {
        return new CaffeineCacheServiceImpl();
    }

}