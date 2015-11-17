package DAO.Users;

/**
 * Created by Vesdet on 11.11.2015.
 */
public class UserBean {
    private String name;
    private String login;
    private String password;
    private int money;
    private String role;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String admin) {
        role = admin;
    }

    @Override
    public String toString() {
        return "UserBean{" +
                "name='" + name + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", money=" + money +
                ", role=" + role +
                '}';
    }
}
