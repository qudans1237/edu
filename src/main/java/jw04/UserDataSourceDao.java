package jw04;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDataSourceDao {

	public UserDataSourceDao() {
	}

	public void getUser(UserVO userVO) {
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet rs = null;
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/ora");
			con = ds.getConnection();

			pStmt = con.prepareStatement("select * from users where id = ? and passwd = ?");
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
