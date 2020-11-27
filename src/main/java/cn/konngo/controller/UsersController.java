package cn.konngo.controller;

import cn.konngo.model.Users;
import cn.konngo.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 用户控制类
@Controller
@RequestMapping("users")
public class UsersController {
    @Autowired
    UsersService usersService;

    // 查询所有用户
    @RequestMapping(value="list")
    @ResponseBody
    public Map<String, Object> list(){
        List<Users> list = usersService.list();
        Map<String, Object> resuletMap = new HashMap<>();
        resuletMap.put("data", list);
        resuletMap.put("code", "1000");
        resuletMap.put("msg", "");
        resuletMap.put("code", "0");
        return resuletMap;
    }


}
