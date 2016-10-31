//package com.zou.test.utils;
//
//import java.io.Serializable;
//import java.lang.reflect.ParameterizedType;
//import java.lang.reflect.Type;
//
//
//import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
//
///**
// * 泛型实现类
// * @author AdminTC
// * 注意：不能new这个BaseDao<T>，只能用其子类，例如：AdminDao，GroupDao
// */
//public class BaseDao<T , PK extends Serializable> extends HibernateDaoSupport {
//
//    private Class<T> entityClass = null;//字节码Admin.class
//    @Autowired
//    public void setSessionFactoryOverride(SessionFactory sessionFactory)
//    {
//
//        super.setSessionFactory(sessionFactory);
//    }
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
//        this.entityClass = (Class) types[0];
//    }
//    protected Class<T> getEntityClass() {
//        return entityClass;
//    }
//
//
//    public T getById(PK id) {
//        return (T)currentSession().get(getEntityClass(), id);
//    }
//
//    /**
//     * 保存记录.
//     *
//     * @param obj
//     */
//    public void save(T obj) {
//        currentSession().save(obj);
//    }
//    /**
//     * 保存或修改记录.
//     *
//     * @param obj
//     */
//    public void saveOrUpdate(T obj) {
//        currentSession().saveOrUpdate(obj);
//    }
//
//    /**
//     * 修改记录.
//     *
//     * @param obj
//     */
//    public void update(T obj) {
//        currentSession().update(obj);
//    }
//
//    /**
//     * 删除记录.
//     *
//     * @param obj
//     */
//    public void delete(T obj) {
//        currentSession().delete(obj);
//    }
//    /**
//     * 根据ID删除记录.
//     *
//     * @param id
//     */
//    public void deleteById(PK id) {
//        T obj = getById(id);
//        if (obj != null) {
//            delete(obj);
//        }
//    }
//}
//
//
//
