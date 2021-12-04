package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.MemberDTO;

public interface MemberService  {


	public int selectAll();
	
	public MemberDTO selectMember(MemberDTO member);

	public List<HashMap<String, String>> selectLoation();

	public List<HashMap<String, String>> selectCategoryList();

	/*  아이디 중복검사 */
	public int idChk(String memId);
	
	
	/* 회원 가입 */
//	public void join(Map<String, Object>map, MemberDTO dto);

	/* 회원 인증 */
//	public void authentication(MemberDTO dto);
}
