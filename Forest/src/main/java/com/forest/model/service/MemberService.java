package com.forest.model.service;



import java.util.List;

import org.springframework.stereotype.Service;

import com.forest.model.vo.Member;

@Service
public interface MemberService {

	int getMemberCount();

	List<Member> findAll();

	Member findMemberById(String id);

	int saveMember(Member member);

	int updateMember(Member member);
	
	int deleteMember(String memberId);
	
	
}

