package com.space4team.host.db;

import java.sql.Timestamp;

public class HostDTO {
	// 데이터를 담아서 다른 클래스 전달 
	//멤버변수 => 데이터 은닉 => 캡슐화
	private int h_num;
	private String h_id;
	private String h_pass;
	private String h_name;

	
	
	public int getH_num() {
		return h_num;
	}
	public void setH_num(int h_num) {
		this.h_num = h_num;
	}
	public String getH_id() {
		return h_id;
	}
	public void setH_id(String h_id) {
		this.h_id = h_id;
	}
	public String getH_pass() {
		return h_pass;
	}
	public void setH_pass(String h_pass) {
		this.h_pass = h_pass;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	
	
}
