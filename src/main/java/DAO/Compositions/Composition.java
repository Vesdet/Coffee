package DAO.Compositions;

/**
 * Created by Vesdet on 14.11.2015.
 */
public class Composition {
    private String title;
    private int coffee;
    private int milk;
    private int water;
    private int chocolate;
    private int ice;
    private int cup;
    private int stick;

    public Composition(){
    }

    public Composition(String title, int coffee, int milk, int water, int chocolate, int ice, int cup, int stick) {
        this.title = title;
        this.coffee = coffee;
        this.milk = milk;
        this.water = water;
        this.chocolate = chocolate;
        this.ice = ice;
        this.cup = cup;
        this.stick = stick;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getCoffee() {
        return coffee;
    }

    public void setCoffee(int coffee) {
        this.coffee = coffee;
    }

    public int getMilk() {
        return milk;
    }

    public void setMilk(int milk) {
        this.milk = milk;
    }

    public int getWater() {
        return water;
    }

    public void setWater(int water) {
        this.water = water;
    }

    public int getChocolate() {
        return chocolate;
    }

    public void setChocolate(int chocolate) {
        this.chocolate = chocolate;
    }

    public int getIce() {
        return ice;
    }

    public void setIce(int ice) {
        this.ice = ice;
    }

    public int getCup() {
        return cup;
    }

    public void setCup(int cup) {
        this.cup = cup;
    }

    public int getStick() {
        return stick;
    }

    public void setStick(int stick) {
        this.stick = stick;
    }

    @Override
    public String toString() {
        return "Composition{" +
                "title='" + title + '\'' +
                ", coffee=" + coffee +
                ", milk=" + milk +
                ", water=" + water +
                ", chocolate=" + chocolate +
                ", ice=" + ice +
                ", cup=" + cup +
                ", stick=" + stick +
                '}';
    }
}
