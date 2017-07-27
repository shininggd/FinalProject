package com.kh.chul;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.util.ListInfo;

@Service
public class ChulService {
	
	@Autowired
	ChulDAO chulDAO;
	
	public List<ChulDTO> Chullist(ListInfo listInfo)throws Exception{
		listInfo.setPerPage(6);
		listInfo.makePage(chulDAO.Ccount(listInfo));
		listInfo.makeRow();
		return chulDAO.Chullist(listInfo);
	}
	public int ChulWriter(ChulDTO chulDTO)throws Exception{
		return chulDAO.ChulWrite(chulDTO);
	}
	
	public int Ccount(ListInfo listInfo) throws Exception{
		return chulDAO.Ccount(listInfo);

	}
}
