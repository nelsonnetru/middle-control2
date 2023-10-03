package presenter;

import model.Counter;
import model.interfaces.Animal;
import view.interfaces.View;

import java.util.ArrayList;

public class Presenter {
    private View view;
    private ArrayList<Animal> nursery;

    public Presenter(View view) {
        this.view = view;
        nursery = new ArrayList<Animal>();
    }

    public boolean addAnimalToNursery (Animal animal) {
        return this.nursery.add(animal);
    }

    public boolean removeAnimalFromNursery (int id) {
        nursery.remove(id);
        return Counter.delete();
    }

    public String generateNurseryForPrint () {
        int i = 0;
        if (nursery.size() == 0) return "-= Нет питомцев =-";
        StringBuilder outStr = new StringBuilder();
        for (Animal oneAnimal : nursery) {
            outStr.append("id: ").append(i).append("\n").append(oneAnimal).append("\n");
            i++;
        }
        return outStr.toString();
    }
}
