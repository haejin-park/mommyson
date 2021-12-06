package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
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

	/* 회원가입시 지역코드 조회 */
	@Override
	public String locationCode(String locationName) {
		String result = memberDAO.locationCode(locationName);
		return result;
	}
	
	

	/* 사용자 회원가입 */
//	@Override
//	public void customerJoin(Map<String, Object>map, MemberDTO dto) {
//		memberDAO.customerJoin(map,dto);
//	}

}
