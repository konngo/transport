package cn.konngo.dao;

import cn.konngo.model.Transport;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TransportDao {
    int insert(Transport transport);

    int delete(Transport transport);

    int deleteByIds(@Param("ids") Integer[] ids);

    int update(Transport transport);

    Transport getById(@Param("id") Integer id);

    Transport login(Transport transport);

    List<Transport> list(Transport transport);

}
