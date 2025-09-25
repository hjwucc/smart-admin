package com.seerbigdata.sa.base.module.support.heartbeat;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import jakarta.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
import com.seerbigdata.sa.base.common.domain.PageResult;
import com.seerbigdata.sa.base.common.domain.ResponseDTO;
import com.seerbigdata.sa.base.common.util.SmartPageUtil;
import com.seerbigdata.sa.base.module.support.heartbeat.domain.HeartBeatRecordQueryForm;
import com.seerbigdata.sa.base.module.support.heartbeat.domain.HeartBeatRecordVO;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 心跳记录
 *
 *
 * @Date 2022-01-09 20:57:24
 *
 *
 *
 */
@Slf4j
@Service
public class HeartBeatService {

    @Resource
    private HeartBeatRecordDao heartBeatRecordDao;

    public ResponseDTO<PageResult<HeartBeatRecordVO>> pageQuery(HeartBeatRecordQueryForm pageParam) {
        Page pageQueryInfo = SmartPageUtil.convert2PageQuery(pageParam);
        List<HeartBeatRecordVO> recordVOList = heartBeatRecordDao.pageQuery(pageQueryInfo,pageParam);
        PageResult<HeartBeatRecordVO> pageResult = SmartPageUtil.convert2PageResult(pageQueryInfo, recordVOList);
        return ResponseDTO.ok(pageResult);
    }
}
