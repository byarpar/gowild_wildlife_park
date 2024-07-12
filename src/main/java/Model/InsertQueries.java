package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DBHandler.DbConnection;
import Entity.Animal;
import Entity.Diet;
import Entity.Enclosure;
import Entity.Keeper;
import Entity.Species;

public class InsertQueries {
	private static Connection con;
	
	private static void openConnection() throws ClassNotFoundException, SQLException {
		con = DbConnection.getConnection();

	}
	public static void closeConnection() throws SQLException {
		con.close();

	}
	

	public static int insertKeeperInfo(Keeper keeper) throws ClassNotFoundException, SQLException {
		openConnection();
		
		String query = "insert into keeper (keepers_name,date_of_birth,keepers_rank,phno,email,address) values (?,?,?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		System.out.println(keeper.getAddress()+keeper.getDate_of_birth()+keeper.getEmail()+keeper.getKeepers_rank()
		+keeper.getKeepers_name()+keeper.getPhno());
		
		
		pstmt.setString(1,keeper.getKeepers_name());
		pstmt.setDate(2,Date.valueOf(keeper.getDate_of_birth()));
		pstmt.setString(3,keeper.getKeepers_rank());
		pstmt.setString(4,keeper.getPhno());
		pstmt.setString(5,keeper.getEmail());
		pstmt.setString(6,keeper.getAddress());
		
		int rows = pstmt.executeUpdate();
		
		closeConnection();
		
		return rows;
	}
	
	public static int insertSpeciesinfo(Species species) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0;
		
		String query = "insert into species (species_type,species_group,lifestyle,conservation_status)"
				+ " values (?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, species.getSpecies_type());
		pstmt.setString(2, species.getSpecies_group());
		pstmt.setString(3, species.getLifestyle());
		pstmt.setString(4, species.getConservation_status());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;
	}
	public static int insertEnclosureinfo(Enclosure enclosure) throws SQLException, ClassNotFoundException{
		openConnection();
		int row = 0;
		
		String query = "insert into enclosure (enclosure_type,location)"
				+" values (?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, enclosure.getType());
		pstmt.setString(2, enclosure.getLocation());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;
	}
	public static int insertDietinfo(Diet diet) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0;
		
		String query = "insert into diet (diet_type,feeds_per_day)"
				+ " values (?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, diet.getDiet_type());
		pstmt.setInt(2, diet.getFeeds_per_day());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;
		
	}
	public static int insertAnimalInfo(Animal animal) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0 ;
		String query = "insert into animal (animal_name,animal_gender,date_of_arrival,keeper_id,species_id,enclosure_id,diet_id) "
				+ " values (?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, animal.getAnimal_name());
		pstmt.setString(2,animal.getAnimal_gender());
		pstmt.setDate(3,Date.valueOf(animal.getDate_of_arrival()));
		pstmt.setInt(4, animal.getKeeper_id());
		pstmt.setInt(5,animal.getSpecies_id());
		pstmt.setInt(6, animal.getEnclosure_id());
		pstmt.setInt(7, animal.getDiet_id());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;
	}
	

}