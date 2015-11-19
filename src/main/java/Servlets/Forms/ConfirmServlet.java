package Servlets.Forms;

import DAO.Additives.Additive;
import DAO.Additives.AdditivesDAO;
import DAO.Compositions.Composition;
import DAO.Compositions.CompositionsDAO;
import DAO.Drinks.Drink;
import DAO.Drinks.DrinkDAO;
import DAO.Ingredients.Ingredient;
import DAO.Ingredients.IngredientsDAO;
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
 * Created by Vesdet on 20.11.2015.
 */
@WebServlet(name = "ConfirmServlet", urlPatterns = "/confirm")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"lalka"}))
public class ConfirmServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        UserBean user = (UserBean) session.getAttribute("userBean");
        int total = (int) session.getAttribute("total");
        if (user.getMoney() < total) {
            request.getRequestDispatcher("/WEB-INF/jsp/error/errorMoney.jsp").forward(request, response);
        }

        CompositionsDAO compositionsDAO = new CompositionsDAO();
        Drink drink = (Drink) session.getAttribute("drink");
        Composition composition = compositionsDAO.getComposition(drink.getTitle());

        IngredientsDAO ingredientsDAO = new IngredientsDAO();
        List<Ingredient> ingredients = ingredientsDAO.getTableList();
        String str = checkIngredients(ingredients, composition);
        if (str != null) {
            request.setAttribute("title", str);
            request.getRequestDispatcher("/WEB-INF/jsp/error/errorCount.jsp").forward(request, response);
        }

        AdditivesDAO additivesDAO = new AdditivesDAO();
        List<Additive> list = (List<Additive>) session.getAttribute("additivesList");
        for (Additive x:list) {
            if (x.getCount() == 0) {
                request.setAttribute("title", x.getTitle());
                request.getRequestDispatcher("/WEB-INF/jsp/error/errorCount.jsp").forward(request, response);
            }
            else {
                additivesDAO.changeCount(x.getTitle(), -1);
            }
        }

        ingredientsDAO.changeAllCount(composition);

        UsersDAO usersDAO = new UsersDAO();
        user.setMoney(user.getMoney() - total);
        usersDAO.changeMoney(user.getLogin(), 0-total);
        session.setAttribute("userBean", user);

        request.getRequestDispatcher("/WEB-INF/jsp/user/purchase.jsp").forward(request, response);
    }

    private String checkIngredients(List<Ingredient> ingredients, Composition composition) {

        for (Ingredient x:ingredients)
        {
            if (x.getTitle().equals("Coffee") && x.getCount()<composition.getCoffee()) {
                return "Coffee";
            }
            if (x.getTitle().equals("Milk") && x.getCount()<composition.getMilk()) {
                return "Milk";
            }
            if (x.getTitle().equals("Water") && x.getCount()<composition.getWater()) {
                return "Water";
            }
            if (x.getTitle().equals("Chocolate") && x.getCount()<composition.getChocolate()) {
                return "Chocolate";
            }
            if (x.getTitle().equals("Ice") && x.getCount()<composition.getIce()) {
                return "Ice";
            }
            if (x.getTitle().equals("Cup") && x.getCount()<composition.getCup()) {
                return "Cup";
            }
            if (x.getTitle().equals("Stick") && x.getCount()<composition.getStick()) {
                return "Stick";
            }
        }
        return null;
    }
}
