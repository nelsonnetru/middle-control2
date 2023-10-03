package commands;

import commands.interfaces.Command;
import model.interfaces.Animal;
import view.interfaces.View;

public class RemoveAnimalFromNursery implements Command {
    private View view;

    public RemoveAnimalFromNursery(View view) {
        this.view = view;
    }

    @Override
    public String getDescription() {
        return "Убрать животное из питомника";
    }

    @Override
    public void execute() {
        view.removeAnimal();
    }
}
