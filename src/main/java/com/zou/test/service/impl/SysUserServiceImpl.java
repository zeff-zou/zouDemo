package com.zou.test.service.impl;


import com.zou.commons.base.service.impl.AbstractBaseService;
import com.zou.test.domain.SysUser;
import com.zou.test.repository.SysUserRepository;
import com.zou.test.service.ISysUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zzf on 2016/9/25.
 */
@Service
public class SysUserServiceImpl extends AbstractBaseService<SysUser,Integer> implements ISysUserService {

    @SuppressWarnings("unused")
    private SysUserRepository getSysUserRepository() {
        return (SysUserRepository) baseRepository;
    }

    @Override
    public SysUser findSysUser(Integer id) {
        return getSysUserRepository().findOne(id);
    }

    @Override
    @Transactional
    public void addSysUser(SysUser sysUser) {
            getSysUserRepository().save(sysUser);
    }

    @Override
    @Transactional
    public void deleteSysUser(Integer id) {
            getSysUserRepository().delete(id);
    }

    @Override
    @Transactional
    public void updateSysUser(SysUser sysUser) {
        SysUser user = getSysUserRepository().findOne(sysUser.getId());
        if (user==null){
            throw new RuntimeException("没有这个用户，更新失败!");
        }
        BeanUtils.copyProperties(sysUser,user);
            getSysUserRepository().save(user);
    }


}
