package aaa;

public class Main {
	public static void main (String[] args) {
		Hero h = new Hero();
		h.hp = 100;

		Hero h2 = new Hero();
		h2.hp = 100;

		Wizard w = new Wizard();
		w.name = "bbb";
		w.heal(h);
		w.heal(h2);
		System.out.println(h2.hp);

	}

}
