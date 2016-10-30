package com.zou.test.controller;

import com.zou.test.domain.SysUser;
import com.zou.test.service.ISysUserService;
import com.zou.test.service.SpringMvcTestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/24.
 */
@Controller
@RequestMapping("/test")
public class SpringMvcTestController {
    @Resource
    private SpringMvcTestService springMvcTestServicel;
    @Resource
    private ISysUserService sysUserService;

    private static final String RESULT = "result";
    protected static final String RESULT_ACTION = "redirect:/result";

    @RequestMapping(value = "/a",method = RequestMethod.GET)
    public String showUser(ModelMap model){
        return "test";
    }

    @RequestMapping(value = "/select",method = RequestMethod.POST)
    @ResponseBody
    public SysUser selectUser(Integer id){
        SysUser user = sysUserService.findSysUser(id);
        return user;
    }

//    @RequestMapping(value = "/add",method = RequestMethod.POST)
//    public void addUser(ModelMap model, SysUser sysUser){
//        sysUserService.addSysUser(sysUser);
//        model.put("isAdd","Y");
//    }
//    @RequestMapping(value = "/delete",method = RequestMethod.POST)
//    public void delete(ModelMap model,Integer id){
//        sysUserService.deleteSysUser(id);
//        model.put("isAdd","Y");
//    }
//
//    @RequestMapping(value = "/update",method = RequestMethod.POST)
//    public void update(ModelMap model,Integer id){
//        sysUserService.deleteSysUser(id);
//        model.put("isAdd","Y");
//    }
}
