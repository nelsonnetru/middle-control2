package view.interfaces;
import model.interfaces.Animal;
import presenter.Presenter;

public interface View {
    void addAnimal();
    void removeAnimal();
    void print(String txt);
    void printNursery();

    void start ();
    void finish();
    void setPresenter(Presenter presenter);
}
