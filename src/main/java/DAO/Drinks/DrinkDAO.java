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

    @Override
    public List<Drink> getTableList() {
        List<Drink> list = new ArrayList<>();
        try (
             Connection con = super.getConnection();
             Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery("SELECT id," + columns + " FROM drinks")) {

            while(resultSet.next()) {
                list.add(resultSetToDrink(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean addRow(String title, int price, String description) {
        String sql = "INSERT INTO drinks("+columns+") " +
                "VALUES('"+ title + "\',"+ price +",'"+description+"\')";
        return super.executeSqlRequest(sql);
    }

    @Override
    public boolean deleteRow(String title) {
        String sql = "DELETE FROM drinks WHERE title='"+title+"\'";
        return super.executeSqlRequest(sql);
    }

    private Drink resultSetToDrink(ResultSet resultSet) {
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
}
