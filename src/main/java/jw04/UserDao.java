package jw04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

	private String dburl = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String dbuser = "scott";
	private String dbpwd = "tiger";

	public UserDao() {
	}

	public void getUser(UserVO userVO) {
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(dburl, dbuser, dbpwd);

			pStmt = con.prepareStatement("SELECT id,passwd FROM users WHERE id=? AND passwd=?");
			pStmt.setString(1, userVO.getId());
			pStmt.setString(2, userVO.getPasswd());

			rs = pStmt.executeQuery();

			if (rs.next()) {
				System.out.println("db���� Ȯ�� �� id,pwd ==> :" + userVO.getId() + ":" + userVO.getPasswd());
				userVO.setActive(true);
			} else {
				System.out.println("db�� <" + userVO.getId() + ">�� �ش��ϴ� �ڷᰡ �����ϴ�.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e1) {
				}
			}
			if (pStmt != null) {
				try {
					pStmt.close();
				} catch (Exception e2) {
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e3) {
				}
			}
		}
	}
}
