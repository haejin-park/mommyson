package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.RTNoticeDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;

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
	
	/* 회원가입 이메일 인증 */ 
	public int registEmailCode(String num);
	
	/* 사용자 회원가입 */
	public int customerJoin(MemberDTO member) throws Exception;
	
	/* 아이디 찾기 */
	public String findIdCheck(MemberDTO mdto);

	/* 비밀번호 찾기(변경 화면으로 이동 하기 전단계) 이메일 인증 (기존 인증번호 업데이트 하기위해 이메일 같이 넘겨줌)*/
	public void updateEmailCode(HashMap<String, String> map);
	
	/* 비밀번호 변경하기 */
	public void modifyPwd(HashMap<String, String> map);

	public List<TagDTO> selectTagList();

	public List<ProductDTO> selectProductList();

	public List<TagDTO> selectHotKeywordList();

	public List<StoreDTO> selectStoreList();

	public List<RTNoticeDTO> selectRTNotice(int memCode);

	public int deleteNotice(int noticeCode);

}
