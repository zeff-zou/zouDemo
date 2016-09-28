package com.zou.test.service.impl;

import com.zou.test.dao.SysUserDao;
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
    private SysUserDao sysUserDao;
    public SysUser findSysUser(Integer id) {
        return sysUserDao.getById(id);
    }

    @Override
    @Transactional
    public void addSysUser(SysUser sysUser) {
        sysUserDao.save(sysUser);
    }

    @Override
    @Transactional
    public void deleteSysUser(Integer id) {
        sysUserDao.deleteById(id);
    }

    @Override
    @Transactional
    public void updateSysUser(SysUser sysUser) {
        SysUser user = sysUserDao.getById(sysUser.getSysUserId());
        if (user==null){
            throw new RuntimeException("没有这个用户，更新失败!");
        }
        BeanUtils.copyProperties(sysUser,user);
        sysUserDao.update(user);
    }


}
