package com.zou.test.dao;

import com.zou.test.domain.SysUser;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by zzf on 2016/10/29.
 */
@Repository
public interface ISysUserDao extends PagingAndSortingRepository<SysUser,Integer> {
}
