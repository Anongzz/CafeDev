package user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.catalina.filters.SetCharacterEncodingFilter;
import org.apache.tomcat.dbcp.dbcp2.PStmtKey;

import com.mysql.cj.exceptions.RSAException;

import jakarta.servlet.http.HttpServletResponse;

import java.sql.DriverManager;
import util.DatabaseUtil;

public class UserDAO {

	public int join(String userName, String userID, String userPW) {
		String SQL ="INSERT INTO cafeuser VALUES (?,?,?)";
		try {
			Connection connection = DatabaseUtil.getConnection();
			PreparedStatement pstmt = connection.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setString(2, userID);
			pstmt.setString(3, userPW);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int join2(String userName, String userID, String userPW) {
		
		String SQL = "INSERT INTO cafeuser VALUES (?,?,HEX(AES_ENCRYPT(?,'ABC')))";
		try {
			Connection connection = DatabaseUtil.getConnection();
			PreparedStatement pstmt = connection.prepareStatement(SQL);
			pstmt.setString(1, userName);
			pstmt.setString(2, userID);
			pstmt.setString(3, userPW);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int order(String drinkName, String drinkPrice,int count) {
		String SQL = "INSERT INTO orderlist VALUES (?,?,"+count+")";
		try {
			System.out.println("order함수 진입");
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, drinkName);
			pstmt.setString(2, drinkPrice);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int summitDrink() {
		String SQL = "TRUNCATE orderlist";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}
	
	public int login(String userID, String userPW) throws SQLException, IOException {
		
		String SQL = "SELECT userID, userPW FROM cafeuser WHERE userID=? AND userPW=?" ;
		UserDTO dto = new UserDTO();
		String getID="";
		String getPW="";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPW);
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				getID=rs.getString("userID");
				getPW=rs.getString("userPW");
				System.out.println(getID);
				System.out.println(getPW);
			}
			rs.close();
			System.out.println(getID.equals(userID)&&getPW.equals(userPW));
			if(getID.equals(userID)&&getPW.equals(userPW)) {
				return 1;
			}
			else {
				return 2;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 2;
	}
	
	public int login2(String userID, String userPW) throws SQLException, IOException {
		
		
		String SQL = "SELECT userID, AES_DECRYPT(UNHEX(userPW), 'ABC')  from cafeuser where userID = ? and ? = (SELECT cast(AES_DECRYPT(UNHEX(userPW), 'ABC') as char(100)) FROM cafeuser where userID=?);";
		UserDTO dto = new UserDTO();
		String getID="";
		String getPW="";
		String subUserID=userID;
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			//값 보내기
			pstmt.setString(1, userID);
			pstmt.setString(2, userPW);
			pstmt.setString(3, subUserID);
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				//값 받기
				getID=rs.getString("userID");
				getPW=rs.getString("AES_DECRYPT(UNHEX(userPW), 'ABC')");
				System.out.println(getID);
				System.out.println(getPW);
			}
			rs.close();
			System.out.println(getID.equals(userID)&&getPW.equals(userPW));
			if(getID.equals(userID)&&getPW.equals(userPW)) {
				return 1;
			}
			else {
				return 2;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 2;
	}
}
