package com.xfexpress.base.module.support.helpdoc.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xfexpress.base.module.support.helpdoc.domain.entity.HelpDocCatalogEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

/**
 * 帮助文档目录
 *
 * @Date 2022-08-20 23:11:42
 */
@Mapper
public interface HelpDocCatalogDao extends BaseMapper<HelpDocCatalogEntity> {

}
