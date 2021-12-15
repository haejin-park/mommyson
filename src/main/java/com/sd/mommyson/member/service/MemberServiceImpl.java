package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	@Autowired
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
			if(loginMember.getMemType().equals("manager")) {
				memberDAO.updateLastLogin(member);
				loginMember = memberDAO.selectMember(member);
			} else {
				loginMember = memberDAO.selectMember(member);
			}
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
	
	/* 이메일 중복검사 */
	@Override
	public int emailChk(String email) {
		
		int result = memberDAO.emailChk(email);
		
		return result;
	}
	
	/* 회원가입시 지역코드 조회 */
	@Override
	public String locationCode(String locationName) {
		
		String result = memberDAO.locationCode(locationName);
		
		return result;
	}
	
	

	/* 사용자 회원가입 */
	@Override
	public void customerJoin(MemberDTO member) throws Exception{
		
		memberDAO.customerJoin(member);
		
	}

	
	/* 회원가입시 이메일 인증 */ 
	@Override
	public int registEmailCode(String num) {
		
		int emailNum = memberDAO.registEmailCode(num);
		return emailNum;
	}

	
	/* 사용자 회원가입 성공하면 EMAIL_CODE_TBL의 memCode MEMBER_TBL 의 memCode로 업데이트 */
	@Override
	public void updateEmailVerificationMemCode(MemberDTO member) {
		memberDAO.updateEmailVerificationMemCode(member);
	}

	
	/* 아이디 찾기 */
	@Override
	public String findIdCheck(MemberDTO mdto) {
		
		String member = memberDAO.findIdCheck(mdto);
	
		return member;
	}

	@Override
	public List<TagDTO> selectTagList() {
		return memberDAO.selectTagList();
	}

	@Override
	public List<ProductDTO> selectProductList() {
		return memberDAO.selectProductList();
	}

	@Override
	public List<TagDTO> selectHotKeywordList() {
		return memberDAO.selectHotKeywordList();
	}

	/* 비밀번호 찾기(변경 화면으로 이동 하기 전단계) 이메일 인증 */
	@Override
	public int findPwdEmailCode(String num) {
		int emailNum = memberDAO.findPwdEmailCode(num);
		return emailNum;
	}
	
	/* 비밀번호 변경하기 */
	@Override
	public void changePwd(Map<String, Object> map, MemberDTO dto) throws Exception {
		memberDAO.changePwd(map, dto);
	}

	@Override
	public List<StoreDTO> selectStoreList() {
		return memberDAO.selectStoreList();
	}

}
