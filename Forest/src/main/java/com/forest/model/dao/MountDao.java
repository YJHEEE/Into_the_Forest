package com.forest.model.dao;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forest.model.vo.Mount;


@Repository
public class MountDao {

	@Autowired
	private SqlSessionTemplate session;
	
	public List<Mount> getMountFilter( String name, String min, String max, String sort, String[] areaArray){
		Map<String, Object> map = new HashMap<>();
		
		map.put("name", name);
		map.put("min", min);
		map.put("max", max);
		map.put("sort", sort);
		map.put("areaArray", areaArray);
		
		return session.selectList("mountMap.selectMountFilter", map);
	}
	
	public int getMountCount() {
		return session.selectOne("mountMap.selectCount");
	}
	
	public List<Mount> findAll() {
		return session.selectList("mountMap.selectAll");
	}
}
