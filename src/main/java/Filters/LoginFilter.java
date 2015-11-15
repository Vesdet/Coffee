package Filters;

import DAO.Users.UserBean;
import DAO.Users.UsersDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Vesdet on 13.11.2015.
 */
@WebFilter(filterName = "LoginFilter", urlPatterns="/j_security_check")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) req;
        HttpServletResponse httpServletResponse = (HttpServletResponse) resp;

        String username = httpServletRequest.getParameter("j_username");
        String password = httpServletRequest.getParameter("j_password");

        UsersDAO dao = new UsersDAO();
        UserBean user = dao.getUser(username);

        if (user!=null && user.getPassword().equals(password)) {

            HttpSession session = httpServletRequest.getSession();
            session.setAttribute("user", user);

           /*HttpSession session = httpServletRequest.getSession();
            Cookie userName = new Cookie("user", username);
            userName.setMaxAge(10*60);
            httpServletResponse.addCookie(userName);*/
          //  req.setAttribute("user", user);

            req.getRequestDispatcher("/buy").forward(req, httpServletResponse);
        } else {
            req.getRequestDispatcher("/login").forward(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
