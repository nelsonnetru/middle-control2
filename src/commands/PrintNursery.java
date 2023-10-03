package commands;

import commands.interfaces.Command;
import view.interfaces.View;

public class PrintNursery implements Command {
    private View view;

    public PrintNursery (View view) {
        this.view = view;
    }

    @Override
    public String getDescription() {
        return "Показать всех питомцев";
    }

    @Override
    public void execute() {
        view.printNursery();
    }
}
