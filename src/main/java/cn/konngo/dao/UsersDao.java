package cn.konngo.dao;

import cn.konngo.model.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface UsersDao  {
    int insert(Users users);

    int delete(Users users);

    int deleteByIds(@Param("ids") Integer[] ids);

    int update(Users users);

    Users getById(@Param("id") Integer id);

    Users login(Users users);

    List<Users> list(Users users);


}
