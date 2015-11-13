package Servlets;

import DAO.Users.UserBean;
import DAO.Users.UsersDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Vesdet on 12.11.2015.
 */
@WebServlet(name = "buy", urlPatterns = "/buy")
public class BuyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsersDAO dao = new UsersDAO();
        UserBean x = dao.getUser("nubik");

        request.setAttribute("user", x);
        request.getRequestDispatcher("/WEB-INF/buy.jsp").forward(request, response);
    }
}
