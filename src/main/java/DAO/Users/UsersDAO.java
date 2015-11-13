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

    public boolean addRow(String name, String login, String password, int money, boolean isAdmin) {
        String sql = "INSERT INTO users("+columns+") " +
                "VALUES('"+ name + "\','"+ login +"\','"+password+"\',"+money+","+isAdmin+")";
        try (
                Connection con = super.getConnection();
                Statement st = con.createStatement()) {
            st.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public boolean deleteRow(String login) {
        String sql = "DELETE FROM users WHERE title='"+ login +"\'";
        try (
                Connection con = super.getConnection();
                Statement st = con.createStatement()) {
            st.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean editPassword(String login, String oldPassword, String newPassword) {

        try (Connection con = super.getConnection();
             Statement st = con.createStatement()) {

            String sql1 = "SELECT password FROM users WHERE login='" + login + "\'";
            ResultSet resultSet = st.executeQuery(sql1);
            resultSet.next();
            if (resultSet.getString("password").equals(oldPassword)) {
                String sql2 = "UPDATE users SET password='" + newPassword + "\' WHERE login='" + login + "\'";
                st.execute(sql2);
            }
            else return false;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
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
        UserBean user;
        String sql = "SELECT * FROM Users WHERE login='" + login + "\'";
        try (Connection con = super.getConnection();
             Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery(sql)) {
            resultSet.next();
            user = resultSetToUser(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
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
