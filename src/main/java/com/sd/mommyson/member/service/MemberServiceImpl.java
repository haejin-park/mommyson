package com.sd.mommyson.member.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.LocationDTO;
import com.sd.mommyson.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	private final MemberDAO memberDAO;
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberDAO, BCryptPasswordEncoder passwordEncoder) {
		this.memberDAO = memberDAO;
		this.passwordEncoder = passwordEncoder;
	}
	
	@Override
	public int selectAll() {
		return memberDAO.selectAll();
	}

	@Override
	public MemberDTO selectMember(MemberDTO member) {
		
		MemberDTO loginMember = null;
		System.out.println(member);
		if(passwordEncoder.matches(member.getMemPwd(), memberDAO.selectEncPassword(member))) {
			loginMember = memberDAO.selectMember(member);
			System.out.println("들어왔음");
		}
		
		return loginMember;
	}

	@Override
	public List<HashMap<String, String>> selectLoation() {
		
		List<HashMap<String, String>> locationList = memberDAO.selectLocation();
		
		return locationList;
	}

	@Override
	public List<HashMap<String, String>> selectCategoryList() {
		
		List<HashMap<String, String>> categoryList = memberDAO.selectCategoryList();
		
		return categoryList;
	}

	
	/* 아이디 중복 검사 */
	@Override
	public int idChk(String memId){
		
		int result = memberDAO.idChk(memId);
		
		return result;
	}

	

	

}
