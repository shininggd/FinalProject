package com.kh.sgroup;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class SgroupDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "SgroupMapper.";
	private final String TUTORSPACE = "TutorMapper.";
	
	public int write(SgroupDTO sgroupDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"sgroupWrite", sgroupDTO);
	}

	public int sgroup_upload(Sgroup_UploadDTO sgroup_UploadDTO){
		
		return sqlSession.insert(NAMESPACE+"community_upload", sgroup_UploadDTO);
	}
	
	public int sgroup_max(){
		
		return (Integer)sqlSession.selectOne(NAMESPACE+"max_num");
	}
	
	public List<SgroupDTO> sgroupList(){
		return sqlSession.selectList(NAMESPACE+"sgroupList");
	}
	public HashMap<Object, Object> sgroupView(Integer num, String tid)throws Exception{
		HashMap<Object, Object> ar = new HashMap<Object, Object>();
		ar.put("sgroup", this.sgroupOneView(num));
		ar.put("tutor",sqlSession.selectOne(TUTORSPACE+"tutorStudyInfo",tid));
		ar.put("profile",sqlSession.selectOne(TUTORSPACE+"tutorImage",tid));
		return ar;
	}
	public SgroupDTO sgroupOneView(Integer num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"sgroupView", num);
	}
	public int update(SgroupDTO sgroupDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"sgroupUpdate",sgroupDTO);
	}
	public SgroupDTO updateView(Integer num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"sgroupView", num);
	}
	public int delete(int num) throws Exception {
		
		return sqlSession.delete(NAMESPACE+"delete", num);
	}
}
