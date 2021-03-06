package DAO;

import org.apache.log4j.Logger;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vesdet on 13.11.2015.
 */
public abstract class MySqlDAO<T> implements DAOFactory {

    private static final Logger log = Logger.getLogger(MySqlDAO.class);

    private static String user = "Vesdet";
    private static String password = "1327";
    private static String url = "jdbc:mysql://localhost:3306/Coffee";

    protected Connection getConnection() throws SQLException {
//        try {
//            Class.forName("com.mysql.jdbc.Driver").newInstance();
//        } catch (InstantiationException e) {
//            e.printStackTrace();
//        } catch (IllegalAccessException e) {
//            e.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//        Connection con = DriverManager.getConnection(url, user, password);
//        return con;
        InitialContext initContext = null;
        DataSource ds = null;
        try {
            initContext = new InitialContext();
            ds = (DataSource) initContext.lookup("java:comp/env/jdbc/Coffee");

        } catch (NamingException e) {
            log.error("Error DataSourse", e);
        }
        Connection conn = ds.getConnection();
        return conn;
    }

    protected boolean executeSqlRequest(String sql) {
        try (
                Connection con = getConnection();
                Statement st = con.createStatement()) {
            st.execute(sql);
        } catch (SQLException e) {
            log.error("Row with this title already exists", e);
            return false;
        }
        return true;
    }

     public List<T> getTableList() {
        List<T> list = new ArrayList<>();
        try (
                Connection con = getConnection();
                Statement st = con.createStatement();
                ResultSet resultSet = st.executeQuery("SELECT * FROM " + getTableName())) {

            while(resultSet.next()) {
                list.add(resultSetToBean(resultSet));
            }
        } catch (SQLException e) {
            log.error("Error sql request", e);
        }
        return list;
    }

    protected abstract boolean deleteRow(String title);
    protected abstract T resultSetToBean(ResultSet resultSet);
    protected abstract String getTableName();
}