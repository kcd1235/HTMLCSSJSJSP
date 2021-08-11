package Ch18.dao;

import Ch18.vo.MemberVO;
import java.sql.*;

public class MemberDAO {

	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	private static MemberDAO instance = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance()
	{
		return instance;
	}
	
	public void MemberJoin(MemberVO member) {
		Connection conn=null;
		PreparedStatement pstmt = null;	
		try
		{
			conn = pool.getConnection();
			pstmt = conn.prepareStatement("insert into membertbl value(?,?,?,?)");
			pstmt.setString(1, member.getUserid());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			int result = pstmt.executeUpdate();
			System.out.println("쿼리 전송이 후 변화된 행의 수 : " + result);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
	}
	public void MemberSearch(){}
	public void MemberUpdate() {}
	public void MemberDelete() {}
	public void MemberList() {}
	
	
	
	
	
	
	
	
}
