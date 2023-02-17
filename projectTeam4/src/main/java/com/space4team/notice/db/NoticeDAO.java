package com.space4team.notice.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class NoticeDAO {
		
	public Connection getConnection() throws Exception{
		//서버에서 미리 1, 2 단계 => 디비연결 => 이름을 불러 연결정보를 가져오기
		// => 속도 향상, 디비연결 정보 수정 최소화
		// DataBase Connection Pool (DBCP)=> 디비 연결정보 서버 저장
		// 1. META-INF context.xml (디비연결정보)
		// 2. MemberDAO 디비연결정보 불러서 사용
		Context init=new InitialContext();
		DataSource ds=(DataSource)init.lookup("java:comp/env/jdbc/DB");
		Connection con=ds.getConnection();
		return con;
	}
	
	
	public void insertNotice(NoticeDTO dto) {
		System.out.println("NoticeDAO insertBoard()");
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			// 예외가 발생할 가능성이 높은 명령(1~4단계)
			// 1~2 단계
			con=getConnection();
			// num 구하기
			int num=1;
			String sql="select max(no_num) from notice";
			pstmt=con.prepareStatement(sql);
			//4
			rs=pstmt.executeQuery();
			//5
			if(rs.next()) {
				num=rs.getInt("max(no_num)")+1;
			}

			sql="insert into notice(no_num, no_subject, no_content) values(?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);  
			pstmt.setString(2, dto.getNo_subject()); 
			pstmt.setString(3, dto.getNo_content());

			
			// 4단계 SQL구문을 실행(insert,update,delete)
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// 예외가 발생하면 처리하는 곳
			e.printStackTrace();
		}finally {
			// 예외 상관없이 마무리작업 => 객체생성한 기억장소 해제
			if(rs!=null) try { rs.close();} catch (Exception e2) {}
			if(pstmt!=null) try { pstmt.close();} catch (Exception e2) {}
			if(con!=null) try { con.close();} catch (Exception e2) {}
		}
		return;
	}//insertBoard() 메서드
	
	// 리턴할형 ArrayList<BoardDTO>  getBoardList() 메서드 정의 
		public ArrayList<NoticeDTO> getNoticeList(){
			System.out.println("NoticeDAO getNoticeList()");
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			ArrayList<NoticeDTO> noticeList = new ArrayList<NoticeDTO>();
			try {
				
				con=getConnection();
				// 3단계 sql
				// 기본 num기준 오름차순 => 최근글 위로 올라오게 정렬 (num 내림차순)
//				String sql="select * from board order by num desc";
//				String sql="select * from board order by num desc limit 시작행-1, 몇개";
				String sql="select * from notice order by no_num desc ";
				pstmt=con.prepareStatement(sql);

				//4
				rs=pstmt.executeQuery();
				//5
				while(rs.next()) {
					// 하나의 글의 바구니에 저장
					NoticeDTO dto=new NoticeDTO();
					dto.setNo_num(rs.getInt("no_num"));
					dto.setNo_subject(rs.getString("no_subject"));
					dto.setNo_content(rs.getString("no_content"));
					
					// 바구니의 주소값을 배열 한칸에 저장
					noticeList.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				// 예외 상관없이 마무리작업 => 객체생성한 기억장소 해제
				if(rs!=null) try { rs.close();} catch (Exception e2) {}
				if(pstmt!=null) try { pstmt.close();} catch (Exception e2) {}
				if(con!=null) try { con.close();} catch (Exception e2) {}
			}
			return noticeList;
		}//

	
}
