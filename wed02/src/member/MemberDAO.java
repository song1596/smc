package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DB;

public class MemberDAO {
	public String login(String userid, String passwd) {
		String result=null;
		Connection conn=null;//DB접속
		PreparedStatement pstmt=null; //SQL실행
		ResultSet rs=null;//select 명령어의 결과셋을 레코드 단위로 조회
		try {
			conn = DB.getConn();
			String sql ="select * from member "
					+ "where userid=? and passwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();//sql실행
			if(rs.next()) {//레코드가 존재하면(로그인 성공)
				result=rs.getString("name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(pstmt!=null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
