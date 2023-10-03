package model;

public class Counter {
    private static final Counter INSTANCE = new Counter();

    public static int counter = 0;

    public Counter() {
        this.add();
    }

    public void add () {
        counter++;
    }

    public static boolean delete () {
        counter--;
        return true;
    }

    public static Counter getInstance() {
        return INSTANCE;
    }
}
