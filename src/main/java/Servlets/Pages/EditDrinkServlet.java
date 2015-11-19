package Servlets.Pages;

import DAO.Drinks.Drink;
import DAO.Drinks.DrinkDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Vesdet on 19.11.2015.
 */
@WebServlet(name = "EditDrinkServlet", urlPatterns = "/editDrink")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"admin"}))
public class EditDrinkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        int id = Integer.valueOf(request.getParameter("id"));

        DrinkDAO dao = new DrinkDAO();
        dao.updateRow(id,
                request.getParameter("editTitle"),
                Integer.valueOf(request.getParameter("editPrice")),
                request.getParameter("editDescription"));

        response.sendRedirect("/edit");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.valueOf(request.getParameter("id"));

        DrinkDAO dao = new DrinkDAO();
        Drink drink = dao.getRow(id);

        request.setAttribute("drink", drink);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/editDrink.jsp").forward(request, response);
    }
}
