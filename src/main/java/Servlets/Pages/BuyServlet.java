package Servlets.Pages;

import DAO.Additives.Additive;
import DAO.Additives.AdditivesDAO;
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
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vesdet on 12.11.2015.
 */
@WebServlet(name = "buy", urlPatterns = "/buy")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"user"}))
public class BuyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int totalCost = 0;
        HttpSession session = request.getSession();
        String additiveTitle1 = request.getParameter("additiveTitle1");
        String additiveTitle2 = request.getParameter("additiveTitle2");

        AdditivesDAO dao = new AdditivesDAO();
        List<Additive> list = new ArrayList<>();

        if (!additiveTitle1.equals("---")) {
            Additive add1 = dao.getRow(additiveTitle1);
            list.add(add1);
            totalCost += add1.getPrice();
        }
        if (!additiveTitle1.equals("---")) {
            Additive add2 = dao.getRow(additiveTitle2);
            list.add(add2);
            totalCost += add2.getPrice();
        }
        session.setAttribute("additivesList", list);

        int id = Integer.valueOf(request.getParameter("id"));
        DrinkDAO drinkDAO = new DrinkDAO();
        Drink drink = drinkDAO.getRow(id);
        totalCost += drink.getPrice();
        session.setAttribute("drink", drink);
        session.setAttribute("total", totalCost);
//        request.setAttribute("drink", drink);
//        request.setAttribute("total", totalCost);
        request.getRequestDispatcher("/WEB-INF/jsp/user/confirm.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

//        if (session.getAttribute("userBean") == null) {
//            UsersDAO dao = new UsersDAO();
//            String userName = request.getUserPrincipal().getName();
//            UserBean user = dao.getUser(userName);
//            session.setAttribute("userBean", user);
//        }
        if (session.getAttribute("additives") == null) {
            AdditivesDAO additivesDAO = new AdditivesDAO();
            List<Additive> list = additivesDAO.getTableList();
            session.setAttribute("additives", list);
        }

        int id = Integer.valueOf(request.getParameter("id"));
        DrinkDAO drinkDAO = new DrinkDAO();
        Drink drink = drinkDAO.getRow(id);

        request.setAttribute("drink", drink);
        request.getRequestDispatcher("/WEB-INF/jsp/user/buy.jsp").forward(request, response);
    }
}
