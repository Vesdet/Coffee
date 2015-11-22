package Servlets.Forms;

import DAO.Compositions.CompositionsDAO;
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
@WebServlet(name = "DeleteDrinkServlet", urlPatterns = "/delete")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"admin"}))
public class DeleteDrinkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DrinkDAO dao = new DrinkDAO();
        Drink drink = dao.getRow(Integer.valueOf(request.getParameter("id")));
        String str = drink.getTitle();
        dao.deleteRow(request.getParameter("id"));

        CompositionsDAO com = new CompositionsDAO();
        com.deleteRow(str);
        response.sendRedirect("/edit");
    }
}
