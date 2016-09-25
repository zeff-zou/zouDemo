//package com.zou.test.domain;
//
//import javax.persistence.*;
//
///**
// * Created by Administrator on 2016/9/25.
// */
//@Entity
//@Table(name = "SYS_USER")
//public class SysUser {
//    @Id
//    @GeneratedValue(strategy= GenerationType.AUTO)
//    @Column(name = "SYS_USER_ID", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
//    private java.lang.Integer sysUserId;
//    /**
//     * userName       db_column: USER_NAME
//     */
//    @Column(name = "USER_NAME", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
//    private java.lang.String userName;
//
//    @Column(name = "USER_AGE", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
//    private java.lang.Integer userAge;
//
//    @Column(name = "USER_SEX", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
//    private java.lang.Integer userSex;
//
//    public Integer getSysUserId() {
//        return sysUserId;
//    }
//
//    public void setSysUserId(Integer sysUserId) {
//        this.sysUserId = sysUserId;
//    }
//
//    public String getUserName() {
//        return userName;
//    }
//
//    public void setUserName(String userName) {
//        this.userName = userName;
//    }
//
//    public Integer getUserAge() {
//        return userAge;
//    }
//
//    public void setUserAge(Integer userAge) {
//        this.userAge = userAge;
//    }
//
//    public Integer getUserSex() {
//        return userSex;
//    }
//
//    public void setUserSex(Integer userSex) {
//        this.userSex = userSex;
//    }
//}
