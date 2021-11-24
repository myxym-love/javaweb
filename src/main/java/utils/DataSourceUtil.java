package utils;

import org.apache.commons.dbcp2.BasicDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.util.Properties;

/**
 * 数据库工具类
 * author MaoYu
 * 2021/11/18
 * @author ASUS
 */
public class DataSourceUtil {


    private static final DataSource DATA_SOURCE;


    static {
        try {
            InputStream in = DataSourceUtil.class.getClassLoader().getResourceAsStream("ds.properties");
            Properties properties = new Properties();
            properties.load(in);
            DATA_SOURCE = BasicDataSourceFactory.createDataSource(properties);
        }catch (Exception e) {
            e.printStackTrace();
            throw new ExceptionInInitializerError("初始化失败");
        }
    }

    /**
     * 获取连接池
     * @return DataSource
     */
    public static DataSource getDataSource() {
        return DATA_SOURCE;
    }

}
