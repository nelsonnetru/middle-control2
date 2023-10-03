package model;

import model.interfaces.Animal;

import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class AbstractAnimal implements Animal {
    private String animalTypeName;
    private String animalNickName;
    private Date dateOfBirth;
    private String commandsList;
    private String animalName = "Неизвестное животное";

    public String getAnimalTypeName() {
        return animalTypeName;
    }

    public String getAnimalNickName() {
        return animalNickName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public String getCommandsList() {
        return commandsList;
    }

    public AbstractAnimal () {
        new Counter();
    }
    public AbstractAnimal (String animalName) {
        this();
        this.animalName = animalName;
    }

    @Override
    public void setAnimalNickName(String animalNickName) {
        this.animalNickName = animalNickName;
    }

    @Override
    public void setAnimalTypeName(String animalTypeName) {
        this.animalTypeName = animalTypeName;
    }

    @Override
    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    @Override
    public void setAnimalCommands(String commandsList) {
        this.commandsList = commandsList;
    }

    @Override
    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        StringBuilder strToOut = new StringBuilder();
        strToOut.append("Животное: ").append(animalName).append("\n").
                append("Порода: ").append(animalTypeName).append("\n").
                append("Кличка: ").append(animalNickName).append("\n").
                append("Дата рождения: ").append(simpleDateFormat.format(dateOfBirth)).append("\n").
                append("Обучена командам: ").append(getCommandsList()).append("\n");

        return strToOut.toString();
    }
}
