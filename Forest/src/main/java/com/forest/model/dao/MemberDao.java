package com.forest.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.forest.model.vo.Member;
@Repository
public class MemberDao {

	@Autowired
	private SqlSessionTemplate session;
	
	public int getMemeberCount() {
		return session.selectOne("memberMap.selectCount");
	}
	
	public List<Member> findAll() {
		return session.selectList("memberMap.selectAll");
	}
	
	public Member findMemberById(String id) {
		System.out.println("id : "+id);
		return session.selectOne("memberMap.selectMember", id);
	}
	
	public int insertMember( Member member) {
		return session.insert("memberMap.insertMember", member);
	}
	
	public int updateMember(Member member) {
		return session.update("memberMap.updateMember", member);
	}
	
	public int deleteMember(String memberId) {
		return session.delete("memberMap.deleteMember", memberId);
	}
}
