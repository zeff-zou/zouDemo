package com.zou.test.repository;

import com.zou.commons.base.dao.IBaseRepository;
import com.zou.test.domain.SysUser;

/**
 * Created by zzf on 2016/10/29.
 */
public interface ISysUserRepository extends IBaseRepository<SysUser,Integer>,SysUserRepositoryCustom {

}
