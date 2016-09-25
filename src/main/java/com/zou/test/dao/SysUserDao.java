//package com.zou.test.dao;
//
//import com.zou.test.domain.SysUser;
//import com.zou.test.utils.BaseDao;
//import org.springframework.orm.hibernate4.HibernateTemplate;
//import org.springframework.stereotype.Repository;
//
//import java.util.List;
//
///**
// * Created by Administrator on 2016/9/25.
// */
//@Repository
//public class SysUserDao extends BaseDao<SysUser> {
//    public SysUser findSysUser(Integer id){
//        HibernateTemplate ht = this.getHt();
//        String hql = "from SysUser where sysUserId=?";
//        Object[] values = {id};
//        List<SysUser> objects = (List<SysUser>) ht.find(hql, values);
//        if(objects!=null && objects.size()>0){
//            return objects.get(0);
//        }else{
//            return null;
//        }
//    }
//}
