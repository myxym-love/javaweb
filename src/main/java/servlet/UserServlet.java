package servlet;

import domain.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * author MaoYu
 * 2021/11/18
 * @author ASUS
 */

@WebServlet("/findAll")
public class UserServlet extends HttpServlet {

    /**
     * 请求处理数据,并返回给页面
     * @param req 请求
     * @param resp 响应
     * @throws ServletException Servlet异常处理
     * @throws IOException IO异常
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService userService = new UserService();

        List<User> list = null;
        try {
            list = userService.findAll();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }

        req.setAttribute("user",list);

        req.getRequestDispatcher("/list.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
