import java.util.*;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		long X = sc.nextLong();
		int N = sc.nextInt();
		long sum = 0;
		
		for (int i = 0; i < N; i++) {
			long a = sc.nextLong();
			int b = sc.nextInt();
			
			sum += a * b;
		}
		if (X == sum) {
			System.out.print("Yes");
		}
		else {
			System.out.print("No");
		}
	}

}