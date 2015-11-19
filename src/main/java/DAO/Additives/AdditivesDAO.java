package DAO.Additives;

import DAO.MySqlDAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by Vesdet on 14.11.2015.
 */
public class AdditivesDAO extends MySqlDAO {
    private final String columns = "title,count,price";

    public boolean addRow(String title, int count, int price) {
        String sql = "INSERT INTO " + getTableName() + "("+columns+") " +
                "VALUES('"+ title + "\',"+ count +","+price+")";
        return super.executeSqlRequest(sql);
    }

    public boolean changeCount(String title, int count) {
        String sql1 = "SELECT count FROM " + getTableName() + " WHERE title='" + title + "\'";
        try (Connection con = super.getConnection();
             Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery(sql1)) {

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
    public boolean deleteRow(String id) {
        String sql = "DELETE FROM additives WHERE id="+id;
        return super.executeSqlRequest(sql);
    }

    @Override
    protected Additive resultSetToBean(ResultSet resultSet) {
        Additive additive = null;
        try {
            additive = new Additive();
            additive.setId(resultSet.getInt("id"));
            additive.setTitle(resultSet.getString("title"));
            additive.setCount(resultSet.getInt("count"));
            additive.setPrice(resultSet.getInt("price"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return additive;
    }

    @Override
    protected String getTableName() {
        return "Additives";
    }
}
