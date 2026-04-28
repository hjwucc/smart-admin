package com.xfexpress.base.module.support.mail;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xfexpress.base.module.support.mail.domain.MailTemplateEntity;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

/**
 * 邮件模板
 *
 * @Date 2024/8/5
 */
@Mapper
public interface MailTemplateDao extends BaseMapper<MailTemplateEntity> {

}
