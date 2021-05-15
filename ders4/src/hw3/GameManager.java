package hw3;

public class GameManager implements BaseGameManager {

	@Override
	public void add(Game game) {
		System.out.println(game.getName() + " added");

	}

	@Override
	public void update(Game game) {
		System.out.println(game.getName() + " updated");

	}

	@Override
	public void delete(Game game) {
		System.out.println(game.getName() + " deleted");

	}

}
