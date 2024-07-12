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

public class UpdateQueries {
	private static Connection con;

	private static void openConnection() throws ClassNotFoundException, SQLException {
		con = DbConnection.getConnection();
	}
	
	private static void closeConnection() throws SQLException{
		con.close();
	}
	public static int updateKeeperInfoByID(Keeper keeper) throws ClassNotFoundException, SQLException {
		openConnection();

		int row = 0;

		String query = "update keeper set keepers_name=?,date_of_birth=?,email=?,address=?,keepers_rank=?,phno=? where keeper_id=?";

		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, keeper.getKeepers_name());
		pstmt.setDate(2, Date.valueOf(keeper.getDate_of_birth()));
		pstmt.setString(3, keeper.getEmail());
		pstmt.setString(4, keeper.getAddress());
		pstmt.setString(5, keeper.getKeepers_rank());
		pstmt.setString(6, keeper.getPhno());
		
		pstmt.setInt(7, keeper.getKeeper_id());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;

	}
	public static int updateSpeciesInfoByID(Species species) throws ClassNotFoundException, SQLException{
		openConnection();

		int row = 0;

		String query = "update species set species_type=?,lifestyle=?,species_group=?,conservation_status=? where species_id=?";

		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, species.getSpecies_type());
		pstmt.setString(2, species.getLifestyle());
		pstmt.setString(3, species.getSpecies_group());
		pstmt.setString(4, species.getConservation_status());
		
		pstmt.setInt(5, species.getSpecies_id());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;

	}
	public static int updateDietInfoByID(Diet diet) throws SQLException, ClassNotFoundException{
		openConnection();

		int row = 0;

		String query = "update diet set diet_type=?,feeds_per_day=? where diet_id=?";

		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, diet.getDiet_type());
		pstmt.setInt(2, diet.getFeeds_per_day());
		
		pstmt.setInt(3, diet.getDiet_id());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;

	}
	public static int updateEnclosureInfoByID(Enclosure enclosure) throws ClassNotFoundException, SQLException{
		openConnection();

		int row = 0;
		String query = "update enclosure set enclosure_type=?,location=? where enclosure_id=?";

		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, enclosure.getType());
		pstmt.setString(2, enclosure.getLocation());
		
		pstmt.setInt(3, enclosure.getEnclosure_id());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;
	}
	public static int updateAnimalInfoByID(Animal animal) throws ClassNotFoundException, SQLException{
		openConnection();

		int row = 0;
		System.out.print(animal.getAnimal_gender());
		System.out.print(animal.getAnimal_id());
		System.out.print(animal.getAnimal_name());
		System.out.print(animal.getDate_of_arrival());
		System.out.print(animal.getDiet_id());
		System.out.print(animal.getEnclosure_id());
		System.out.print(animal.getKeeper_id());
		System.out.print(animal.getSpecies_id());
		
		String query = "update animal set animal_name=?,date_of_arrival=?,animal_gender=?,keeper_id=?,species_id=?,diet_id=?,enclosure_id=? where animal_id=?";

		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, animal.getAnimal_name());
		pstmt.setDate(2, Date.valueOf(animal.getDate_of_arrival()));
		pstmt.setString(3, animal.getAnimal_gender());
		
		pstmt.setInt(4, animal.getKeeper_id());
		pstmt.setInt(5, animal.getSpecies_id());
		pstmt.setInt(6, animal.getDiet_id());
		pstmt.setInt(7, animal.getEnclosure_id());
		pstmt.setInt(8, animal.getAnimal_id());
		row=pstmt.executeUpdate();
		
		closeConnection();
		return row;
		
		

	}
}