package commands;

import commands.interfaces.Command;
import view.interfaces.View;

public class AddAnimalToNursery implements Command {
    private View view;

    public AddAnimalToNursery(View view) {
        this.view = view;
    }

    @Override
    public String getDescription() {
        return "Добавить животное в питомник";
    }

    @Override
    public void execute() {
        view.addAnimal();
    }
}
