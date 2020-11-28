package cn.konngo.controller;

import cn.konngo.model.Transport;
import cn.konngo.service.TransportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/trans")
public class TransportController {
    @Autowired
    TransportService transportService;

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String  list(HttpServletRequest request) {
        List<Transport> list= transportService.list(null);
        request.getSession().setAttribute("list",list);
        return "index";
    }

    @RequestMapping("edit")
    public String edit(int id,HttpServletRequest request){
        Transport trans=transportService.find(id);
        request.setAttribute("ews",trans);
        return "add";
    }
    @RequestMapping("add")
    public String add(Transport transport,HttpServletRequest request){
        transportService.add(transport);
        return "redirect:/trans/list";
    }

}
