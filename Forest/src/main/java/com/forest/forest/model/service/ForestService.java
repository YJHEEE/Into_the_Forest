package com.forest.forest.model.service;

import java.util.List;


import com.forest.model.vo.Forest;

public interface ForestService {
	int selectCount();
	
	List<Forest> selectAll();
	
	List<Forest> selectByFilter(List<String> filterList);
	
	Forest selectByNo(int key);
}
