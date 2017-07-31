package com.kh.sgroup;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class SgroupService {
	@Autowired
	private SgroupDAO sgroupDAO;
	
	public int write(SgroupDTO sgroupDTO)throws Exception{
		return sgroupDAO.write(sgroupDTO);
	}
	public int sgroup_upload(Sgroup_UploadDTO sgroup_UploadDTO){
		
		return sgroupDAO.sgroup_upload(sgroup_UploadDTO);
	}
	public int sgroup_max(){
		return sgroupDAO.sgroup_max();
	}
	public List<SgroupDTO> sgroupList(){
		return sgroupDAO.sgroupList();
	}
	public  HashMap<Object, Object> sgroupView(Integer num, String tid)throws Exception{
		return sgroupDAO.sgroupView(num, tid);
	}
	public int update(SgroupDTO sgroupDTO)throws Exception{
		return sgroupDAO.update(sgroupDTO);
	}
	public SgroupDTO update(int num)throws Exception{
		return sgroupDAO.updateView(num);
	}
	public int delete(int num) throws Exception {
		return sgroupDAO.delete(num);
	}
}
