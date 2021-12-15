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

	/* 아이디 중복 검사 */
	public int idChk(String memId);

	/* 이메일 중복 검사 */
	public int emailChk(String email); 
	
	/* 회원가입시 지역코드 조회 */
	public String locationCode(String locationName);
	
	/* 사용자 회원가입 */
	public void customerJoin(MemberDTO member) throws Exception;
	
	/* 회원가입 이메일 인증 */ 
	public int registEmailCode(String num);
	
	/* 사용자 회원가입 성공하면 MEMBER_TBL 의 memCode select */
	public int selectMemCode(int memCode);
	
	/* 사용자 회원가입 성공하면 EMAIL_CODE_TBL의 memCode MEMBER_TBL 의 memCode로 업데이트 */
	public void updateEmailVerificationMemCode(int memCode);
	
	/* 아이디 찾기 */
	public String findIdCheck(MemberDTO mdto);

	/* 비밀번호 찾기(변경 화면으로 이동 하기 전단계) 이메일 인증 */
	public int findPwdEmailCode(String num);
	
	/* 비밀번호 변경하기 */
	public void changePwd(Map<String, Object> map, MemberDTO dto) throws Exception;


	






}
