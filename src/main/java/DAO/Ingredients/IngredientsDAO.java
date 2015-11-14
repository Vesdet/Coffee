package DAO.Ingredients;

import DAO.MySqlDAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
