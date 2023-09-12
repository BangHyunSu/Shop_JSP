package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

public class ServiceDAO {
	private Connection conn; // DB에 접근하는 객체
	private ResultSet rs; // DB data를 담을 수 있는 객체 (Ctrl + shift + 'o') -> auto import
	Timestamp date = new Timestamp(System.currentTimeMillis());
	
	public ServiceDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
        	String dbID = "fighting";
            String dbPassword = "coding";
            Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/* public String getDate() // 현재시간을 넣어주기위해
	{
//		String SQL = "SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') from dual"; // 현재시간을 나타내는 sql
		String SQL = "SELECT sysdate from dual"; 
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // 데이터베이스 오류
	} */

	public int getNext() {
		String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC"; // 내림차순으로 가장 마지막에 쓰인 것을 가져온다
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1; // 그 다음 게시글의 번호
			}
			return 1; // 첫 번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	public int write(String bbsTitle, String userID, String bbsContent) {
		String SQL = "INSERT INTO BBS VALUES (?, ?, ?, ?, ?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setTimestamp(4, date);
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	public ArrayList<ServiceDTO> getList(int pageNumber) {
//		String SQL = "select row_number() over(order by A.BBSID) as row_num, A.*\r\n"
//				+ "from\r\n"
//				+ "(SELECT *\r\n"
//				+ "  FROM BBS \r\n"
//				+ " WHERE bbsID < ?\r\n"
//				+ " AND bbsAvailable = 1 \r\n"
//				+ " AND ROWNUM <= 10\r\n"
//				+ ")A\r\n"
//				+ "order by row_num desc\r\n";
		
		String SQL2 = "select *\r\n"
				+ "		from(\r\n"
				+ "  		  select rownum a, A.*\r\n"
				+ "   			 from (select *\r\n"
				+ "           			 from bbs\r\n"
				+ "            			where bbsAvailable = 1\r\n"
				+ "            			order by bbsID desc) A\r\n"
				+ "    	order by rownum)\r\n"
				+ "where A between ? and ?";
																													// 것을 가져온다
		ArrayList<ServiceDTO> list = new ArrayList<ServiceDTO>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL2);
			pstmt.setInt(1, (pageNumber-1)*10+1);
			pstmt.setInt(2, pageNumber * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ServiceDTO bbs = new ServiceDTO();
				bbs.setBbsID(rs.getInt(2));
				bbs.setBbsTitle(rs.getString(3));
				bbs.setUserID(rs.getString(4));
				bbs.setBbsDate(rs.getString(5));
				bbs.setBbsContent(rs.getString(6));
				bbs.setBbsAvailable(rs.getInt(7));
				list.add(bbs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

//    페이징 처리를 위한 함수
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public ServiceDTO getBbs(int bbsID) {
		String SQL = "SELECT * FROM BBS WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				ServiceDTO bbs = new ServiceDTO();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				return bbs;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int update(int bbsID, String bbsTitle, String bbsContent) {
		String SQL = "UPDATE BBS SET bbsTitle = ?, bbsContent = ? WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	public int delete(int bbsID) {
		String SQL = "UPDATE BBS SET bbsAvailable = 0  WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}