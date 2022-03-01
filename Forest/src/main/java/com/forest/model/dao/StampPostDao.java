package com.forest.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forest.model.vo.StampPost;
import com.forest.model.vo.StampRank;
@Repository
public class StampPostDao {
	@Autowired
	private SqlSessionTemplate session;
	

	public List<StampPost> findAll(){
		return session.selectList("StampPostMap.selectAll");
	}
	
	public List<StampRank> findAllRank(){
		return session.selectList("StampPostMap.selectHofAllRank");
	}
	
	public int getStampPostCount() {
		return session.selectOne("StampPostMap.selectCount");
	}
	
	public List<StampPost> viewAdmin(){
		return session.selectList("StampPostMap.selectAdmin");
	}
	
	public List<StampPost> setAdminAllow(String id, String key){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("key", key);
		return session.selectList("StampPostMap.updateAdminAllow", map);
	}
	
	public List<StampPost> setAdminUnallow(String id, String key){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("key", key);
		return session.selectList("StampPostMap.updateMountUnallow", map);
	}
	
	public List<StampPost> selectTestKey(String id, String key){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("key", key);
		return session.selectList("StampPostMap.selectTestKey", map);
	}

	public List<StampPost> findUserStamp(String id){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		return session.selectList("StampPostMap.selectUserStamp", map);
	}
	
	public List<StampPost> findUserStampPost(String id){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		return session.selectList("StampPostMap.selectUserStampPost", map);
	}
	
	//8��
	public List<StampPost> getHofStampCount(String id){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		return session.selectList("StampPostMap.selectHofStampCount", map);
	}
	
	//9��
		public List<StampPost> getHofStamp(String id){
			Map<String, String> map = new HashMap<>();
			map.put("id", id);
			return session.selectList("StampPostNo1Map.selectHofStamp", map);
		}
		
	//10��
		public List<StampPost> getHofUserPicture(String id){
			Map<String, String> map = new HashMap<>();
			map.put("id", id);
			return session.selectList("StampPostMap.selectHofUserPicture", map);
		}
		
	//11��
		public List<StampPost> getHofAllRank(){
			return session.selectList("StampPostMap.selectHofAllRank");
		}
		
	//12��
		public List<StampRank> getHofUserId(String id){
			return session.selectList("StampPostMap.selectHofUserId",id);
		}
}
