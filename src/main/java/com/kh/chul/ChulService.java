package com.kh.chul;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.util.ListInfo;

@Service
public class ChulService {
	
	@Autowired
	ChulDAO chulDAO;
	
	public List<ChulDTO> Chullist(Date date)throws Exception{
		List<ChulDTO> list = chulDAO.Chullist();
		List<ChulDTO> list2 = new ArrayList<ChulDTO>();
		
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getReg_date().equals(date)) {
				System.out.println("equls");
				list2.add(list.get(i));
			}
		}
		return list2;
	}
	public int ChulWriter(ChulDTO chulDTO)throws Exception{
		return chulDAO.ChulWrite(chulDTO);
	}
	
	public int Ccount(ListInfo listInfo) throws Exception{
		return chulDAO.Ccount(listInfo);

	}
}
