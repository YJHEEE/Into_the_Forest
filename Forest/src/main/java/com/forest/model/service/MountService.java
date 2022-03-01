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
	
	public List<Mount> findTop100() {
		List<Mount> list = dao.findTop100();
		return list;
	}
	
	public List<Mount> findMountFilter(String name, String min, String max, String sort, String[] areaArray){
		if(min.isEmpty()) {
			min = "0";
		}
		if(max.isEmpty()) {
			max = "5000";
		}
		System.out.println("service 입력 => name : "+name+" / min : "+min+" / max : "+max+" / sort : "+sort+" / areaArray : "+Arrays.toString(areaArray));
		List<Mount> mount2 = dao.getMountFilter( name, min, max, sort, areaArray);
		System.out.println("service 출력 =>  " + dao.getMountFilter( name, min, max, sort, areaArray));
		return mount2;
	}

	public List<Mount> findMountDetail(String name) {
		List<Mount> mount = dao.getMountDetail(name);
		System.out.println("service 출력 => " + dao.getMountDetail(name));
		return mount;
	}

}
