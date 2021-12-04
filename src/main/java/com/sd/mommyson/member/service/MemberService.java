package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;

import com.sd.mommyson.member.dto.LocationDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface MemberService  {


	public int selectAll();
	
	public MemberDTO selectMember(MemberDTO member);

	public List<HashMap<String, String>> selectLoation();

	public List<HashMap<String, String>> selectCategoryList();

	/*  아이디 중복검사 */
	public int idChk(String memId);

}
