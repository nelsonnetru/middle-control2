import model.Counter;
import presenter.Presenter;
import view.Console;
import view.interfaces.View;

public class Main {
    public static void main(String[] args) {
        View view = new Console();
        Presenter presenter = new Presenter(view);
        view.setPresenter(presenter);
        view.start();

    }
}