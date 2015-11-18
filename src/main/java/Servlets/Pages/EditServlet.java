package Servlets.Pages;

import DAO.Drinks.Drink;
import DAO.Drinks.DrinkDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Vesdet on 19.11.2015.
 */
@WebServlet(name = "EditServlet", urlPatterns = "/edit")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DrinkDAO x = new DrinkDAO();
        List<Drink> list = x.getTableList();

        request.setAttribute("drinkList", list);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/edit.jsp").forward(request, response);
    }
}
