package view;
import exceptions.InvalidInputDateException;
import model.interfaces.Animal;
import presenter.Presenter;
import view.interfaces.View;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Console implements View {
    private Presenter presenter;
    private Scanner scan;
    private ConsoleMenu consoleMenu;
    boolean work;
    String errorTextInt = "Ошибка! Необходимо ввести номер!";
    String errorOutOfBoundCommandInt = "Ошибка! Невозможно выполнить команду!";

    public Console() {
        this.consoleMenu = new ConsoleMenu(this);
        this.scan = new Scanner(System.in);
        this.work = true;
    }

    public void addAnimal() {
        print("Выберите животное для добавления: ");
        print("1. Кошка \n2. Лошадь \n3. Хомяк");
        String newAnimalType = scan.nextLine();

        try {
            int indexOfType = Integer.parseInt(newAnimalType);
            Animal newAnimal = Animal.createAnimal(indexOfType);

            print("Введите породу животного: ");
            newAnimal.setAnimalTypeName(scan.nextLine());

            print("Введите кличку животного: ");
            newAnimal.setAnimalNickName(scan.nextLine());

            print("Введите дату рождения животного в формате дд-мм-гггг: ");
            String newAnimalBirthDateStr = scan.nextLine();

            print("Введите команды, которым обучено животное: ");
            String animalCommands = scan.nextLine();
            newAnimal.setAnimalCommands(animalCommands);

            if (checkTextForDate (newAnimalBirthDateStr)) {
                newAnimal.setDateOfBirth(new SimpleDateFormat("dd-MM-yyyy", Locale.ENGLISH).
                        parse(newAnimalBirthDateStr));
            }
            else
                throw new IOException("Не полный набор данных (нет даты рождения)!");

            if (presenter.addAnimalToNursery(newAnimal))
                print("Животное добавлено в питомник.");
        }

        catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }
    private static boolean checkTextForInt(String text){
        return (text.matches("[0-9]+"));
    }
    private static boolean checkTextForDate(String textIn) throws InvalidInputDateException {
        String[] dateItems = textIn.trim().split("-");
        if (dateItems.length == 3) {

            if (dateItems[0].length() == 2 && dateItems[1].length() == 2 && dateItems[2].length() == 4 &&
                    checkTextForInt(dateItems[0]) && checkTextForInt(dateItems[1]) && checkTextForInt(dateItems[2]))
            {
                return true;
            }
            else {
                throw new InvalidInputDateException("Неверный формат даты рождения");
            }
        }
        return false;
    }

    public void removeAnimal () {
        print("Введите ID животного для удаления: ");
        try {
            presenter.removeAnimalFromNursery(Integer.parseInt(scan.nextLine()));
            print("Животное удалено из питомника");
        }
        catch (Exception e) {
            System.out.println("Ошибка! Невозможно удалить животное с таким ID");
        }
    }

    public void printNursery() {
        print(presenter.generateNurseryForPrint());
    }

    @Override
    public void print(String txt) {
        System.out.println(txt);
    }

    @Override
    public void start() {
        while (work) {
            print(consoleMenu.printMain());
            inputCommand();
        }
    }

    @Override
    public void finish() {
        this.work = false;
        this.scan.close();
    }

    @Override
    public void setPresenter(Presenter presenter) {
        this.presenter = presenter;
    }

    private void inputCommand() {
        String commandStr = scan.nextLine();
        if (checkTextForInt(commandStr)) {
            int commandNumber = Integer.parseInt(commandStr);
            if (checkCommand(commandNumber)) {
                consoleMenu.executeCommand(commandNumber);
            }
            else print(errorOutOfBoundCommandInt);
        }
        else print(errorTextInt);
    }

    private boolean checkCommand(int numCommand){
        return (numCommand < consoleMenu.getCommandList().size() + 1);
    }
}
