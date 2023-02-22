package com.space4team.space.db;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.space4team.member.db.MemberDTO;


public class SpaceDAO {
//	con 선언을 위에하니까 되네..? 왜 돼..?
	
//	private static final String username = "class1_221020_team4";
//	private static final String password = "1234";
//	private static final String url = "jdbc:mysql://db.itwillbs.dev:3306/class1_221020_team4";
//	

	public Connection getConnection() throws Exception{
//				
//	Class.forName("com.mysql.cj.jdbc.Driver");
//				con = DriverManager.getConnection(url, username, password);
//				System.out.println("드라이버 로딩 성공");
//				return con;
		Connection con;
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/MysqlDB");
		con = ds.getConnection();
		return con;				
	}
	
	public int getSpaceNumber(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("spacenumber 구하기");
		try {
			con = getConnection();
			
			String sql ="select max(s_num) from space";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			
			if(rs.next()) {
				num = rs.getInt("max(s_num)") + 1;	}
		
			
		} catch (Exception e) {
			System.out.println("예외처리함");
			e.printStackTrace();
		} finally {
			if(con!=null) {try {con.close();} catch (Exception e2) {}}
			if(pstmt!=null){try {pstmt.close();} catch (Exception e2) {}}
			
		}return num;
	}
	
	public void insertSpace (SpaceDTO dto, MemberDTO mdto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("insert시도");
		try {
			con = getConnection();

			// num 구하기
			int num=1;
			String sql ="select max(s_num) from space";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt("max(s_num)") + 1;	}
			
			String sql2 ="insert into space(s_num, s_name, s_address, s_bill, h_num, s_sido, s_gungu, s_memo, s_file, s_opt, s_max) values (?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql2);
			pstmt.setInt(1,num);
			pstmt.setString(2, dto.getS_name());
			pstmt.setString(3, dto.getS_address());
			pstmt.setString(4, dto.getS_bill());
			pstmt.setInt(5, mdto.getH_num());
			pstmt.setString(6, dto.getS_sido());
			pstmt.setString(7, dto.getS_gungu());
			pstmt.setString(8, dto.getS_memo());
			pstmt.setString(9, dto.getS_file());
			pstmt.setString(10, dto.getS_option());
			pstmt.setString(11, dto.getS_max());
			
			pstmt.executeUpdate();
			
			System.out.println("con주소"+con);
			
		} catch (Exception e) {
			System.out.println("예외처리함");
			e.printStackTrace();
		} finally {
			if(con!=null) {try {con.close();} catch (Exception e2) {}}
			if(pstmt!=null){try {pstmt.close();} catch (Exception e2) {}}
			}return;
		}
	
	public ArrayList<SpaceDTO> getSpaceList(int startRow, int pageSize, MemberDTO mdto){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SpaceDTO> spaceList = new ArrayList<SpaceDTO>(); // 생성은 try 안에서 
		System.out.println(mdto.getH_num());
		try {
			
			con = getConnection();
			
			// select 명시적으로 컬럼 적기 
			String sql = "select * from space where h_num =? order by s_num desc limit ?,? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mdto.getH_num());
			pstmt.setInt(2, startRow -1);
			pstmt.setInt(3, pageSize);
			rs = pstmt.executeQuery();
			System.out.println(mdto.getH_num());
			while(rs.next()) {
				SpaceDTO dto = new SpaceDTO();
				dto.setS_num(rs.getInt("s_num"));
				dto.setS_name(rs.getString("s_name"));
				dto.setS_bill(rs.getString("s_bill"));
				dto.setS_address(rs.getString("s_address"));
				dto.setS_memo(rs.getString("s_memo"));
				dto.setS_max(rs.getString("s_max"));
				
				spaceList.add(dto);
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(con != null) {try {con.close();} catch (Exception e2) {}}
			if(pstmt != null) {try {pstmt.close();} catch (Exception e2) {}}
			if(rs != null) {try {rs.close();} catch (Exception e2) {}}
		}
			return spaceList;
	}
	
	public int getSpaceCount(MemberDTO mdto) {
		int count = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			String sql = "select count(*) from space where h_num =?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mdto.getH_num());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt("count(*)");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(con != null) {try {con.close();} catch (Exception e2) {}}
			if(pstmt != null) {try {pstmt.close();} catch (Exception e2) {}}
			if(rs != null) {try {rs.close();} catch (Exception e2) {}}
		} return count;
	}

	public SpaceDTO getSpace(int num) {
		Connection con = null;
		ResultSet rs = null;
		SpaceDTO dto = null;
		PreparedStatement pstmt = null;
		try {
			con = getConnection();
			
//			num가 space의 num인가..?
			String sql = "select * from space where s_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new SpaceDTO();
				dto.setS_num(rs.getInt("s_num"));
				dto.setS_name(rs.getString("s_name"));
				dto.setS_address(rs.getString("s_address"));
				dto.setS_bill(rs.getString("s_bill"));
				dto.setS_max(rs.getString("s_max"));
				dto.setS_memo(rs.getString("s_memo"));
				dto.setS_sido(rs.getString("s_sido"));
				dto.setS_gungu(rs.getString("s_gungu"));
				dto.setS_file(rs.getString("s_file"));
				
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null) {try {pstmt.close();} catch (Exception e2) {}}
			if(con!=null) {try {con.close();} catch (Exception e2) {}}
			if(rs != null) {try {rs.close();} catch (Exception e2) {}}
		}
		return dto;
		
	
		} public void updateSpace(SpaceDTO dto, MemberDTO mdto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		System.out.println("updateSpace 시도! sql구문 시작전 ");

		try {
			con=getConnection();
			
			String sql = "update space set s_name=?, s_address=?,s_bill=?,h_num=?,s_sido=?, s_gungu=?,s_memo=?,s_file=?,s_opt=?,s_max=?  where s_num=?";
			pstmt = con.prepareStatement(sql);
			
			System.out.println("sql구문 실행중 ");

			pstmt.setString(1, dto.getS_name());
			pstmt.setString(2, dto.getS_address());
			pstmt.setString(3, dto.getS_bill());
			pstmt.setInt(4, mdto.getH_num());
			pstmt.setString(5, dto.getS_sido());
			pstmt.setString(6, dto.getS_gungu());
			
			pstmt.setString(7, dto.getS_memo());
			pstmt.setString(8, dto.getS_file());
			pstmt.setString(9, dto.getS_option());
			pstmt.setString(10, dto.getS_max());
			pstmt.setInt(11, dto.getS_num());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null) {try {pstmt.close();} catch (Exception e2) {}}
			if(con!=null) {try {con.close();} catch (Exception e2) {}}		
		}		
	}
		public void deleteSpace(int num) {
			Connection con = null;
			PreparedStatement pstmt = null;
			
			try {
				con = getConnection();
				
				String sql = "delete from space where s_num = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(pstmt!=null) try { pstmt.close();} catch (Exception e2) {}
				if(con!=null) try { con.close();} catch (Exception e2) {}
			}
		}
	
	
}