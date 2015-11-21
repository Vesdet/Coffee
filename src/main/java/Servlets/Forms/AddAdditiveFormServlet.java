package Servlets.Forms;

import DAO.Additives.AdditivesDAO;

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
@WebServlet(name = "AddAdditiveFormServlet", urlPatterns = "/addAdditive")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"admin"}))
public class AddAdditiveFormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        AdditivesDAO additivesDAO = new AdditivesDAO();
        String title = request.getParameter("addATitle");
        int price;
        if (request.getParameter("addAPrice").equals("")) price = 0;
        else price = Integer.valueOf(request.getParameter("addAPrice"));

        additivesDAO.addRow(title, 50, price);

        response.sendRedirect("/additives");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
