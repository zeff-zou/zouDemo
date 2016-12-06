package com.zou.test.service;

import com.zou.commons.base.service.IBaseService;
import com.zou.test.domain.SysUser;

/**
 * Created by zzf on 2016/9/24.
 */
public interface ISysUserService extends IBaseService<SysUser, Integer> {

    SysUser findSysUser(Integer id);

    void addSysUser(SysUser sysUser);

    void deleteSysUser(Integer id);

    void updateSysUser(SysUser sysUser);
}
