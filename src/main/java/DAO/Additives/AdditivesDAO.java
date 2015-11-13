package DAO.Additives;

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
public class AdditivesDAO extends MySqlDAO {
    private final String columns = "id,title,count,price";

    @Override
    protected  List<Additive> getTableList() {
        List<Additive> list = new ArrayList<>();
        try (
                Connection con = super.getConnection();
                Statement st = con.createStatement();
                ResultSet resultSet = st.executeQuery("SELECT " + columns + " FROM additives")) {

            while(resultSet.next()) {
                list.add(resultSetToAdditive(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    protected boolean deleteRow(String title) {
        String sql = "DELETE FROM additives WHERE title='"+title+"\'";
        return super.executeSqlRequest(sql);
    }

    private Additive resultSetToAdditive(ResultSet resultSet) {
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
}
