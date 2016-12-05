package com.zou.test.repository.impl;

import com.zou.test.repository.SysUserRepositoryCustom;
import com.zou.test.domain.SysUser;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.query.QueryUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zzf on 2016/11/3.
 */
public class SysUserRepositoryCustomImpl implements SysUserRepositoryCustom {
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public void updateUser() {
        String sql="UPDATE SYS_USER SET USER_NAME='aaa'";
        jdbcTemplate.update(sql);
    }


    public Page<SysUser> query(Pageable pageable, String userName) {
        StringBuffer sql = new StringBuffer();
        sql.append(" FROM SYS_USER WHERE 1=1");
        Map<String, Object> paramMap = new HashMap<String, Object>();
        if (!StringUtils.isEmpty(userName)){
            sql.append(" and USER_NAME LIKE :userName");
            paramMap.put(SysUser.USER_NAME, "%" + userName + "%");
        }
        int pageSize = pageable.getPageSize();
        int firstIdx = pageable.getPageNumber() * pageSize;
        Long total = new NamedParameterJdbcTemplate(this.jdbcTemplate).queryForObject("select count(*)"+ sql, paramMap, Long.class);
        List<SysUser> sysAppList = new NamedParameterJdbcTemplate(this.jdbcTemplate)
                .query("select a.* " + QueryUtils.applySorting(sql.toString(),pageable.getSort(),"a") + " limit " + firstIdx + "," + pageSize, paramMap, new BeanPropertyRowMapper(SysUser.class));
        return new PageImpl<SysUser>(sysAppList, pageable, total);
    }
}
