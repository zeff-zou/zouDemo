package com.zou.test.controller;

import com.zou.test.service.SpringMvcTestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;

/**
 * Created by Administrator on 2016/9/24.
 */
@Controller
@RequestMapping("/test")
public class SpringMvcTestController {
    @Resource
    private SpringMvcTestService springMvcTestServicel;
//    @Resource
//    private ISysUserService sysUserService;


    @RequestMapping("/a")
    public String showUser(Model model){
        springMvcTestServicel.HelloMvc();
//        sysUserService.findSysUser(1);
        return "test";
    }
}
