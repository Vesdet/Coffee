package Servlets;

import DAO.Users.UserBean;
import DAO.Users.UsersDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Vesdet on 12.11.2015.
 */
@WebServlet(name = "buy", urlPatterns = "/buy")
@ServletSecurity (@HttpConstraint(rolesAllowed = {"admin"}))
public class BuyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getUserPrincipal().getName();
        UsersDAO dao = new UsersDAO();
        UserBean user = dao.getUser(userName);

        if (user != null) {
            request.setAttribute("userBean", user);
            request.getRequestDispatcher("/WEB-INF/buy.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}
