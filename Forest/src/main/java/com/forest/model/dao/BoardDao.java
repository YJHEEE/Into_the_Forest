package com.forest.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forest.model.vo.Board;
import com.forest.model.vo.Reply;
import com.forest.common.PageInfo;


@Repository
public class BoardDao {

	@Autowired
	private SqlSessionTemplate session;
	
	public List<Board> SearchBoardList(String sort,String category, String searchWord){
		Map<String, String> map = new HashMap<>();

		map.put("sort", sort);
		map.put("category", category);
		map.put("searchWord", searchWord);

		return session.selectList("boardMap.boardSearchByFilter", map);
	}

	public List<Board> getBoardAllList(String category){
		return SearchBoardList(null,category, null);
	}

	
	public Board findBoardByNo(int boardNo) {
		updateReadcount(boardNo);
		return session.selectOne("boardMap.selectBoardByNo", boardNo);
	}
	
	public int deleteBoard(int no) {
		return session.delete("memberMap.deleteMember", no);
	}
	
	public int deleteReply(int reply_key) {
		return session.delete("memberMap.deleteMember", reply_key);
	}
	
	public int insertBoard(Board board) {
		return session.insert("boardMap.insertBoard", board);
	}
	public int insertReply( Reply reply) {
		return session.insert("boardMap.insertReply", reply);
	}
	
	public int updateReadcount(int no) { 
		return session.update("updateReadCount", no);
	}
	public int getBoardCount(String sort,String category, String searchWord){
		Map<String, String> map = new HashMap<>();

		map.put("sort", sort);
		map.put("category", category);
		map.put("searchWord", searchWord);

		return session.selectOne("boardMap.getBoardCount", map);
		
	}
	public List<Board> getBoardListByFilter(PageInfo pageInfo,String sort,String category, String searchWord){
		Map<String, String> map = new HashMap<>();
		map.put("sort", sort);
		map.put("category", category);
		map.put("searchWord", searchWord);
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit(); 
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		return session.selectList("boardMap.boardSearchByFilter", map, rowBounds);
	}
	
	public List<Board> getBoardList(PageInfo pageInfo){
		Map<String, List<String>> map = new HashMap<>();
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit(); 
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		return session.selectList("boardMap.boardSearchByFilter", map, rowBounds);
	}	
}


