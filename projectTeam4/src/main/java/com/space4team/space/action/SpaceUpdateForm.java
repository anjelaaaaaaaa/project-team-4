package com.space4team.space.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.space4team.space.db.SpaceDAO;
import com.space4team.space.db.SpaceDTO;

public class SpaceUpdateForm implements action{

	@Override
	public actionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("SpaceContent execute () 실행");
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		SpaceDAO dao = new SpaceDAO();
		
//		Space DTO 생성하고 getboard 만들고,,,,, request로 보내주기 
		
		
		actionForward forward = new actionForward();
		forward.setPath("spaceupdate.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
