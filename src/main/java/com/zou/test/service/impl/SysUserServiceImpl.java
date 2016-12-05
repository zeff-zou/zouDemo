package com.zou.test.service.impl;


import com.zou.test.repository.ISysUserRepository;
import com.zou.test.domain.SysUser;
import com.zou.test.service.ISysUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/9/25.
 */
@Service
public class SysUserServiceImpl implements ISysUserService {
    @Resource
    private ISysUserRepository sysUserRepository;

    @Override
    public SysUser findSysUser(Integer id) {
        return sysUserRepository.findOne(id);
    }

    @Override
    @Transactional
    public void addSysUser(SysUser sysUser) {
        sysUserRepository.save(sysUser);
    }

    @Override
    @Transactional
    public void deleteSysUser(Integer id) {
        sysUserRepository.delete(id);
    }

    @Override
    @Transactional
    public void updateSysUser(SysUser sysUser) {
        SysUser user = sysUserRepository.findOne(sysUser.getId());
        if (user==null){
            throw new RuntimeException("没有这个用户，更新失败!");
        }
        BeanUtils.copyProperties(sysUser,user);
        sysUserRepository.save(user);
    }


}
