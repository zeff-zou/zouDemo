//package com.zou.test.utils;
//
//import java.io.Serializable;
//import java.lang.reflect.ParameterizedType;
//import java.lang.reflect.Type;
//import java.util.Collection;
//import java.util.List;
//
//import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
//import org.springframework.orm.hibernate4.HibernateTemplate;
//
///**
// * 泛型实现类
// * @author AdminTC
// * 注意：不能new这个BaseDao<T>，只能用其子类，例如：AdminDao，GroupDao
// */
//public class BaseDao<T> extends HibernateDaoSupport {
//
//    private Class clazz = null;//字节码Admin.class
//
//    private HibernateTemplate ht;
//
//    //用反射泛型技术为clazz设置值
//    public BaseDao(){
//        //获取当前类的字节码，
//        Class subClass = this.getClass();
//        //获取AdminDao的父类BaseDao<Admin>泛型类型，例如：BaseDao<Admin>
//        Type type = subClass.getGenericSuperclass();
//        //将Type父接口转成ParameterizedType子接口
//        ParameterizedType pt = (ParameterizedType) type;
//        //获取泛型类的实际参数类型，例如：Admin
//        Type[] types = pt.getActualTypeArguments();
//        //获取数组中第一个元素，该元素就是Admin字节码
//        this.clazz = (Class) types[0];
//    }
//
//    public HibernateTemplate getHt() {
//        return ht;
//    }
//    public void setHt(HibernateTemplate ht) {
//        this.ht = ht;
//    }
//    public void add(T t) {
//        ht.save(t);
//    }
//    public void delete(T t) {
//        ht.delete(t);
//    }
//    public void deleteAll(Collection collection) {
//        ht.deleteAll(collection);
//    }
//    public void update(T t) {
//        ht.update(t);
//    }
//    public T findById(Serializable id) {
//        return (T) ht.get(clazz,id);
//    }
//    public List<T> findAll() {
//        return ht.loadAll(clazz);
//    }
//}
//
//
//
