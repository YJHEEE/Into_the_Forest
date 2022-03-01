package com.forest.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forest.model.vo.Load;

@Repository
public class LoadDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public List<Load> findAll() {
		return session.selectList("loadMap.selectAll");
	}
	
	public List<Load> getDulleFilter(String name, String min, String max, String sort){
		Map<String, Object> map = new HashMap<>();
		
		map.put("name", name);
		map.put("min", min);
		map.put("max", max);
		map.put("sort", sort);
		System.out.println("DAO=> " + map.toString());
		return session.selectList("loadMap.selectDulleFilter", map);
	}
	
	public int getDulleCount() {
		return session.selectOne("loadMap.selectDulleCount");
	}
	
	public List<Load> getLoadFilter(String name, String sort){
		Map<String, Object> map = new HashMap<>();
		
		map.put("name", name);
		map.put("sort", sort);
		
		return session.selectList("loadMap.selectLoadFilter", map);
	}
	
	public int getLoadCount() {
		return session.selectOne("loadMap.selectDulleCount");
	}
	
}
