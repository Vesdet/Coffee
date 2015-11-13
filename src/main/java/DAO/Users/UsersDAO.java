package DAO.Users;

import DAO.MySqlDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vesdet on 12.11.2015.
 */
public class UsersDAO extends MySqlDAO {
    private String columns = "name,login,password,money,isAdmin";

    @Override
    public List<UserBean> getTableList() {
        List<UserBean> list = new ArrayList<>();
        String sql = "SELECT " + columns + " FROM Users";
        try (Connection con = super.getConnection();
             Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery(sql)) {

            while (resultSet.next()) {
                list.add(resultSetToUser(resultSet));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean addMoney(String login, int money) {
        try (Connection con = super.getConnection();
             Statement st = con.createStatement()) {

            String sql1 = "SELECT money FROM users WHERE login='" + login + "\'";
            ResultSet resultSet = st.executeQuery(sql1);
            resultSet.next();
            money += resultSet.getInt("money");
            String sql2 = "UPDATE users SET money='" + money + "\' WHERE login='" + login + "\'";
            st.execute(sql2);

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public UserBean getUser(String login) {
        UserBean user = new UserBean();
        String sql = "SELECT * FROM Users WHERE login='" + login + "\'";
        try (Connection con = super.getConnection();
             Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery(sql)) {
            resultSet.next();
            user = resultSetToUser(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
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
