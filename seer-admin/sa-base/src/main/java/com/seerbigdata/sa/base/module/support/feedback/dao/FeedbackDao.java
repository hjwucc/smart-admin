package com.seerbigdata.sa.base.module.support.feedback.dao;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.seerbigdata.sa.base.module.support.feedback.domain.FeedbackEntity;
import com.seerbigdata.sa.base.module.support.feedback.domain.FeedbackQueryForm;
import com.seerbigdata.sa.base.module.support.feedback.domain.FeedbackVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 意见反馈 dao
 *
 * 
 * @Date 2022-08-11 20:48:09
 *
 *
 *
 */
@Mapper
public interface FeedbackDao extends BaseMapper<FeedbackEntity> {

    /**
     * 分页查询
     */
    List<FeedbackVO> queryPage(Page page, @Param("query") FeedbackQueryForm query);
}