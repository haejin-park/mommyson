package com.sd.mommyson.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface MemberDAO {

	public int selectAll();

	public MemberDTO selectMember(MemberDTO member);

	public String selectEncPassword(MemberDTO member);

	public List<HashMap<String, String>> selectLocation();

	public List<HashMap<String, String>> selectCategoryList();
	
	public MemberDTO selectOwner(MemberDTO member);

	public List<ManagerDTO> selectManagers(String memId);

	/*  아이디 중복검사 */
	public int idChk(String memId);

	/* 회원가입시 지역코드 조회 */
	public String locationCode(String locationName);

	/* 사용자 회원가입 */
	public void customerJoin(MemberDTO member) ;

	/* 아이디 찾기 */
	public String findId2(@Param("name") String name, @Param("email") String email);
	
	public void updateLastLogin(MemberDTO member);


	
}
