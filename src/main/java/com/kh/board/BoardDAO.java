package com.kh.board;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kh.util.ListInfo;


public interface BoardDAO {
	
	public BoardDTO view(int num) throws Exception;
	public int write(BoardDTO boardDTO) throws Exception;
	public int update(BoardDTO boardDTO) throws Exception;
	public int delete(int num) throws Exception;
	public int count(ListInfo listInfo) throws Exception;
	public List<BoardDTO> list(ListInfo listInfo) throws Exception;

}
