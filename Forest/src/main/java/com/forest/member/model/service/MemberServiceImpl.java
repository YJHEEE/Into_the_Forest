package com.forest.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.forest.model.dao.MemberDao;
import com.forest.model.dao.MountDao;
import com.forest.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;

	@Override
	public int getMemberCount() {
		int count = dao.getMemeberCount();

		return count;
	}

	@Override
	public List<Member> findAll() {
		List<Member> list = dao.findAll();

		return list;
	}

	@Override
	public Member login(String id, String pwd) {
		Member member = this.findMemberById(id);

		if (id.equals("admin")) {
			return member;
		}

		if (member != null && (member.getPw().equals(pwd) == true)) {
			return member;
		} else {
			return null;
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		result = dao.insertMember(member);

		return result;
	}

	@Override
	public boolean validate(String memberId) {
		return this.findById(memberId) != null;
	}

	@Override
	public Member findMemberById(String id) {
		Member member = dao.findMemberById(id);

		return member;
	}

	@Override
	public int deleteMember(String memberId) {
		int result = 0;

		result = dao.deleteMember(memberId);

		return result;
	}

	@Override
	public int updateMember(Member member) {
		int result = 0;
		result = dao.updateMember(member);

		return result;
	}

	@Override
	public int saveMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updatePwd(Member loginMember, String userPwd) {
		// TODO Auto-generated method stub
		return 0;
	}

}
