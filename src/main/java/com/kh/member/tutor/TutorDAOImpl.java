package com.kh.member.tutor;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.member.MemberDAO;
import com.kh.member.MemberDTO;
import com.kh.member.student.StudentDTO;
import com.kh.util.ListInfo;

@Repository
public class TutorDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "TutorMapper.";

	@Override
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		int result = sqlSession.insert(NAMESPACE+"memberJoin", memberDTO);
		int result2 = sqlSession.insert( NAMESPACE+"tutorJoin", memberDTO);	
		return result+result2;
	}
	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"tutorLogin", memberDTO);
	}

	@Override
	public String memberIdCheck(String id) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"IdCheck", id);
	}
	
	public List<TutorDTO> tutorinfo(ListInfo listInfo) throws Exception {
		 return  sqlSession.selectList(NAMESPACE+"tutorInfo", listInfo);
	}

	public int LRupdate(TutorDTO tutorDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"adminTupdate", tutorDTO);
	}
	
	public int Tcount(ListInfo listInfo){
		int count = sqlSession.selectOne(NAMESPACE+"tcount", listInfo);
		return count;
	}
	public int tutorDelete(TutorDTO tutorDTO){
		int result = sqlSession.delete(NAMESPACE+"tutorDelete", tutorDTO);
		int result2 = sqlSession.delete(NAMESPACE+"memberDelete", tutorDTO);
		return result+result2;
	}
	public List<String> GPstudentList(String tid) {
		List<Integer> list1 = sqlSession.selectList(NAMESPACE+"GPstudentList1", tid);
		
		List<String> list2 = new ArrayList<String>();
		List<String> resultList = new ArrayList<String>();
		for(int i=0; i<list1.size(); i++) {
			list2 = (sqlSession.selectList(NAMESPACE+"GPstudentList2", list1.get(i)));
			for(int j=0; j<list2.size(); j++) {
				resultList.add(list2.get(j));
			}
		}
		
		HashSet hs = new HashSet();
		hs.addAll(resultList);
		resultList.clear();
		resultList.addAll(hs);
		
		for(String s:resultList) {
			System.out.println(s);
		}
		
		return resultList;
	}
}
