package com.seerbigdata.sa.base.module.support.reload.dao;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.seerbigdata.sa.base.module.support.reload.domain.ReloadItemEntity;
import com.seerbigdata.sa.base.module.support.reload.domain.ReloadItemVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * t_reload_item 数据表dao
 *
 *
 * @Date 2015-03-02 19:11:52
 *
 *
 *
 */
@Mapper
public interface ReloadItemDao extends BaseMapper<ReloadItemEntity> {

    List<ReloadItemVO> query();
}
