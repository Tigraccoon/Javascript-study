package himart;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;


public class HimartDAO {
	public int upload(HimartDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO himart VALUES(?,?,?,?,?,?,?,?,?)";
		
		try {
			conn = oraConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getLocation());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getCode());
			pstmt.setInt(4, dto.getPrice());
			pstmt.setInt(5, dto.getAmount());
			pstmt.setInt(6, dto.getVal());
			pstmt.setInt(7, dto.getTax());
			pstmt.setInt(8, dto.getTot());
			pstmt.setString(9, dto.getChk());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1;
	}
	public Connection oraConn() {
		Connection conn = null;

		try {
			FileInputStream fis = new FileInputStream("D:\\work_java\\web02\\WebContent\\project3\\oracle.prop");
			Properties prop = new Properties();
			prop.load(fis);

			String url = prop.getProperty("url");
			String id = prop.getProperty("id");
			String pwd = prop.getProperty("pwd");
			
			Class.forName("oracle.jdbc.driver.OracleDriver");

			conn = DriverManager.getConnection(url, id, pwd);

		} catch (Exception e) {
			e.printStackTrace();
		}


		return conn;
	}
}
