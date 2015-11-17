package DAO.Ingredients;

import DAO.Compositions.Composition;
import DAO.MySqlDAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 * Created by Vesdet on 14.11.2015.
 */
public class IngredientsDAO extends MySqlDAO {

    public boolean changeCount(String title, int count) {
        String sql1 = "SELECT count FROM " + getTableName() + " WHERE title='" + title + "\'";
        try (Connection con = super.getConnection();
             Statement st = con.createStatement()) {

            ResultSet resultSet = st.executeQuery(sql1);
            resultSet.next();

            count += resultSet.getInt("count");
            String sql2 = "UPDATE " + getTableName() + " SET count=" + count + " WHERE title='" + title + "\'";
            st.execute(sql2);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean changeAllCount(Composition composition) {

        if (!changeCount("chocolate",0-composition.getChocolate())) return false;
        if (!changeCount("coffee",0-composition.getCoffee())) return false;
        if (!changeCount("cup",0-composition.getCup())) return false;
        if (!changeCount("stick",0-composition.getStick())) return false;
        if (!changeCount("ice",0-composition.getIce())) return false;
        if (!changeCount("water",0-composition.getWater())) return false;
        if (!changeCount("milk",0-composition.getMilk())) return false;
        return true;
    }

    @Override
    protected Ingredient resultSetToBean(ResultSet resultSet) {
        Ingredient drink = new Ingredient();
        try {
            Ingredient ingredient = new Ingredient();
            ingredient.setTitle(resultSet.getString("title"));
            ingredient.setCount(resultSet.getInt("count"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return drink;
    }

    @Override
    public boolean deleteRow(String title) {
        String sql = "DELETE FROM ingredients WHERE title='"+title+"\'";
        return super.executeSqlRequest(sql);
    }

    @Override
    protected String getTableName() {
        return "Ingredients";
    }
}
