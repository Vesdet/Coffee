package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Vesdet on 13.11.2015.
 */
public abstract class MySqlDAO implements DAOFactory {
    private static String user = "Vesdet";
    private static String password = "1327";
    private static String url = "jdbc:mysql://localhost:3306/Coffee";

    protected Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection con = DriverManager.getConnection(url, user, password);
        return con;
    }

    protected abstract <T> List<T> getTableList();
    protected abstract boolean deleteRow(String title);

}
/*InitialContext initContext = null;
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
        return conn;*/