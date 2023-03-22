package pl.coderslab.user;

import pl.coderslab.User;
import pl.coderslab.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("id"));
        session.setAttribute("id", id);
        UserDAO userDAO = new UserDAO();
        User user = userDAO.read(id);
        session.setAttribute("user", user);
        response.sendRedirect("/users/editUser.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserDAO userDAO = new UserDAO();
        int id = (int) session.getAttribute("id");
        User user = new User(id, name, email, password);
        userDAO.updateUser(user);
        response.sendRedirect("/user/list");
    }
}
