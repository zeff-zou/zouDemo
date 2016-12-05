package com.zou.commons.base.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.io.Serializable;


/**
 * Created by zzf on 2016/11/3.
 */
@NoRepositoryBean
public interface IBaseRepository<M, ID extends Serializable> extends JpaRepository<M, ID>{

}
