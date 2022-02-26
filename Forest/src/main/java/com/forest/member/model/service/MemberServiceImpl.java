package com.forest.member.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.forest.model.dao.MemberDao;
import com.forest.model.vo.Member;

public class MemberServiceImpl implements MemberService {
	private MemberDao dao = new MemberDao();

	public int getMemberCount() {
		int count = dao.getMemeberCount();

		return count;
	}

	public List<Member> findAll() {
		List<Member> list = dao.findAll();

		return list;
	}

	public Member findMemberById(String id) {
		Member member = dao.findMemberById(id);

		return member;
	}

	public int saveMember(Member member) {
		int result = 0;
		result = dao.insertMember(member);

		return result;
	}

	public int updateMember(Member member) {
		int result = 0;
		result = dao.updateMember(member);

		return result;
	}

	public int deleteMember(String memberId) {
		int result = 0;

		result = dao.deleteMember(memberId);

		return result;
	}
}
