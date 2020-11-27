package cn.konngo.controller;

import cn.konngo.model.Users;
import cn.konngo.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

// 系统控制类
@Controller
public class SystemController {
    @Autowired
    SystemService systemService;

    // 登录
    @RequestMapping("login")
    public String login(Users users,HttpServletRequest request){
        Users u=systemService.login(users);
        if (u!=null){
            request.getSession().setAttribute("users",users);
            return "redirect:/index.jsp";
        }
        request.setAttribute("msg", "账号或密码错误!");
        return "login";
    }

    // 注册
    @RequestMapping("register")
    public void register(Users users){
         systemService.register(users);
    }

}
