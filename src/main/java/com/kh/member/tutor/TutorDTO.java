package com.kh.member.tutor;

import org.springframework.stereotype.Component;

import com.kh.member.MemberDTO;

@Component
public class TutorDTO extends MemberDTO{
	
	private String level;
	private int gpoint;
	private String introduce;
	private String right;
	
	public String getRight() {
		return right;
	}
	public void setRight(String right) {
		this.right = right;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
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
	
	
	

}
