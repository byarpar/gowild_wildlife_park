
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.cj.protocol.Resultset;

import DBHandler.DbConnection;
import Entity.Animal;
import Entity.Diet;
import Entity.Enclosure;
import Entity.Keeper;
import Entity.Report1;
import Entity.Species;

public class SelectQueries {
	
	private static Connection con;

	private static void openConnection() throws ClassNotFoundException, SQLException {
		con = DbConnection.getConnection();
	}
	
	private static void closeConnection() throws SQLException {
		con.close();
	}
	
	public static ArrayList<Keeper> getAllKeeperInfo() throws ClassNotFoundException, SQLException{
		openConnection();
		
		ArrayList<Keeper> myList = new ArrayList<>();
		
		String query = "select * from keeper";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		
	if(!rs.isBeforeFirst()) {
		return null;
	}
		
		while(rs.next()) {
			Keeper keeper = new Keeper();
			
			keeper.setKeeper_id(rs.getInt("keeper_id"));
			keeper.setKeepers_name(rs.getString("keepers_name"));
			keeper.setDate_of_birth(rs.getString("date_of_birth"));
			keeper.setKeepers_rank(rs.getString("keepers_rank"));
			keeper.setPhno(rs.getString("phno"));
			keeper.setAddress(rs.getString("address"));
			keeper.setEmail(rs.getString("email"));
			
			myList.add(keeper);
		}
		
		
		closeConnection();
		return myList;
	}
	public static ArrayList<Species>getAllSpeciesInfo() throws ClassNotFoundException, SQLException{
	openConnection();
	ArrayList<Species>mylist = new ArrayList<>();
	
	String query = "select * from species";
	
	PreparedStatement pstmt = con.prepareStatement(query);
	ResultSet rs = pstmt.executeQuery();
	
	if(!rs.isBeforeFirst()) {
		return null;
	}
	
	while(rs.next()) {
		Species species = new Species();
		
		species.setSpecies_id(rs.getInt("species_id"));
		species.setSpecies_type(rs.getString("species_type"));
		species.setSpecies_group(rs.getString("species_group"));
		species.setLifestyle(rs.getString("lifestyle"));
		species.setConservation_status(rs.getString("conservation_status"));
		
		mylist.add(species);
	}
	
	closeConnection();
	return mylist;	
	}
	public static ArrayList<Diet>getAllDietInfo() throws ClassNotFoundException, SQLException {
		openConnection();
		ArrayList<Diet>mylist = new ArrayList<>();
		
		String query = "select * from diet";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		
		if(!rs.isBeforeFirst()) {
			return null;
		}
		
		while(rs.next()) {
		Diet diet = new Diet();
			
			diet.setDiet_id(rs.getInt("diet_id"));
			diet.setDiet_type(rs.getString("diet_type"));
			diet.setFeeds_per_day(rs.getInt("feeds_per_day"));
			
			
			mylist.add(diet);
		}
		
		closeConnection();
		return mylist;	
		}
		public static ArrayList<Enclosure>getAllEnclosureInfo() throws ClassNotFoundException, SQLException{
			openConnection();
			ArrayList<Enclosure>mylist = new ArrayList<>();
			
			String query = "select * from enclosure";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			while(rs.next()) {
			Enclosure enclosure = new Enclosure();
				
				enclosure.setEnclosure_id(rs.getInt("enclosure_id"));
				enclosure.setType(rs.getString("enclosure_type"));
				enclosure.setLocation(rs.getString("location"));
				
				
				mylist.add(enclosure);
			}
			return mylist;
		}
		public static ArrayList<Integer> getAllSpeciesID() throws ClassNotFoundException, SQLException{
			
			openConnection();
			
			ArrayList<Integer> myList = new ArrayList<>();
			
			String query = "select species_id from species";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			while(rs.next()) {
				myList.add(rs.getInt("species_id"));
			}
			
			
			closeConnection();
			
			return myList;		
		}
		
		public static ArrayList<Integer> getAllKeeperID() throws ClassNotFoundException, SQLException{
			openConnection();
			
			ArrayList<Integer> myList = new ArrayList<>();
			
			String query = "select keeper_id from keeper";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			while(rs.next()) {
				myList.add(rs.getInt("keeper_id"));
			}
			
			
			closeConnection();
			
			return myList;
		}
		
		public static ArrayList<Integer> getAllEnclosureID() throws ClassNotFoundException, SQLException{
			openConnection();
			
			ArrayList<Integer> myList = new ArrayList<>();
			
			String query = "select enclosure_id from enclosure";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			while(rs.next()) {
				myList.add(rs.getInt("enclosure_id"));
			}
			
			
			closeConnection();
			
			return myList;
		}
		
		public static ArrayList<Integer> getAllDietID() throws ClassNotFoundException, SQLException{
			openConnection();
			
			ArrayList<Integer> myList = new ArrayList<>();
			
			String query = "select diet_id from diet";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			while(rs.next()) {
				myList.add(rs.getInt("diet_id"));
			}
			
			
			closeConnection();
			
			return myList;
		}
		public static ArrayList<Animal> getAllAnimalsInfo() throws ClassNotFoundException, SQLException {
			openConnection();
			
			ArrayList<Animal> myList = new ArrayList<>();
			
			String query = "select * from animal";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
		if(!rs.isBeforeFirst()) {
			return null;
		}
			
			while(rs.next()) {
				Animal animal = new Animal();
				
				animal.setAnimal_id(rs.getInt("animal_id"));
				animal.setDate_of_arrival(String.valueOf(rs.getDate("date_of_arrival")));
				animal.setDiet_id(rs.getInt("diet_id"));
				animal.setEnclosure_id(rs.getInt("enclosure_id"));
				animal.setAnimal_gender(rs.getString("animal_gender"));
				animal.setKeeper_id(rs.getInt("keeper_id"));
				animal.setAnimal_name(rs.getString("animal_name"));
				animal.setSpecies_id(rs.getInt("species_id"));
				
				myList.add(animal);
			}
			
			
			closeConnection();
			return myList;
		}
		public static ArrayList<Integer> getAllAnimalID() throws ClassNotFoundException, SQLException{
			openConnection();
			
			ArrayList<Integer> myList = new ArrayList<>();
			
			String query = "select animal_id from animal";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			while(rs.next()) {
				myList.add(rs.getInt("animal_id"));
			}
			
			
			closeConnection();
			
			return myList;
		}
public static Keeper getKeeperInfoByID(int id) throws ClassNotFoundException, SQLException {
			openConnection();
			Keeper keeper = new Keeper();
			
			String query = "select * from keeper where keeper_id=?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			rs.next();
			keeper.setKeeper_id(rs.getInt("keeper_id"));
			keeper.setKeepers_name(rs.getString("keepers_name"));
			keeper.setDate_of_birth(String.valueOf(rs.getDate("date_of_birth")));
			keeper.setKeepers_rank(rs.getString("keepers_rank"));
			keeper.setPhno(rs.getString("phno"));
			keeper.setAddress(rs.getString("address"));
			keeper.setEmail(rs.getString("email"));
			
			closeConnection();
			return keeper;
			
		}
		public static Species getSpeciesInfoByID(int id) throws ClassNotFoundException, SQLException {
			openConnection();
			Species species = new Species();
			
			String query = "select * from species where species_id=?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			rs.next();
			species.setSpecies_id(rs.getInt("species_id"));
			species.setSpecies_type(rs.getString("species_type"));
			species.setLifestyle(rs.getString("lifestyle"));
			species.setSpecies_group(rs.getString("species_group"));
			species.setConservation_status(rs.getString("conservation_status"));
			
			closeConnection();
			return species;
			
		}
		public static Diet getDietInfoByID(int id) throws ClassNotFoundException, SQLException{
			openConnection();
			Diet diet = new Diet();
			
			String query = "select * from diet where diet_id=?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			rs.next();
			diet.setDiet_id(rs.getInt("diet_id"));
			diet.setDiet_type(rs.getString("diet_type"));
			diet.setFeeds_per_day(rs.getInt("feeds_per_day"));
			
			closeConnection();
			return diet;
			
		}
		public static Enclosure getEnclosureInfoByID(int id) throws ClassNotFoundException, SQLException{
			openConnection();
			Enclosure enclosure = new Enclosure();
			
			String query = "select * from enclosure where enclosure_id=?";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
			}
			
			rs.next();
			enclosure.setEnclosure_id(rs.getInt("enclosure_id"));
			enclosure.setType(rs.getString("enclosure_type"));
			enclosure.setLocation(rs.getString("location"));
			
			closeConnection();
			return enclosure;
			
		}
		public static Animal getAllAnimalInfoByID(int id) throws ClassNotFoundException, SQLException {
			openConnection();
			Animal animal = new Animal();

			String query = "select * from animal where animal_id=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();

			if (!rs.isBeforeFirst()) {
				return null;
			}

			rs.next();
			System.out.println("IIIIIII");
			animal.setAnimal_id(rs.getInt("animal_id"));
			animal.setAnimal_name(rs.getString("animal_name"));
			animal.setAnimal_gender(rs.getString("animal_gender"));
			animal.setDiet_id(rs.getInt("diet_id"));
			animal.setEnclosure_id(rs.getInt("enclosure_id"));
			animal.setKeeper_id(rs.getInt("keeper_id"));
			animal.setSpecies_id(rs.getInt("species_id"));
			animal.setDate_of_arrival(String.valueOf(rs.getDate("date_of_arrival")));

			closeConnection();
			return animal;
		}
		public static ArrayList<Report1>getSpeciesAnimalCount() throws ClassNotFoundException, SQLException{
			openConnection();
			ArrayList<Report1> myList = new ArrayList<>();
			
			String query = "select species.species_type,\r\n"
					+ "count(animal.animal_id) as total_animal\r\n"
					+ "from animal\r\n"
					+ "inner join\r\n"
					+ "species\r\n"
					+ "on \r\n"
					+ "animal.species_id = species.species_id\r\n"
					+ "group by species.species_type";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			if(!rs.isBeforeFirst()) {
				return null;
				
			}
			
			while (rs.next()) {
				Report1 rp=new Report1();
				rp.setSpecies_type(rs.getString("specis_type"));
				rp.setAnimal_count(rs.getInt("total_aniaml"));
				
			myList.add(rp);
				
			}
			
			closeConnection();
			return myList;
			
		}
		
			
		
		}
