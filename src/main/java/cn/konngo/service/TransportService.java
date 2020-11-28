package cn.konngo.service;

import cn.konngo.dao.TransportDao;
import cn.konngo.model.Transport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TransportService {
    @Autowired
    TransportDao transportDao;

    public List<Transport> list(Transport o) {
        return transportDao.list(o);
    }

    public Transport find(int id) {
        return transportDao.getById(id);
    }

    public void add(Transport transport) {
        if ("".equals(transport.getId()+"")){
            transportDao.insert(transport);
        }else {
            transportDao.update(transport);
        }
    }
}
