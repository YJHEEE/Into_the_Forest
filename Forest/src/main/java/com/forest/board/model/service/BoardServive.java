package com.forest.board.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.forest.common.PageInfo;
import com.forest.model.vo.Board;
import com.forest.model.vo.Reply;

public interface BoardServive {
	List<Board> getBoardList(String category);
	List<Board> getBoardList( String sort,String category, String searchWord);
	Board findBoardByNo(int boardNo);
	int deleteBoard(int boardNo);
	int deleteReply(int reply_key);
	int saveBoard (Board board);
	int saveReply (Reply reply);
	int getBoardCount (String sort, String category, String searchWord);
	List<Board> getBoardList(PageInfo pageInfo, String sort, String category, String searchWord);
	List<Board> getBoardList(PageInfo pageInfo);
	
}
