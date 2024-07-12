package DefaultValue;

import java.util.ArrayList;

public class MyData {

	public static ArrayList<String> getLocation() {
		ArrayList<String> myList = new ArrayList<>();

		myList.add("North");
		myList.add("South");
		myList.add("West");
		myList.add("East");

		return myList;
	}

	public static ArrayList<String> getConservation() {
		ArrayList<String> myList = new ArrayList<>();

		myList.add("Threatened");
		myList.add("Critically Endangered");
		myList.add("Vulnerable");
		myList.add("Endangered");
		myList.add("Least Concern");

		return myList;
	}

	public static ArrayList<String> getLifeStyle() {
		ArrayList<String> myList = new ArrayList<>();

		myList.add("Troop");
		myList.add("Solitary");
		myList.add("Herd");
		myList.add("Pride");
		myList.add("Group");

		return myList;
	}

	public static ArrayList<String> getGroup() {
		ArrayList<String> myList = new ArrayList<>();

		myList.add("Mammal");
		myList.add("Reptile");
		myList.add("Bird");

		return myList;
	}
}
