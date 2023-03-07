package Java_HomeWork_Week_5;

public class Program9 {
    public static void main(String [] args){
        // Integer Declaration
        int a = -5;
        int b = 8;
        int c = 6;
        int d = 55;
        int e = 9;
        int f = 20;
        int g = -3;
        int h = 5;
        int i = 15;
        int j = 3;
        int k = 2;
        // First Equation (-5 + 8 * 6) = 43
        System.out.println(a + b * c);

        // Second Equation ( (55+9) % 9) = 1
        System.out.println( (d+e) % e);

        // Third Equation 20 + -3 * 5 / 8 = 19
        System.out.println(f + g * h / b);

        // Fourth Equation 5 + 15 / 3 * 2 - 8 % 3 = 13
        System.out.println( h + i / j * k - b % j);

    }
}
