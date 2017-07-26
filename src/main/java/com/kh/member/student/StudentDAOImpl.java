package com.kh.member.student;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.kh.member.MemberDAO;
import com.kh.member.MemberDTO;
import com.kh.member.tutor.TutorDTO;
import com.kh.util.ListInfo;

@Repository
public class StudentDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "StudentMapper.";
	
	@Override
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"studentJoin", memberDTO);
	}
	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"studentUpdate", memberDTO);
	}
	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"studentLogin", memberDTO);
	}

	public MemberDTO IdFind(MemberDTO memberDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"IdFind", memberDTO);
	}
	
	public MemberDTO PwFind(MemberDTO memberDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"PwFind", memberDTO);
	}
	@Override
	public String memberIdCheck(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"IdCheck", id);
		
	}

	public int pointGC(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"pointGC",memberDTO);
	}
	
	public String myPoint(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"myPoint", memberDTO);
	}
	
	public List<StudentDTO> stuinfo(ListInfo listInfo) throws Exception {
		 return  sqlSession.selectList(NAMESPACE+"studentinfo", listInfo);
	}
	
	public int Scount(ListInfo listInfo){
		int count = sqlSession.selectOne(NAMESPACE+"Scount", listInfo);
		return count;
	}
	public int memberDelete(StudentDTO studentDTO){
		return sqlSession.delete(NAMESPACE+"memberDelete", studentDTO);
	}
}
