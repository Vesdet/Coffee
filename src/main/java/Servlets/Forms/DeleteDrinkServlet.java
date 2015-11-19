package Servlets.Forms;

import DAO.Drinks.DrinkDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Vesdet on 19.11.2015.
 */
@WebServlet(name = "DeleteDrinkServlet", urlPatterns = "/delete")
public class DeleteDrinkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DrinkDAO dao = new DrinkDAO();
        dao.deleteRow(request.getParameter("id"));
        response.sendRedirect("/edit");
    }
}
