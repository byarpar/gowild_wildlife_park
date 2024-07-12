
package Entity;

public class Animal {

	private int animal_id;
	private String animal_name;
	private String animal_gender;
	private String date_of_arrival;
	private int keeper_id;
	private int species_id;
	private int enclosure_id;
	private int diet_id;

	public int getAnimal_id() {
		return animal_id;
	}

	public void setAnimal_id(int animal_id) {
		this.animal_id = animal_id;
	}

	

	public String getAnimal_name() {
		return animal_name;
	}

	public void setAnimal_name(String animal_name) {
		this.animal_name = animal_name;
	}

	public String getAnimal_gender() {
		return animal_gender;
	}

	public void setAnimal_gender(String animal_gender) {
		this.animal_gender = animal_gender;
	}

	public String getDate_of_arrival() {
		return date_of_arrival;
	}

	public void setDate_of_arrival(String date_of_arrival) {
		this.date_of_arrival = date_of_arrival;
	}

	public int getKeeper_id() {
		return keeper_id;
	}

	public void setKeeper_id(int keeper_id) {
		this.keeper_id = keeper_id;
	}

	public int getSpecies_id() {
		return species_id;
	}

	public void setSpecies_id(int species_id) {
		this.species_id = species_id;
	}

	public int getEnclosure_id() {
		return enclosure_id;
	}

	public void setEnclosure_id(int enclosure_id) {
		this.enclosure_id = enclosure_id;
	}

	public int getDiet_id() {
		return diet_id;
	}

	public void setDiet_id(int diet_id) {
		this.diet_id = diet_id;
	}

}
