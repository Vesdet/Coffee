package Servlets.Forms;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Vesdet on 22.11.2015.
 */
@WebServlet(name = "LocaleServlet", urlPatterns = "/changeLocale")
public class LocaleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String locale = request.getParameter("locale");
        request.getSession().setAttribute("javax.servlet.jsp.jstl.fmt.locale.session", locale);
        response.sendRedirect("/");
    }
}
