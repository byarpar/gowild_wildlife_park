package Entity;

public class Keeper {
	private int keeper_id;
	
	private String keepers_name;
	private String Keepers_rank;
	private String date_of_birth;
	private String email;
	private String address;
	private String phno;
	public int getKeeper_id() {
		return keeper_id;
	}
	public void setKeeper_id(int keeper_id) {
		this.keeper_id = keeper_id;
	}
	public String getKeepers_name() {
		return keepers_name;
	}
	public void setKeepers_name(String keepers_name) {
		this.keepers_name = keepers_name;
	}
	public String getKeepers_rank() {
		return Keepers_rank;
	}
	public void setKeepers_rank(String keepers_rank) {
		Keepers_rank = keepers_rank;
	}
	public String getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	
//	public String toString() {
//		String st =getPhno()+ " " +  getName() +" " + getAddress() +" " + getDob() + " " + getEmail() +" " + getKeeper_rank();
//		return st;
//	}
//	
}
