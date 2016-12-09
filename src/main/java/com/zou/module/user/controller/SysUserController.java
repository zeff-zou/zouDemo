package com.zou.module.user.controller;

import com.zou.module.user.domain.SysUser;
import com.zou.module.user.service.ISysUserService;
import com.zou.module.user.service.SpringMvcTestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by zzf on 2016/12/9.
 */
@Controller
@RequestMapping("/admin/modules/sysuser")
public class SysUserController {
    @Resource
    private ISysUserService sysUserService;

    private static final String RESULT = "result";
    protected static final String RESULT_ACTION = "redirect:/result";

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> loginToFront(String loginId, String password, HttpServletRequest request){
        SysUser sysUser = sysUserService.loginSysUser(loginId, password);
        Map<String, Object> modelMap = new HashMap<String, Object>(3);
        if (sysUser!=null){
           request.getSession().setAttribute("adminUser",sysUser);
            modelMap.put("success","Y");
        }else {
            modelMap.put("success","N");
        }
        return modelMap;
    }
    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public String showUser(ModelMap model){
        return "admin/main";
    }
    @RequestMapping(value = "/select",method = RequestMethod.POST)
    @ResponseBody
    public SysUser selectUser(Integer id){
        SysUser user = sysUserService.findSysUser(id);
        return user;
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public void addUser(ModelMap model, SysUser sysUser){
        sysUserService.addSysUser(sysUser);
        model.put("isAdd","Y");
    }
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public void delete(ModelMap model,Integer id){
        sysUserService.deleteSysUser(id);
        model.put("isAdd","Y");
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public void update(ModelMap model,Integer id){
        sysUserService.deleteSysUser(id);
        model.put("isAdd","Y");
    }
}
