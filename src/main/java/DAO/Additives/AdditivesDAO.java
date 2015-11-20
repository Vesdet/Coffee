package DAO.Additives;

import DAO.MySqlDAO;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by Vesdet on 14.11.2015.
 */
public class AdditivesDAO extends MySqlDAO {
    private static final Logger log = Logger.getLogger(AdditivesDAO.class);
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
            log.error("Error SQL request", e);
            return false;
        }
        return true;
    }

    public Additive getRow(String title) {
        String sql = "SELECT * FROM additives WHERE title='"+title+"\'";
        Additive additive = null;
        try (
                Connection con = super.getConnection();
                Statement st = con.createStatement();
                ResultSet resultSet = st.executeQuery(sql)) {
            resultSet.next();
            additive = resultSetToBean(resultSet);
            return additive;
        } catch (SQLException e) {
            log.error("This ID don't found", e);
        }
        return null;
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
            log.error("This attribute don't found", e);
        }
        return additive;
    }

    @Override
    protected String getTableName() {
        return "Additives";
    }
}
