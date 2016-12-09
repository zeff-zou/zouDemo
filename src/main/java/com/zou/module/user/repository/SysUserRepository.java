package com.zou.module.user.repository;

import com.zou.commons.base.repository.IBaseRepository;
import com.zou.module.user.domain.SysUser;

import java.util.List;

/**
 * Created by zzf on 2016/10/29.
 */
public interface SysUserRepository extends IBaseRepository<SysUser,Integer>,SysUserRepositoryCustom {
    SysUser findByLoginIdAndUserPsw(String loginId, String password);
}
