package com.zou.module.user.service.impl;


import com.zou.commons.base.service.impl.AbstractBaseService;
import com.zou.commons.base.util.MD5Tools;
import com.zou.module.user.domain.SysUser;
import com.zou.module.user.repository.SysUserRepository;
import com.zou.module.user.service.ISysUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.Date;


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
        sysUser.setCreateDate(new Date());
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
        if (!StringUtils.isEmpty(sysUser.getUserEmail())){
            if (!sysUser.getUserEmail().equals(user.getUserEmail()) && getSysUserRepository().findByUserEmail(sysUser.getUserEmail())!=null){
                return  "repeated userEmail";
            }
        }else {
            sysUser.setUserEmail(null);
        }

        if (!StringUtils.isEmpty(sysUser.getUserMobile())){
            if (!sysUser.getUserMobile().equals(user.getUserMobile()) && getSysUserRepository().findByUserMobile(sysUser.getUserMobile())!=null){
                return  "repeated userMobile";
            }
        }else {
            sysUser.setUserMobile(null);
        }
        user.setUserName(sysUser.getUserName());
        user.setUserSex(sysUser.getUserSex());
        user.setIsAdmin(sysUser.getIsAdmin());
        user.setUserMobile(sysUser.getUserMobile());
        user.setUserEmail(sysUser.getUserEmail());
        user.setIsDelete(sysUser.getIsDelete());
        user.setLastModifiedBy(sysUser.getLastModifiedBy());
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

    @Override
    @Transactional
    public void alertPsw(Integer id, String userPsw) {
        SysUser user = getSysUserRepository().getOne(id);
        user.setUserPsw(userPsw);
        getSysUserRepository().save(user);
    }


}
