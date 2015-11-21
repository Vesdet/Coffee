package Filters;

import DAO.Users.UserBean;
import DAO.Users.UsersDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Vesdet on 21.11.2015.
 */
@WebFilter(filterName = "Filters.LoginFilter", urlPatterns = "/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpSession session = request.getSession();
        UserBean userBean = (UserBean) session.getAttribute("userBean");

        if (request.getUserPrincipal() != null && userBean.getLogin() == null) {
            String userName = request.getUserPrincipal().getName();
            UsersDAO dao = new UsersDAO();
            UserBean user = dao.getUser(userName);
            session.setAttribute("userBean", user);
        }

        chain.doFilter(request, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
