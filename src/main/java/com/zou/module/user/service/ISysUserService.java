package com.zou.module.user.service;

import com.zou.commons.base.service.IBaseService;
import com.zou.module.user.domain.SysUser;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * Created by zzf on 2016/9/24.
 */
public interface ISysUserService extends IBaseService<SysUser, Integer> {

    SysUser findSysUser(Integer id);

    void addSysUser(SysUser sysUser);

    void deleteSysUser(Integer id);

    void updateSysUser(SysUser sysUser);

    SysUser loginSysUser(String loginId, String password);

    Page<SysUser> findSysUserPage(Pageable pageable, String userName);
}
