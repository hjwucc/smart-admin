package com.seerbigdata.sa.base.module.support.reload.dao;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.seerbigdata.sa.base.module.support.reload.domain.ReloadResultEntity;
import com.seerbigdata.sa.base.module.support.reload.domain.ReloadResultVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * t_reload_result 数据表dao
 *
 *
 * @Date 2015-03-02 19:11:52
 * 
 * 
 * 
 */
@Mapper
public interface ReloadResultDao extends BaseMapper<ReloadResultEntity> {

    List<ReloadResultVO> query(@Param("tag") String tag);
}
