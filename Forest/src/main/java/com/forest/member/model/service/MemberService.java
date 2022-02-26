package com.forest.member.model.service;



import java.util.List;

import com.forest.model.vo.Member;

public interface MemberService {

	int getMemberCount();

	List<Member> findAll();

	Member findMemberById(String id);

	int saveMember(Member member);

	int updateMember(Member member);
	
	int deleteMember(String memberId);
}
