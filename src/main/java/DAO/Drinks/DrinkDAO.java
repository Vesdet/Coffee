package DAO.Drinks;

import DAO.MySqlDAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vesdet on 12.11.2015.
 */
public class DrinkDAO extends MySqlDAO {
    private String  columns = "title, price, description";

    public boolean addRow(String title, int price, String description) {
        String sql = "INSERT INTO drinks("+columns+") " +
                "VALUES('"+ title + "\',"+ price +",'"+description+"\')";
        return super.executeSqlRequest(sql);
    }

    public Drink getRow(int id) {
        String sql = "SELECT * FROM drinks WHERE id="+id;
        Drink drink = null;
        try (
                Connection con = super.getConnection();
                Statement st = con.createStatement();
                ResultSet resultSet = st.executeQuery(sql)) {
            resultSet.next();
            drink = resultSetToBean(resultSet);
            return drink;
        } catch (SQLException e) {
            System.out.println("Нет такого id");
        }
        return null;
    }

    public boolean updateRow(int id, String title, int price, String description) {
        String sql = "UPDATE " + getTableName() + " SET "+
                "title='" + title +
                "\',price=" + price +
                ",description='" + description +
                "\' WHERE id=" + id;
        return super.executeSqlRequest(sql);
    }

    @Override
    public boolean deleteRow(String id) {
        String sql = "DELETE FROM drinks WHERE id="+id;
        return super.executeSqlRequest(sql);
    }

    @Override
    protected Drink resultSetToBean(ResultSet resultSet) {
        Drink drink = new Drink();
        try {
            drink.setId(resultSet.getInt("id"));
            drink.setTitle(resultSet.getString("title"));
            drink.setPrice(resultSet.getInt("price"));
            drink.setDescription(resultSet.getString("description"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return drink;
    }

    @Override
    protected String getTableName() {
        return "Drinks";
    }
}
