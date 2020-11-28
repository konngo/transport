package cn.konngo.service;

import cn.konngo.dao.UsersDao;
import cn.konngo.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersService {
    @Autowired
    private UsersDao usersDao;

    // 查询所有用户
    public List<Users> list(){
     return usersDao.list(null);
    }

    // 根据id查询
    public Users find(int id){
        return usersDao.getById(id);
    }

    // 更新
    public int update(Users users){
        return usersDao.update(users);
    }

    // 删除
    public int delete(int id){
        Users users=new Users();
        users.setId(id);
       return usersDao.delete(users);
    }

    // 添加
    public int add(Users users){
    return usersDao.insert(users);
    }
}
