package com.forest.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forest.model.dao.MemberDao;
import com.forest.model.vo.Member;
@Service 
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
		System.out.println("servieimpl : "+member.toString());

		return member;
	}

	public int save(Member member) {
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

	@Override
	public boolean validate(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Member login(String id, String pwd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public int delete(String id) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

	@Override
	public int updatePwd(Member loginMember, String userPwd) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int saveMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
