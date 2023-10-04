package model.animals;
import model.AbstractAnimal;

import model.interfaces.HomeAnimal;
import java.util.Date;

public class Hamster extends AbstractAnimal implements HomeAnimal {
    private String animalHomeAddress;
    public static final String animalName = "Хомяк";
    public Hamster() {super(animalName);}
     @Override
    public void setAnimalHomeAddress(String addressHome) {
        this.animalHomeAddress = addressHome;
    }
}
