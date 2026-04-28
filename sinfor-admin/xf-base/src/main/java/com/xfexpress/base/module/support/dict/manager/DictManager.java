package com.xfexpress.base.module.support.dict.manager;

import jakarta.annotation.Resource;
import com.xfexpress.base.common.util.SmartBeanUtil;
import com.xfexpress.base.constant.CacheKeyConst;
import com.xfexpress.base.module.support.dict.dao.DictDao;
import com.xfexpress.base.module.support.dict.dao.DictDataDao;
import com.xfexpress.base.module.support.dict.domain.entity.DictDataEntity;
import com.xfexpress.base.module.support.dict.domain.entity.DictEntity;
import com.xfexpress.base.module.support.dict.domain.vo.DictDataVO;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;


/**
 * 数据字典 缓存
 *
 * @Date 2025-03-25 22:25:04
 */

@Service
public class DictManager {

    @Resource
    private DictDao dictDao;

    @Resource
    private DictDataDao dictDataDao;


    /**
     * 获取字典
     */
    @Cacheable(value = CacheKeyConst.Dict.DICT_DATA, key = "#dictCode + '_' + #dataValue")
    public DictDataVO getDictData(String dictCode, String dataValue) {
        DictEntity dictEntity = dictDao.selectByCode(dictCode);
        if (dictEntity == null) {
            return null;
        }

        DictDataEntity dictDataEntity = dictDataDao.selectByDictIdAndValue(dictEntity.getDictId(), dataValue);
        return SmartBeanUtil.copy(dictDataEntity, DictDataVO.class);
    }

}
