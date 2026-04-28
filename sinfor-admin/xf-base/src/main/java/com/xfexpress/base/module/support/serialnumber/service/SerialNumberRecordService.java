package com.xfexpress.base.module.support.serialnumber.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import jakarta.annotation.Resource;
import com.xfexpress.base.common.domain.PageResult;
import com.xfexpress.base.common.util.SmartPageUtil;
import com.xfexpress.base.module.support.serialnumber.dao.SerialNumberRecordDao;
import com.xfexpress.base.module.support.serialnumber.domain.SerialNumberRecordEntity;
import com.xfexpress.base.module.support.serialnumber.domain.SerialNumberRecordQueryForm;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 单据序列号 记录
 *
 * @Date 2022-03-25 21:46:07
 */
@Service
public class SerialNumberRecordService {

    @Resource
    private SerialNumberRecordDao serialNumberRecordDao;

    public PageResult<SerialNumberRecordEntity> query(SerialNumberRecordQueryForm queryForm) {
        Page page = SmartPageUtil.convert2PageQuery(queryForm);
        List<SerialNumberRecordEntity> recordList = serialNumberRecordDao.query(page, queryForm);
        return SmartPageUtil.convert2PageResult(page, recordList);
    }
}
