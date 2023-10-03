package view;

import commands.AddAnimalToNursery;
import commands.Finish;
import commands.PrintNursery;
import commands.RemoveAnimalFromNursery;
import commands.interfaces.Command;

import java.util.ArrayList;

public class ConsoleMenu {
    private Console view;
    private ArrayList<Command> commandList;

    public ConsoleMenu(Console view) {
        this.view = view;
        commandList = new ArrayList<Command>();
        commandList.add(new AddAnimalToNursery(view));
        commandList.add(new RemoveAnimalFromNursery(view));
        commandList.add(new PrintNursery(view));
        commandList.add(new Finish(view));

    }

    public String printMain () {
        StringBuilder result = new StringBuilder("Выберите действие: ").append("\n");
        for (int i = 0; i < commandList.size(); i++) {
            result.append(i+1).append(". ").append(commandList.get(i).getDescription()).append("\n");
        }
        result.deleteCharAt(result.length()-1);
        return result.toString();
    }

    public ArrayList<Command> getCommandList() {
        return commandList;
    }

    public void executeCommand (int numberCommand) {
        commandList.get(numberCommand -1 ).execute();
    }

}
