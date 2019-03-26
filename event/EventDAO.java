package event;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

public class EventDAO {
	public int upload(EventDTO dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO event VALUES(?,?,?,?,?)";
		
		try {
			conn = oraConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getFileName());
			pstmt.setString(2, dto.getFileRealName());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getPhoneNum());
			pstmt.setString(5, dto.getEmail());
			
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
