package Servlets.Pages;

import DAO.Ingredients.Ingredient;
import DAO.Ingredients.IngredientsDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Vesdet on 18.11.2015.
 */
@WebServlet(name = "FillingServlet", urlPatterns = "/filling")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"admin"}))
public class FillingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IngredientsDAO x = new IngredientsDAO();
        List<Ingredient> list = x.getTableList();

        request.setAttribute("ingredients", list);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/filling.jsp").forward(request, response);
    }
}
