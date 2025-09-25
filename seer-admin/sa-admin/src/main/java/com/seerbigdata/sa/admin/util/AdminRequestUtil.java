package com.seerbigdata.sa.admin.util;
import com.seerbigdata.sa.admin.module.system.login.domain.RequestEmployee;
import com.seerbigdata.sa.base.common.domain.RequestUser;
import com.seerbigdata.sa.base.common.util.SmartRequestUtil;
/**
 * admin 端的请求工具类
 *
 * 
 * @Date 2023/7/28 19:39:21
 *
 *
 * ，Since 2012
 */
public final class AdminRequestUtil {


    public static RequestEmployee getRequestUser() {
        return (RequestEmployee) SmartRequestUtil.getRequestUser();
    }

    public static Long getRequestUserId() {
        RequestUser requestUser = getRequestUser();
        return null == requestUser ? null : requestUser.getUserId();
    }


}
