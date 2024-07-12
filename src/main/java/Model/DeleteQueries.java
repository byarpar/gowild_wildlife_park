package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import DBHandler.DbConnection;

public class DeleteQueries {
	
	private static Connection con;
	
	private static void openConnection() throws ClassNotFoundException, SQLException {
		con = DbConnection.getConnection();
	}
	
	private static void closeConnection() throws SQLException {
		con.close();
	}
	
	public static int deleteKeeperInfoByID(int id) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0;
		
		String query = "delete from keeper where keeper_id=?";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setInt(1, id);
		
		row = pstmt.executeUpdate();
		System.out.println("Row " + row);
		 
		closeConnection();
		return row;
	}	
	public static int deleteSpeciesInfoByID(int id) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0;
		
		String query = "delete from species where species_id=?";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setInt(1, id);
		
		row = pstmt.executeUpdate();
		System.out.println("Row " + row);
		 
		closeConnection();
		return row;
	}
	public static int deleteDietInfoByID(int id) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0;
		
		String query = "delete from diet where diet_id=?";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setInt(1, id);
		
		row = pstmt.executeUpdate();
		System.out.println("Row " + row);
		 
		closeConnection();
		return row;
	}
	public static int deleteEnclosureInfoByID(int id) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0;
		
		String query = "delete from enclosure where enclosure_id=?";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setInt(1, id);
		
		row = pstmt.executeUpdate();
		System.out.println("Row " + row);
		 
		closeConnection();
		return row;
	}
	public static int deleteAnimalInfoByID(int id) throws ClassNotFoundException, SQLException {
		openConnection();
		int row = 0;
		
		String query = "delete from animal where animal_id=?";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setInt(1, id);
		
		row = pstmt.executeUpdate();
		System.out.println("Row " + row);
		 
		closeConnection();
		return row;
	}	

}