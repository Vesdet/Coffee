package DAO.Compositions;

import DAO.MySqlDAO;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by Vesdet on 14.11.2015.
 */
public class CompositionsDAO extends MySqlDAO {
    private static final Logger log = Logger.getLogger(CompositionsDAO.class);
    private String columns = "title, coffee, milk, water, chocolate, ice, cup, stick";

    public Composition getComposition(String title) {
        String sql = "SELECT * FROM "+getTableName()+" WHERE title='" + title + "\'";
        try (Connection con = super.getConnection();
             Statement st = con.createStatement();
             ResultSet resultSet = st.executeQuery(sql)) {
            resultSet.next();
            Composition composition;
            composition = resultSetToBean(resultSet);
            return composition;
        } catch (SQLException e) {
            log.error("Error SQL request", e);
            return null;
        }
    }

    public boolean addRow(Composition composition) {
        String sql = "INSERT INTO compositions("+columns+") " + "VALUES('"+
                composition.getTitle() + "\',"+
                composition.getCoffee() +","+
                composition.getMilk() +","+
                composition.getWater() +","+
                composition.getChocolate() +","+
                composition.getIce() +","+
                composition.getCup() +","+
                composition.getStick()+")";
        return super.executeSqlRequest(sql);
    }

    @Override
    public boolean deleteRow(String title) {
        String sql = "DELETE FROM compositions WHERE title='"+title+"\'";
        return super.executeSqlRequest(sql);
    }

    @Override
    protected Composition resultSetToBean(ResultSet resultSet) {
        Composition composition = null;
        try {
            composition = new Composition(resultSet.getString("title"),
                    resultSet.getInt("coffee"),
                    resultSet.getInt("milk"),
                    resultSet.getInt("water"),
                    resultSet.getInt("chocolate"),
                    resultSet.getInt("ice"),
                    resultSet.getInt("cup"),
                    resultSet.getInt("stick"));
        } catch (SQLException e) {
            log.error("This attribute don't found", e);
        }
        return composition;
    }

    @Override
    protected String getTableName() {
        return "Compositions";
    }
}
