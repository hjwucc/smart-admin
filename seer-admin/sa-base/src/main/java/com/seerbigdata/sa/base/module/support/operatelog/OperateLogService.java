package com.seerbigdata.sa.base.module.support.operatelog;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import jakarta.annotation.Resource;
import com.seerbigdata.sa.base.common.code.UserErrorCode;
import com.seerbigdata.sa.base.common.domain.PageResult;
import com.seerbigdata.sa.base.common.domain.ResponseDTO;
import com.seerbigdata.sa.base.common.util.SmartBeanUtil;
import com.seerbigdata.sa.base.common.util.SmartPageUtil;
import com.seerbigdata.sa.base.module.support.operatelog.domain.OperateLogEntity;
import com.seerbigdata.sa.base.module.support.operatelog.domain.OperateLogQueryForm;
import com.seerbigdata.sa.base.module.support.operatelog.domain.OperateLogVO;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *  操作日志
 *
 * 
 * @Date 2021-12-08 20:48:52
 *
 *
 *
 */
@Service
public class OperateLogService {

    @Resource
    private OperateLogDao operateLogDao;

    /**
     * 
     * @description 分页查询
     */
    public ResponseDTO<PageResult<OperateLogVO>> queryByPage(OperateLogQueryForm queryForm) {
        Page page = SmartPageUtil.convert2PageQuery(queryForm);
        List<OperateLogEntity> logEntityList = operateLogDao.queryByPage(page, queryForm);
        PageResult<OperateLogVO> pageResult = SmartPageUtil.convert2PageResult(page, logEntityList, OperateLogVO.class);
        return ResponseDTO.ok(pageResult);
    }


    /**
     * 查询详情
     * @param operateLogId
     * @return
     */
    public ResponseDTO<OperateLogVO> detail(Long operateLogId) {
        OperateLogEntity operateLogEntity = operateLogDao.selectById(operateLogId);
        if(operateLogEntity == null){
            return ResponseDTO.error(UserErrorCode.DATA_NOT_EXIST);
        }
        OperateLogVO operateLogVO = SmartBeanUtil.copy(operateLogEntity, OperateLogVO.class);
        return ResponseDTO.ok(operateLogVO);
    }
}
