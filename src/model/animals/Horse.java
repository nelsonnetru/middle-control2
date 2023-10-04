package model.animals;
import model.AbstractAnimal;
import model.interfaces.PackAnimal;

public class Horse extends AbstractAnimal implements PackAnimal {
    private String zooName;
    public static final String animalName = "Лошадь";
    public Horse() {super(animalName);}
    @Override
    public void setZooName(String setZooName) {
        this.zooName = setZooName;
    }
}
