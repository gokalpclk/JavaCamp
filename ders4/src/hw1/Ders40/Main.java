package hw1.Ders40;

public class Main {

	public static void main(String[] args) {
		WomanGameCalculator womeCalculator = new WomanGameCalculator();
		womeCalculator.hesapla();
		womeCalculator.gameOver();
		
		
		GameCalculator gameCalculator = new ManGameCalculator();
		gameCalculator.hesapla();

	}

}
