package com.forest.member.model.service;



import java.util.List;

import org.springframework.stereotype.Service;

import com.forest.model.vo.Member;

public interface MemberService {

	int getMemberCount();

	List<Member> findAll();

	Member findMemberById(String id);

	int saveMember(Member member);

	int updateMember(Member member);
	
	int deleteMember(String memberId);
	
	
	//--------------------------------------
	Member login(String id, String pwd);

	int save(Member member);

	boolean validate(String userId);

	Member findById(String id);

//	int delete(int no);

	int updatePwd(Member loginMember, String userPwd);
	
	
}

