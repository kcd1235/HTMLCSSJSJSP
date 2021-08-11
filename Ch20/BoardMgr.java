package Ch20;

import java.sql.*;
import java.util.ArrayList;
public class BoardMgr {

	DBConnectionMgr pool = null;
	
	public BoardMgr(){
		try {
		pool = DBConnectionMgr.getInstance();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getTotalCount(String keyField, String keyWord) {
		int total=0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = pool.getConnection();
			if(keyWord.equals("null") || keyWord.equals("")) {
				//전체 게시물개수를 select
				pstmt=conn.prepareStatement("select count(*) from tblboard");
			}else {
				//전달받은 검색 정보를 만족하는 게시물개수를 select
			}
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				total=rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(conn, pstmt, rs);
		}
		
		return total;
	}
	
	public ArrayList<BoardBean> getBoardList(String keyField,String keyWord,int start,int end)
	{
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql=null;
		ArrayList<BoardBean> blist = new ArrayList();
		
		try {
			conn=pool.getConnection();
			if(keyWord.equals("null") || keyWord.equals(""))
			{
				sql="select * from tblBoard order by num desc";	//답글고려x-reply페이지 구성시 수정
				pstmt=conn.prepareStatement(sql);
			}
			else
			{
				//키워드 고려 검색
			}
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				BoardBean bean = new BoardBean();
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setSubject(rs.getString("subject"));
				bean.setPos(rs.getInt("pos"));
				bean.setRef(rs.getInt("ref"));
				bean.setDepth(rs.getInt("depth"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setCount(rs.getInt("count"));
				blist.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn, pstmt, rs);
		}
		
		return blist;		
		
	}
	
	
	
	
	
}
