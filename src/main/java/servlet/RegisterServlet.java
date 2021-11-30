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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String phone = req.getParameter("phone");
        String pwd = req.getParameter("pwd");
        String sex = req.getParameter("sex");
        String username = req.getParameter("username");
        String wechat = req.getParameter("wechat");
        User user = new User();
        user.setPhone(phone);
        user.setPwd(pwd);
        user.setSex(Integer.parseInt(sex));
        user.setUsername(username);
        user.setWechat(wechat);
        UserService userService = new UserService();
        int result = 0;
        try {
            result = userService.register(user);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        if (result == 1) {
            req.getRequestDispatcher("/findAll").forward(req,resp);
        }else {
            resp.sendRedirect("/register.jsp");
        }

    }
}
