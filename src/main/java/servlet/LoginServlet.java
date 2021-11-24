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

/**
 * @author ASUS
 * @version 1.0
 * @date 2021/11/24
 * @project demo
 */

@WebServlet("/user/login")
public class LoginServlet extends HttpServlet {

    UserService userService = new UserService();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String pwd = req.getParameter("pwd");
        User user = null;
        try {
            user = userService.login(username,pwd);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        if (user != null) {
            req.getRequestDispatcher("/findAll").forward(req,resp);
        }else {
            resp.sendRedirect("/index.jsp");
        }
    }
}
