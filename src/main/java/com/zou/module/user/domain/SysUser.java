package com.zou.module.user.domain;

import com.zou.commons.base.domain.BaseEntity;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/9/25.
 */
@Entity
@Table(name = "SYS_USER")
public class SysUser extends BaseEntity<Integer>{

    public static final String USER_NAME = "userName";
    public static final String USER_AGE = "userAge";
    public static final String USER_SEX = "userSex";
    public static final String LOGIN_ID = "loginId";
    public static final String USER_PSW = "userPsw";
    public static final String USER_MOBILE = "userMobile";
    public static final String USER_EMAIL = "userEmail";
    public static final String IS_DELETE = "isDelete";
    public static final String V_USER_NAME = "vuserName";
    public static final String V_USER_ID = "vuserId";
    public static final String IS_ADMIN = "isAdmin";

    /**
     * userName       db_column: USER_NAME
     */
    @Column(name = "USER_NAME", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
    private java.lang.String userName;

    @Column(name = "USER_AGE", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
    private java.lang.Integer userAge;

    @Column(name = "USER_SEX", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
    private java.lang.Integer userSex;

    @Column(name = "LOGIN_ID", unique = true, nullable = false, insertable = true, updatable = true, length = 32)
    private java.lang.String loginId;
    /**
     * userPsw       db_column: USER_PSW
     */
    @Column(name = "USER_PSW", unique = false, nullable = false, insertable = true, updatable = true, length = 32)
    private java.lang.String userPsw;
    /**
     * userMobile       db_column: USER_MOBILE
     */
    @Column(name = "USER_MOBILE", unique = true, nullable = false, insertable = true, updatable = true, length = 64)
    private java.lang.String userMobile;
    /**
     * userEmail       db_column: USER_EMAIL
     */
    @Column(name = "USER_EMAIL", unique = true, nullable = false, insertable = true, updatable = true, length = 128)
    private java.lang.String userEmail;
    /**
     * isDelete       db_column: IS_DELETE
     */
    @Column(name = "IS_DELETE", unique = false, nullable = false, insertable = true, updatable = true, length = 1)
    private java.lang.String isDelete;
    /**
     * vuserName       db_column: V_USER_NAME
     */
    @Column(name = "V_USER_NAME", unique = false, nullable = true, insertable = true, updatable = true, length = 64)
    private java.lang.String vuserName;
    /**
     * vuserId       db_column: V_USER_ID 也就是微信openId
     */
    @Column(name = "V_USER_ID", unique = false, nullable = true, insertable = true, updatable = true, length = 128)
    private java.lang.String vuserId;
    /**
     * isAdmin       db_column: IS_ADMIN
     */
    @Column(name = "IS_ADMIN", unique = false, nullable = true, insertable = true, updatable = true, length = 2)
    private java.lang.String isAdmin;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public Integer getUserSex() {
        return userSex;
    }

    public void setUserSex(Integer userSex) {
        this.userSex = userSex;
    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public String getUserPsw() {
        return userPsw;
    }

    public void setUserPsw(String userPsw) {
        this.userPsw = userPsw;
    }

    public String getUserMobile() {
        return userMobile;
    }

    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(String isDelete) {
        this.isDelete = isDelete;
    }

    public String getVuserName() {
        return vuserName;
    }

    public void setVuserName(String vuserName) {
        this.vuserName = vuserName;
    }

    public String getVuserId() {
        return vuserId;
    }

    public void setVuserId(String vuserId) {
        this.vuserId = vuserId;
    }
}
