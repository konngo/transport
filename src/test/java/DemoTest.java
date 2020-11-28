import cn.konngo.dao.UsersDao;
import cn.konngo.model.Users;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DemoTest {
    private ApplicationContext ioc =new ClassPathXmlApplicationContext("spring/application-*.xml");
    private UsersDao dao= ioc.getBean("usersDao",UsersDao.class);

    @Test
    public void testMybatisPlus(){
        Users users=new Users();
        users.setUsername("admin");
        users.setPassword("123");
        System.out.println(dao.login(users));
    }


    @Test
    public void testMybatisPlus1(){
        System.out.println(dao.list(null));
    }
}
