package com.forest.model.service;


import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forest.model.dao.MountDao;
import com.forest.model.vo.Mount;
import com.kh.mvc.common.util.PageInfo;

@Service
public class MountService {
	
	@Autowired
	private MountDao dao;
	
	
	public int getMountCount() {
		int count = dao.getMountCount();
		return count;
	}
	
	public List<Mount> findAll() {
		List<Mount> list = dao.findAll();
		return list;
	}
	
	public List<Mount> findMountFilter(String name, String min, String max, String sort, String[] areaArray){
		if(min.isEmpty()) {
			min = "0";
		}
		if(max.isEmpty()) {
			max = "10000";
		}
		System.out.println("name : "+name+" / min : "+min+" / max : "+max+" / sort : "+sort+" / areaArray : "+Arrays.toString(areaArray));
		List<Mount> mount2 = dao.getMountFilter( name, min, max, sort, areaArray);
		return mount2;
	}

	
	
}
