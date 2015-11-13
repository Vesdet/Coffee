package Filters;

import DAO.Users.UserBean;
import DAO.Users.UsersDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Vesdet on 13.11.2015.
 */
@WebFilter(filterName = "LoginFilter", urlPatterns="/buy")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) req;
        HttpServletResponse httpServletResponse = (HttpServletResponse) resp;

        String username = httpServletRequest.getParameter("j_username");
        String password = httpServletRequest.getParameter("j_password");

        UsersDAO dao = new UsersDAO();
        UserBean x = dao.getUser(username);

        if (x!=null && x.getPassword().equals(password)) {
            req.setAttribute("user", x);
            req.getRequestDispatcher("/WEB-INF/buy.jsp").forward(req, resp);
        }
        else {
            req.getRequestDispatcher("/login").forward(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
