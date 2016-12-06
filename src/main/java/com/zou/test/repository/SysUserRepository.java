package com.zou.test.repository;

import com.zou.commons.base.repository.IBaseRepository;
import com.zou.test.domain.SysUser;

/**
 * Created by zzf on 2016/10/29.
 */
public interface SysUserRepository extends IBaseRepository<SysUser,Integer>,SysUserRepositoryCustom {

}
