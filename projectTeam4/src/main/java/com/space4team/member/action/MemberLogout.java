package com.space4team.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogout implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberLogout execute()");
		//세션 초기화
		HttpSession session=request.getSession();
		session.invalidate();
		
		//이동 MemberMain.me
//		ActionForward forward=new ActionForward();
//		forward.setPath("MemberMain.me");
//		forward.setRedirect(true);
		
		response.setContentType("text/html; charset=UTF-8");
//		getWriter라는 출력권한을 받음 PrintWriter라는 java io를 사용해서
		
		PrintWriter out= response.getWriter();
		out.println("<script type = 'text/javascript'>"); //""안에는 ""못 쓰니까 ''로 묶어줌 
		out.println("alert('로그아웃')");
		out.println("location.href='MemberMain.me'");
		out.println("</script>");
		out.close();
//		 스크립트 쓰는것을 끝내겠다 ! 		
		
		return null;
	}
}
