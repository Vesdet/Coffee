package DAO;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by Vesdet on 13.11.2015.
 */
public class SqlDAOFactory implements DAOFactory {

    public static Connection getConnection() throws SQLException {
        InitialContext initContext = null;
        try {
            initContext = new InitialContext();
        } catch (NamingException e) {
            e.printStackTrace();
        }
        DataSource ds = null;
        try {
            ds = (DataSource) initContext.lookup("java:comp/env/jdbc/coffee");
        } catch (NamingException e) {
            e.printStackTrace();
        }
        Connection conn = ds.getConnection();
        return conn;
    }
}
