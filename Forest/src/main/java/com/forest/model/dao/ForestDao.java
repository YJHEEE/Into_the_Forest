package com.forest.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forest.model.vo.Forest;

@Repository
public class ForestDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public int selectCount() {
		return session.selectOne("forestMap.selectCount");
	}
	
	public List<Forest> selectAll(){
		
		return session.selectList("forestMap.selectAll");
	}
	
	public List<Forest> selectByFilter(List<String> filterList) {
		Map<String, List<String>> map = new HashMap<>();
		map.put("filterList", filterList);
		return session.selectList("forestMap.searchByFilter", map);
	}
	
	public Forest selectByNo(int forest_key) {
		return session.selectOne("forestMap.searchByNo", forest_key);
	}
}
