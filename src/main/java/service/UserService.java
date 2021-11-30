package service;

import dao.UserDao;
import domain.User;

import java.sql.SQLException;
import java.util.List;

/**
 * author MaoYu
 * 2021/11/18
 * @author ASUS
 */
public class UserService {

    UserDao userDao = new UserDao();

    /**
     * 查询所有用户信息
     * @return List<User>
     * @throws SQLException 异常处理
     */
    public List<User> findAll() throws SQLException {
        return userDao.findAll();
    }

    public User login(String username, String pwd) throws SQLException {
        return userDao.login(username,pwd);
    }

    public int register(User user) throws SQLException {
        return userDao.register(user);
    }
}
