package Servlets.Pages;

import DAO.Additives.Additive;
import DAO.Additives.AdditivesDAO;

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
 * Created by Vesdet on 19.11.2015.
 */
@WebServlet(name = "EditAdditivesServlet", urlPatterns = "/additives")
@ServletSecurity(@HttpConstraint(rolesAllowed = {"admin"}))
public class EditAdditivesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdditivesDAO x = new AdditivesDAO();
        List<Additive> list = x.getTableList();

        request.setAttribute("additiveList", list);
        request.getRequestDispatcher("/WEB-INF/jsp/admin/editAdditives.jsp").forward(request, response);
    }
}
