package Servlets.Forms;

import DAO.Compositions.Composition;
import DAO.Compositions.CompositionsDAO;
import DAO.Drinks.DrinkDAO;
import DAO.Ingredients.IngredientsDAO;

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
@WebServlet(name = "AddDrinkFormServlet", urlPatterns = "/addDrink")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"admin"}))
public class AddDrinkFormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        DrinkDAO drinkDAO = new DrinkDAO();
        CompositionsDAO compositionsDAO = new CompositionsDAO();

        Composition composition = new Composition(request.getParameter("addTitle"),
                Integer.valueOf(request.getParameter("addCoffee")),
                Integer.valueOf(request.getParameter("addMilk")),
                Integer.valueOf(request.getParameter("addWater")),
                Integer.valueOf(request.getParameter("addChocolate")),
                Integer.valueOf(request.getParameter("addIce")),
                Integer.valueOf(request.getParameter("addCup")),
                Integer.valueOf(request.getParameter("addStick"))
                );

        drinkDAO.addRow(request.getParameter("addTitle"),
                Integer.valueOf(request.getParameter("addPrice")),
                request.getParameter("addDescription"));

        compositionsDAO.addRow(composition);
        response.sendRedirect("/edit");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
