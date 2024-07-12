package Entity;

public class Species {
	private int species_id;
	private String species_type;
	private String species_group;
	private String lifestyle;
	private String conservation_status;

	public int getSpecies_id() {
		return species_id;
	}

	public void setSpecies_id(int species_id) {
		this.species_id = species_id;
	}

	

	public String getSpecies_type() {
		return species_type;
	}

	public void setSpecies_type(String species_type) {
		this.species_type = species_type;
	}

	public String getSpecies_group() {
		return species_group;
	}

	public void setSpecies_group(String species_group) {
		this.species_group = species_group;
	}

	public String getLifestyle() {
		return lifestyle;
	}

	public void setLifestyle(String lifestyle) {
		this.lifestyle = lifestyle;
	}

	public String getConservation_status() {
		return conservation_status;
	}

	public void setConservation_status(String conservation_status) {
		this.conservation_status = conservation_status;
	}

}
