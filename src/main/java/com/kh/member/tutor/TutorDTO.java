package com.kh.member.tutor;

import org.springframework.stereotype.Component;

import com.kh.member.MemberDTO;

@Component
public class TutorDTO extends MemberDTO{
	
	private String lv;
	private int gpoint;
	private String introduce;
	private String right;
	public String getLv() {
		return lv;
	}
	public void setLv(String lv) {
		this.lv = lv;
	}
	public int getGpoint() {
		return gpoint;
	}
	public void setGpoint(int gpoint) {
		this.gpoint = gpoint;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getRight() {
		return right;
	}
	public void setRight(String right) {
		this.right = right;
	}
	


}
