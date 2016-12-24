package com.zou.module.user.service.impl;


import com.zou.commons.base.service.impl.AbstractBaseService;
import com.zou.module.user.domain.SysUser;
import com.zou.module.user.repository.SysUserRepository;
import com.zou.module.user.service.ISysUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
    public String addSysUser(SysUser sysUser) {
        if (getSysUserRepository().findByLoginId(sysUser.getLoginId())!=null){
            return "repeated loginId";
        }
        if (getSysUserRepository().findByUserEmail(sysUser.getUserEmail())!=null){
            return  "repeated userEmail";
        }
        if (getSysUserRepository().findByUserMobile(sysUser.getUserMobile())!=null){
            return  "repeated userMobile";
        }
        getSysUserRepository().save(sysUser);
        return "success";
    }

    @Override
    @Transactional
    public void deleteSysUser(Integer id) {
            getSysUserRepository().delete(id);
    }

    @Override
    @Transactional
    public String updateSysUser(SysUser sysUser) {
        SysUser user = getSysUserRepository().findOne(sysUser.getId());
        if (user==null){
            throw new RuntimeException("没有这个用户，更新失败!");
        }
        BeanUtils.copyProperties(sysUser,user);
        getSysUserRepository().save(user);
        return "success";
    }

    @Override
    public SysUser loginSysUser(String loginId, String password) {
        SysUser user = getSysUserRepository().findByLoginIdAndUserPsw(loginId, password);
        return user;
    }

    @Override
    public Page<SysUser> findSysUserPage(Pageable pageable, String searchUser) {
        return getSysUserRepository().query(pageable,searchUser);
    }


}
