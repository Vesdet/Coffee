package Servlets.Pages;

import DAO.Users.UsersDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Vesdet on 17.11.2015.
 */
@WebServlet(name = "RegistrationServlet", urlPatterns = "/registration")
public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String userName = request.getParameter("regName");
        String userLogin = request.getParameter("regLogin");
        String userPassword = request.getParameter("regPassword");

        UsersDAO dao = new UsersDAO();
        if (!userName.equals("") || !userName.equals("") || !userPassword.equals(""))
            dao.addRow(userName, userLogin, userPassword, 0, "lalka");

        // TODO не на error кидать надо
        request.getRequestDispatcher("/WEB-INF/jsp/error/error.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/registration.jsp").forward(request, response);
    }
}
