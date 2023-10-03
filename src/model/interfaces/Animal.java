package model.interfaces;

import model.animals.*;

import java.util.ArrayList;
import java.util.Date;

public interface Animal {
    void setAnimalTypeName(String animalTypeName);
    void setAnimalNickName(String animalNickName);
    void setDateOfBirth(Date dateOfBirth);
    void setAnimalCommands(String commandsList);

    static Animal createAnimal(int indexOfType) {
        return switch (indexOfType) {
            case 1 -> new Cat();
            case 2 -> new Horse();
            case 3 -> new Hamster();
            default -> null;
        };
    }
}
