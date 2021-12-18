package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.EmailCodeDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.RTNoticeDTO;
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
	

	
	/* 회원가입 이메일 인증 번호 전송 버튼을 눌러 이메일 주소와 인증번호와 저장 */
	@Override
	public int registEmailCode(HashMap<String, String> map) {
		
		int emailNum = memberDAO.registEmailCode(map);
		
		return emailNum;
	}
	
	

	/* 회원가입할 때 전송버튼 눌러 데이터베이스에 저장한 이메일 인증번호 조회해서 일치 여부 확인 */
	@Override
	public String codeCheck(String inputCode) {

		String email = memberDAO.codeCheck(inputCode);
		
		return email;
	}
	
	

	/* 회원가입시 지역코드 조회 */
	@Override
	public String locationCode(String locationName) {
		
		String result = memberDAO.locationCode(locationName);
		
		return result;
	}
	
	
	
	/* 사용자 회원가입 */
	@Override
	public int customerJoin(MemberDTO member) throws Exception{
		
		EmailCodeDTO dto = new EmailCodeDTO();
		System.out.println(dto);
		
		int result1 = memberDAO.customerJoin(member);
		System.out.println("result1 : " + result1);
		
		int result2;
		int result3;

		/* 사용자 회원가입 성공하면 MEMBER_TBL 의 memCode와 email을 select */
		if(result1 > 0) {

			int code = memberDAO.selectCode(dto);
			System.out.println("code : " + code);
			
			
			int memCode =	memberDAO.selectMemCode(member);
			System.out.println("memCode : " + memCode);
			
			String email = memberDAO.selectEmail(member);
			System.out.println("email : " + email);
			
			dto.setCode(code);
			dto.setMemCode(memCode);
			dto.setEmail(email);
			System.out.println(dto);
			
			
			/* 사용자 회원가입 성공하고 memCode가 조회가 되면 EMAIL_CODE_TBL의 memCode와 email을 MEMBER_TBL 의 memCode와 email로 업데이트 */
			if(memCode > 0) {
				result2 = memberDAO.updateMemCode(dto);
				System.out.println("result2 : " + result2);
			 }
			 
			if(email != "") {
				 result3 = memberDAO.updateEmail(dto);
				 System.out.println("result3 : " + result3);
			}
			
		}
		return result1;
	}
	

	/* 아이디 찾기 */
	@Override
	public String findIdCheck(MemberDTO mdto) {
		
		String member = memberDAO.findIdCheck(mdto);
	
		return member;
	}
	
	/* 비밀번호 찾기(변경 화면으로 이동 하기 전단계로 이메일 인증 필요, 기존 인증번호 새걸로 업데이트 하기 위해 이메일 같이 넘겨줌)*/
	@Override
	public void updateEmailCode(HashMap<String, String> map) {
		
		memberDAO.updateEmailCode(map);
		
		System.out.println("map : " + map);
	}

	
	/* 비밀번호 변경 화면이동을 위해 이메일 인증번호 조회하기 */
	@Override
	public int selectEmailCode(String email) {
		
		int emailCode = memberDAO.selectEmailCode(email);
		
		System.out.println("emailCode : " + emailCode);
		
		return emailCode;
	}

	
	/* 비밀번호 변경하기 */
	@Override
	public void modifyPwd(HashMap<String, String> map) {
		
		memberDAO.modifyPwd(map);
		
		System.out.println("map : " + map);
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


	@Override
	public List<StoreDTO> selectStoreList() {
		return memberDAO.selectStoreList();
	}

	@Override
	public List<RTNoticeDTO> selectRTNotice(int memCode) {
		return memberDAO.selectRTNotice(memCode);
	}

	@Override
	public int deleteNotice(int noticeCode) {
		return memberDAO.deleteNotice(noticeCode);
	}

}
