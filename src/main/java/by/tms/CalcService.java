package by.tms;

public class CalcService {

    public double calculate(double a, double b, String operation) {
        switch(operation) {
            case "sum":
                return sum(a, b);
            case "min":
                return min(a, b);
        }
        return 0;
    }

    private double sum(double a, double b) {
        return a + b;
    }

    private double min(double a, double b) {
        return a - b;
    }

}
