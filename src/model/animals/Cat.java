package model.animals;
import model.AbstractAnimal;
import model.Counter;
import model.interfaces.HomeAnimal;
import java.util.Date;

public class Cat extends AbstractAnimal implements HomeAnimal {
    private String animalHomeAddress;
    public static final String animalName = "Кошка";

    public Cat() {
        super(animalName);
    }

    @Override
    public void setAnimalHomeAddress(String addressHome) {
        this.animalHomeAddress = addressHome;
    }

}
