package DAO.Ingredients;

import DAO.MySqlDAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Vesdet on 14.11.2015.
 */
public class IngredientsDAO extends MySqlDAO {

    @Override
    public List<Ingredient> getTableList() {

        List<Ingredient> list = new ArrayList<>();
        try (
                Connection con = super.getConnection();
                Statement st = con.createStatement();
                ResultSet resultSet = st.executeQuery("SELECT * FROM ingredients")) {

            while(resultSet.next()) {
                Ingredient ingredient = new Ingredient();
                ingredient.setTitle(resultSet.getString("title"));
                ingredient.setCount(resultSet.getInt("count"));
                list.add(ingredient);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return list;
    }

    @Override
    public boolean deleteRow(String title) {
        String sql = "DELETE FROM ingredients WHERE title='"+title+"\'";
        return super.executeSqlRequest(sql);
    }

    public boolean changeCount(String title, int count) {
        try (Connection con = super.getConnection();
             Statement st = con.createStatement()) {

            String sql1 = "SELECT count FROM ingredients WHERE title='" + title + "\'";
            ResultSet resultSet = st.executeQuery(sql1);
            resultSet.next();

            count += resultSet.getInt("count");
            String sql2 = "UPDATE ingredients SET count=" + count + " WHERE title='" + title + "\'";
            st.execute(sql2);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
