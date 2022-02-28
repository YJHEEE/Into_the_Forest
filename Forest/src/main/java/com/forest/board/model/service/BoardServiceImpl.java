package com.forest.board.model.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forest.model.dao.BoardDao;
import com.forest.model.dao.LoadDao;
import com.forest.model.vo.Board;
import com.forest.model.vo.Reply;
import com.forest.common.PageInfo;
@Service
public class BoardServiceImpl implements BoardServive {
	@Autowired
	private BoardDao dao;

	public List<Board> getBoardList(String category) {
		List<Board> list = dao.getBoardAllList(category);
		return list;
	}
	
	public List<Board> getBoardList(String sort, String category, String searchWord) {
		List<Board> list = dao.SearchBoardList(sort, category, searchWord);
		return list;
	}
	
	
	public Board findBoardByNo(int boardNo) {
		Board board = null;
		board = dao.findBoardByNo(boardNo);
		return board;
	}
	
	public int deleteBoard(int boardNo) {
		int result = 0;
		
		result = dao.deleteBoard(boardNo);

		return result;
	}
	
	public int deleteReply(int reply_key) {
		int result = 0;
		
		result = dao.deleteReply(reply_key);
		
		return result;
	}
	
	public int saveBoard (Board board) {
		int result = 0;
		
			result = dao.insertBoard(board);
		return result;
	}
	
	public int saveReply (Reply reply) {
		int result = 0;
		
		return result;
	}
	public int getBoardCount (String sort, String category, String searchWord) {
		int result = 0;
		result = dao.getBoardCount(sort, category, searchWord);
		return result;
	}
	
	public List<Board> getBoardList(PageInfo pageInfo, String sort, String category, String searchWord){
		List<Board> list = dao.getBoardListByFilter(pageInfo, sort, category, searchWord);
		return list;
	}
	
	public List<Board> getBoardList(PageInfo pageInfo){
		List<Board> list = dao.getBoardList(pageInfo);
		return list;
	}
	
}