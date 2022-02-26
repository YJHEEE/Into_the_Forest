package com.forest.model.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.forest.model.dao.LoadDao;
import com.forest.model.vo.Load;
@Service
public class LoadService {
	private LoadDao dao = new LoadDao();
	
	public List<Load> findAll() {
		List<Load> list = dao.findAll();
		return list;
	}
	
	public List<Load> findDulleFilter(String name, String min, String max, String sort){
		if(min.isEmpty()) {
			min = "0";
		}
		if(max.isEmpty()) {
			max = "100";
		}
		System.out.println("name : "+name+" / min : "+min+" / max : "+max+" / sort : "+sort);
		List<Load> load = dao.getDulleFilter(name, min, max, sort);
		return load;
	}
	
	public int getDulleCount() {
		int count = dao.getDulleCount();
		return count;
	}
	
	public List<Load> findLoadFilter(String name,String sort){
		System.out.println("name : "+name+" / sort : "+sort);
		List<Load> load = dao.getLoadFilter(name, sort);
		return load;
	}
	
	public int getLoadCount() {
		int count = dao.getLoadCount();
		return count;
	}
	
}
