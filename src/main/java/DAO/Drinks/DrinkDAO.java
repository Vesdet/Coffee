package DAO.Drinks;

import com.mysql.fabric.jdbc.FabricMySQLDriver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vesdet on 12.11.2015.
 */
public class DrinkDAO {
    private String  columns = "id,title, price, description";

    private static String user = "Vesdet";
    private static String password = "1327";
    private static String url = "jdbc:mysql://localhost:3306/Coffee";

    public List<Drink> getDrinksList() {
        List<Drink> list = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (
             Connection con = DriverManager.getConnection(url,user,password);
             Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery("SELECT " + columns + " FROM drinks")) {

            while(resultSet.next()) {
                list.add(resultSetToDrink(resultSet));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
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
