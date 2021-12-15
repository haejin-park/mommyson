package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;

public interface MemberService  {


	public int selectAll();
	
	public MemberDTO selectMember(MemberDTO member);

	public List<HashMap<String, String>> selectLoation();

	public List<HashMap<String, String>> selectCategoryList();

	/*  아이디 중복 검사 */
	public int idChk(String memId);

	/* 이메일 중복 검사 */
	public int emailChk(String email); 
	
	
	/* 회원가입시 지역코드 조회 */
	public String locationCode(String locationName);
	
	
	/* 사용자 회원가입 */
	public void customerJoin(MemberDTO member) throws Exception;


	/* 아이디 찾기 */
	public String findIdCheck(MemberDTO dto);

	public List<TagDTO> selectTagList();

	public List<ProductDTO> selectProductList();

	public List<TagDTO> selectHotKeywordList();

	public List<StoreDTO> selectStoreList();


	

}
