package Servlets.Forms;

import DAO.Ingredients.IngredientsDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Vesdet on 19.11.2015.
 */
@WebServlet(name = "FillUpFormServlet", urlPatterns = "/fillUp")
public class FillUpFormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        IngredientsDAO dao = new IngredientsDAO();
        dao.changeCount("Coffee", Integer.valueOf(request.getParameter("Coffee")) );
        dao.changeCount("Milk", Integer.valueOf(request.getParameter("Milk")) );
        dao.changeCount("Water", Integer.valueOf(request.getParameter("Water")) );
        dao.changeCount("Chocolate", Integer.valueOf(request.getParameter("Chocolate")) );
        dao.changeCount("Ice", Integer.valueOf(request.getParameter("Ice")) );
        dao.changeCount("Cup", Integer.valueOf(request.getParameter("Cup")) );
        dao.changeCount("Stick", Integer.valueOf(request.getParameter("Stick")) );

        response.sendRedirect("/filling");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
