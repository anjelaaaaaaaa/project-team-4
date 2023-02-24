package com.space4team.host.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HostFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HostFrontController doGet()");
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HostFrontController doPost()");
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HostFrontController doProcess()");
		
		//가상 주소 뽑아오기
		System.out.println("뽑은 가상주소 : "+request.getServletPath());
		String sPath=request.getServletPath();
		
		//------------------------------------------------
		//가상 주소 매핑(비교)
		Action action=null;
		ActionForward forward=null;
		
			if(sPath.equals("/HostLoginForm.ho")) {
				
				forward=new ActionForward();
				forward.setPath("login.jsp");
				forward.setRedirect(false);
			}
		
			else if(sPath.equals("/HostLoginPro.ho")) {
			System.out.println("loginpro.me 실행전");
			
			action=new HostLoginPro();
			
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(sPath.equals("/HostMain.ho")) {
			
			forward=new ActionForward();
			forward.setPath("host/hostmain.jsp");
			forward.setRedirect(false);
		
		}
		else if(sPath.equals("/HostLogout.ho")) {
			action=new HostLogout();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(sPath.equals("/HostIdCheck.ho")) {
			action=new HostIdCheck();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(sPath.equals("/HostUpdateForm.ho")) {
//			action=new MemberUpdateForm();
			try {
				forward=action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(sPath.equals("/HostUpdatePro.ho")) {
//			action=new MemberUpdatePro();
			try {
				forward= action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(sPath.equals("/HostMypage.ho")) {
			forward=new ActionForward();
			forward.setPath("host/hostmypage.jsp");
			forward.setRedirect(false);
			
		} 
		
		//----------------------------------------------
		//주소 이동
		if(forward!=null) {
			if(forward.isRedirect()==true) {
				response.sendRedirect(forward.getPath());
			}else {
				//forward.isRedirect()==false
				RequestDispatcher dispatcher=
				request.getRequestDispatcher(forward.getPath());
		        dispatcher.forward(request, response);
			}//if
		}//if	
	}//doProcess()
}//MemberFrontController
