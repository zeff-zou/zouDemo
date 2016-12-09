package com.zou.module.user.repository;

import com.zou.module.user.domain.SysUser;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * Created by zzf on 2016/11/3.
 */
public interface SysUserRepositoryCustom {
    Page<SysUser> query(Pageable pageable, String userName);
}
