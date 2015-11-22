package Servlets.Pages;

import DAO.Drinks.Drink;
import DAO.Drinks.DrinkDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * Created by Vesdet on 12.11.2015.
 */
@WebServlet(name = "main", urlPatterns = "")
public class MainServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Locale locale = new Locale("ru", "RU");
//        ResourceBundle bundle = ResourceBundle.getBundle("message", locale);
//        String str = bundle.getString("main");
//        HttpSession session = request.getSession();
//        session.setAttribute("bundle", bundle);


        DrinkDAO x = new DrinkDAO();
        List<Drink> list = x.getTableList();

        request.setAttribute("drinkList", list);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
