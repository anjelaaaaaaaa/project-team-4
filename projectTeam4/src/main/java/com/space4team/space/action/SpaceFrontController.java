package com.space4team.space.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SpaceFrontController extends HttpServlet{
//	자동으로 doGet() doPost()호출
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("SpaceFrontController doGet()");
//		방식 상관없이 호출 
		doProcess(request, response); } // doGet()괄호 

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("SpaceFrontController doPost()");
		doProcess(request, response); } // doPost()괄호
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("SpaceFrontController doProcess()"); 
	
//		가상주소 뽑아오기
		System.out.println("뽑은 가상주소 : " + request.getServletPath());
		String sPath = request.getServletPath();
		
//		부모 인터페이스 틀 선언
		action action = null;
//		이동정보를 저장하는 자바파일 선언
		actionForward forward = null;
		
		if(sPath.equals("/SpaceInsertForm.sp")) {
			System.out.println("spaceinsertForm.sp 실행전");
			action = new SpaceInsertForm();

			try {
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
				
			
		}  else if(sPath.equals("/SpaceInsertPro.sp")) {
			System.out.println("spaceInsertPRo.sp 실행");
			
			action = new SpaceInsertPro();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
		
		} else if(sPath.equals("/SpaceList.sp")) {
			
			action = new SpaceList();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(sPath.equals("/SpaceUpdateForm.sp")) {
			
			action = new SpaceUpdateForm();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(sPath.equals("/SpaceUpdatePro.sp")) {
			System.out.println("spaceupdatepro 실행");
			action = new SpaceUpdatePro();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
						
//		forward(이동정보 담은 객체에 뭔가 있다면 ! == 이동정보가 있다면 )
		if(forward != null) {
//			이동방식 비교
			if(forward.isRedirect() == true) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
//				request, response정보를 들고감! 
				dispatcher.forward(request, response);}
			} // if(forward != null) 괄호 
	} // doProcess()괄호
} // class{}괄호
