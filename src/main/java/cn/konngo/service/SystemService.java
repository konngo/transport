package cn.konngo.service;

import cn.konngo.dao.UsersDao;
import cn.konngo.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SystemService {
    @Autowired
    private UsersDao usersDao;

    // 查询数据库中是否有该用户
    public Users login(Users users){
        return usersDao.login(users);
    }

    // 注册 添加信息到数据库
    public int register(Users users){
        return usersDao.insert(users);
    }
}
