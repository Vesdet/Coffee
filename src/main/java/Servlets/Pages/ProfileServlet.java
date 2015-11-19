package Servlets.Pages;

import DAO.Drinks.Drink;
import DAO.Drinks.DrinkDAO;
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
import java.util.List;

/**
 * Created by Vesdet on 19.11.2015.
 */
@WebServlet(name = "ProfileServlet", urlPatterns = "/profile")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"lalka"}))
public class ProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        if (session.getAttribute("userBean") == null) {
            String userName = request.getUserPrincipal().getName();
            UsersDAO dao = new UsersDAO();
            UserBean user = dao.getUser(userName);
            session.setAttribute("userBean", user);
        }
        if (session.getAttribute("drinkList") == null) {
            DrinkDAO x = new DrinkDAO();
            List<Drink> list = x.getTableList();
            session.setAttribute("drinkList", list);
        }

        request.getRequestDispatcher("/WEB-INF/jsp/user/profile.jsp").forward(request, response);
    }
}
