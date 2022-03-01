package com.forest.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forest.model.dao.StampPostDao;
import com.forest.model.vo.StampPost;
import com.forest.model.vo.StampRank;

@Service
public class StampPostService {
	@Autowired
	private StampPostDao dao;

	public List<StampPost> findAll() {
		List<StampPost> list = dao.findAll();
		return list;
	}

	public List<StampRank> findAllRank() {
		List<StampRank> list = dao.findAllRank();
		return list;
	}

	public int findStampPostCount() {
		int count = dao.getStampPostCount();
		return count;
	}

	public List<StampPost> viewAdmin() {
		List<StampPost> list = dao.viewAdmin();
		return list;
	}

	public List<StampPost> setAdminAllow(String id, String key) {
		List<StampPost> list = dao.setAdminAllow(id, key);
		return list;
	}

	public List<StampPost> setAdminUnallow(String id, String key) {
		List<StampPost> list = dao.setAdminUnallow(id, key);
		return list;
	}

	public List<StampPost> selectTestKey(String id, String key) {
		List<StampPost> list = dao.selectTestKey(id, key);
		return list;
	}

	public List<StampPost> findUserStamp(String id) {
		List<StampPost> list = dao.findUserStamp(id);
		return list;
	}

	public List<StampPost> findUserStampPost(String id) {
		List<StampPost> list = dao.findUserStampPost(id);
		return list;
	}

	public List<StampPost> getHofStampCount(String id) {
		List<StampPost> list = dao.getHofStampCount(id);
		return list;
	}

	public List<StampPost> getHofStamp(String id) {
		System.out.println("servie : " + id);
		List<StampPost> list = dao.getHofStamp(id);
		return list;
	}

	public List<StampPost> getHofUserPicture(String id) {
		List<StampPost> list = dao.getHofUserPicture(id);
		return list;
	}

	public List<StampPost> getHofAllRank() {
		List<StampPost> list = dao.getHofAllRank();
		return list;
	}

	public List<StampRank> getHofUserId(String id) {
		System.out.println("service : " +id);
		List<StampRank> list = dao.getHofUserId(id);
		System.out.println("service : " +list.toString());
		return list;
	}
}
