package com.sd.mommyson.member.service;

import java.util.HashMap;
import java.util.List;

import com.sd.mommyson.manager.dto.BannerDTO;
import com.sd.mommyson.member.dto.EmailCodeDTO;
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
	
	/* 회원가입 이메일 인증 번호 전송 버튼을 눌러 이메일 주소와 인증번호와 저장 */ 
	public int registEmailCode(HashMap<String, String> map);

	/* 회원가입할 때 전송버튼 눌러 데이터베이스에 저장한 이메일 인증번호 조회해서 일치 여부 확인 */
	public String codeCheck(String inputCode);
	
	/* 회원가입시 지역코드 조회 */
	public String locationCode(String locationName);
	
	/* 소비자 회원가입 */
	public int customerJoin(MemberDTO member) throws Exception;
	
	/* 사업자 회원가입 */
	public int businessJoin(HashMap<String, Object> ceoRegist) throws Exception;
	
	/* 아이디 찾기 */
	public String findIdCheck(MemberDTO mdto);

	/* 비밀번호 찾기(변경 화면으로 이동 하기 전단계) 이메일 인증 (기존 인증번호 업데이트 하기위해 이메일 같이 넘겨줌)*/
	public void updateEmailCode(HashMap<String, String> map);
	
	/* 비밀번호 변경 화면 이동을 위해 이메일 인증번호 조회하기 */
	public int selectEmailCode(String email);
	
	/* 비밀번호 변경하기 */
	public void modifyPwd(HashMap<String, String> map);

	public List<TagDTO> selectTagList();

	public List<ProductDTO> selectProductList();

	public List<TagDTO> selectHotKeywordList();

	public List<StoreDTO> selectStoreList();


	public List<RTNoticeDTO> selectRTNotice(int memCode);

	public int deleteNotice(int noticeCode);

	public int selectCartCount(int memCode);

	public List<BannerDTO> selectBanners();



}
