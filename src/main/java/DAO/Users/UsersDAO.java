package DAO.Users;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vesdet on 12.11.2015.
 */
public class UsersDAO {
    private String  columns = "name,login,password,money,isAdmin";

    private static String user = "Vesdet";
    private static String password = "1327";
    private static String url = "jdbc:mysql://localhost:3306/Coffee";

    public List<UserBean> getUsersList() {
        List<UserBean> list = new ArrayList<>();

        try (Connection con = DriverManager.getConnection(url,user,password);
                Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery("SELECT " + columns + " FROM Users")) {

            while(resultSet.next()) {
                list.add(resultSetToUser(resultSet));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    private UserBean resultSetToUser(ResultSet resultSet) {
        UserBean user = new UserBean();
        try {
            user.setName(resultSet.getString("name"));
            user.setLogin(resultSet.getString("login"));
            user.setPassword(resultSet.getString("password"));
            user.setMoney(resultSet.getInt("money"));
            user.setAdmin(resultSet.getBoolean("isAdmin"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

}
