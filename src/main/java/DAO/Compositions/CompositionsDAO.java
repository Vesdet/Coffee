package DAO.Compositions;

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
public class CompositionsDAO extends MySqlDAO {
    private String columns = "title, coffee, milk, water, chocolate, ice, cup, stick";

    @Override
    public  List<Composition> getTableList() {
        List<Composition> list = new ArrayList<>();
        try (
                Connection con = super.getConnection();
                Statement st = con.createStatement();
                ResultSet resultSet = st.executeQuery("SELECT " + columns + " FROM compositions")) {

            while(resultSet.next()) {
                list.add(resultSetToComposition(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
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

    private Composition resultSetToComposition(ResultSet resultSet) {
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
            e.printStackTrace();
        }
        return composition;
    }
}
