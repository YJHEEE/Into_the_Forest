package com.forest.forest.model.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forest.model.dao.ForestDao;
import com.forest.model.dao.MountDao;
import com.forest.model.vo.Forest;
@Service
public class ForestServiceImpl implements ForestService{
	@Autowired
	private ForestDao dao;
	
	@Override
	public int selectCount() {
		int result = dao.selectCount();
		return result;
	}

	@Override
	public List<Forest> selectAll() {
		List<Forest> list = dao.selectAll();
		return list;
	}

	@Override
	public List<Forest> selectByFilter(List<String> filterList) {
		List<Forest> list = dao.selectByFilter(filterList); 
		return list;
	}

	@Override
	public Forest selectByNo(int key) {
		Forest forest = dao.selectByNo(key);
		return forest;
	}

}
