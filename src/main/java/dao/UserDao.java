package dao;

import domain.User;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DataSourceUtil;

import java.sql.SQLException;
import java.util.List;

/**
 * author MaoYu
 * 2021/11/18
 * @author ASUS
 */
public class UserDao {

    private QueryRunner queryRunner = new QueryRunner(DataSourceUtil.getDataSource());

//    private BeanProcessor beanProcessor = new GenerousBeanProcessor();
//    private RowProcessor processor = new BasicRowProcessor(beanProcessor);

    public List<User> findAll() throws SQLException {


        String sql = "select * from user";
        return queryRunner.query(sql,new BeanListHandler<>(User.class));
    }

    public User login(String username, String pwd) throws SQLException {

        String sql = "select * from user where username=? and pwd=?";

        return queryRunner.query(sql,new BeanHandler<>(User.class),username,pwd);
    }

    public int register(User user) throws SQLException {
        String sql = "insert into user(phone,pwd,sex,username,wechat) values(?,?,?,?,?)";
        return queryRunner.update(sql,user.getPhone(),user.getPwd(),user.getSex(),user.getUsername(),user.getWechat());
    }
}
