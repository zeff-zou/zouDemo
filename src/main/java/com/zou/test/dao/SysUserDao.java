package com.zou.test.dao;

import com.zou.test.domain.SysUser;
import com.zou.test.utils.BaseDao;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016/9/25.
 */
@Repository
public class SysUserDao extends BaseDao<SysUser> {
    public SysUser findSysUser(Integer id){
        Session session = this.currentSession();
//        List list = session.createQuery("from SysUser where sysUserId="+id).list();
        SQLQuery sqlQuery = session.createSQLQuery("select * from SYS_USER WHERE SYS_USER_ID=" + id);
        sqlQuery.addEntity(SysUser.class);
        List list = sqlQuery.list();
        HibernateTemplate hibernateTemplate = this.getHibernateTemplate();
        if(list!=null && list.size()>0){
            Object obj = list.get(0);
            return (SysUser) obj;
        }else{
            return null;
        }
    }
}
