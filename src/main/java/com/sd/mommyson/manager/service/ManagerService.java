package com.sd.mommyson.manager.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.CategoryDTO;
import com.sd.mommyson.manager.dto.FileDTO;
import com.sd.mommyson.manager.dto.HotKeywordDTO;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.manager.dto.TaxAdjustDTO;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.TagDTO;

public interface ManagerService {

	/* 회원조회 */
	public List<MemberDTO> selectMember(Pagination pagination);
	
	/* 회원 총 리스트 갯수 */
	public int selectNormalMemberTotalCount(Map<String, Object> searchMap);

	/* 회원삭제 */
	public boolean deleteMembers(List<Integer> deleteMemberList);
	
	public List<ManagerDTO> selectManagers(String string);

	public List<AuthDTO> selectAuth();

	public int updateAuth(Map<String, Object> map);

	public int insertNewManager(Map<String, Object> map);

	public Map<String, String> selectManagerByMemCode(int memCode);

	public int deleteManager(List<String> list);
	
	/* 공지사항 총 게시글 갯수 */
	public int selectNoticeTotalCount(Map<String, String> searchMap);


	public int idDupCheck(String memId);
	
	/* 블랙회원조회 */
	public List<MemberDTO> blackMemberSelect(MemberDTO member);
	
	/* 회원 블랙등록 */
	public boolean modifyMemberAddBlack(List<Integer> memberAddBlackList);

	/* 사업자 상세정보 조회 */
	public MemberDTO selectCeoDetailInfo(Map<String, Object> ceoDetailInfo);

	/* 블랙해지 */
	public boolean updateTerminateBlack(Map<String, Object> terminateMap);

	/* 신고된 리뷰 총 갯수 */
	public int selectReportTotalCount(Map<String, Object> searchMap);

	/* 공지사항 리스트 */
	public List<PostDTO> selectNoticeList(Pagination pagination);
	
	/* 공지사항 작성 */
	public int postWriting(Map<String, Object> map);

	/* 공지사항 게시글 */
	public PostDTO selectNotice(int postNo);

	/* 공지사항 게시글 조회수 */
	public boolean selectNoticeCnt(int postNo);

	/* 공지사항 게시글 수정 */
	public int postRevise(Map<String, Object> map);

	/* 공지사항 게시글 삭제(선택박스) */
	public boolean deletePost(List<Integer> addPostDeleteList);

	/* 공지사항 게시글 삭제(상세조회) */
	public boolean deleteSelectNotice(int postNo);

	/* 공지사항 상단 up */
	public boolean noticeUp(int postNo);

	/* 공지사항 상단 게시글 리스트 */
	public List<PostDTO> selectNoticeUpList();
	
	/* 신고된 리뷰 조회 */
	public List<Map<String, Object>> selectReportList(Pagination pagination);

	/* 신고된 리뷰 상세 조회 */
	public Map<String, Object> selectRepDetailView(Map<String, Object> repMap);

	/* 신고된 리뷰 반려처리 */
	public boolean updateRepCompanion(Map<String, Integer> repComMap);

	/* 신고된 리뷰 경고 주기*/
	public boolean updateWarning(Map<String, Integer> warMap);

	/* 신고된 해당 리뷰 작성자 블랙등록 */
	public boolean updateBlack(Map<String, Object> blackMap);

	/* 공지사항 상단 down */
	public boolean noticeDown(int postNo);

	/* 블랙회원 상세정보 */
	public List<Map<String, Object>> selectblackMemDetail(Map<String, Object> blackMemDetailMap);
	
	/* 자주묻는질문 리스트 */
	public List<PostDTO> selectOftenQuestionList(Pagination pagination);

	/* 자주묻는질문 총 게시글 갯수 */
	public int OftenQuestionTotalCount(Map<String, String> searchMap);

	/* 사업자 - 1:1 문의 총 갯수 */
	public int businessInquiryTotalCount(Map<String, String> searchMap);

	/* 사업자 - 1:1 문의 리스트 */
	public List<PostDTO> selectBusinessInquiry(Pagination pagination);

	/* 사업자 - 1:1 문의 게시글 조회  */
	public PostDTO selectBusinessPost(int postNo);

	/* 사업자 - 1:1 문의 이미지 파일 조회 */
	public List<FileDTO> selectBusinessImg(int postNo);
	
	/* 관리자 - 1:1 문의 이미지 파일 조회 */
	public List<FileDTO> selectAnswerImg(int postNo);
	
	/* 관리자 - 1:1 문의 답변 파일 등록 */
	public int registBusinessFile(Map<String, Object> registFile);
	
	/* 관리자 - 1:1 문의 답변 등록 */
	public int registBusinessAnswer(Map<String, Object> registInfo);
	
	/* 관리자 - 1:1 문의 답변 파일 수정 */
	public int updateBusinessFile(Map<String, Object> updateFile);

	/* 관리자 - 1:1 문의 답변 수정 */
	public int updateBusinessAnswer(Map<String, Object> updateInfo);

	/* 소비자 - 1:1 문의 총 갯수 */
	public int normalInquiryTotalCount(Map<String, String> searchMap);

	/* 소비자 - 1:1 문의 리스트 */
	public List<PostDTO> selectNormalInquiry(Pagination pagination);

	/* 소비자 - 1:1 문의 게시글 조회  */
	public PostDTO selectNormalPost(int postNo);

	/* 소비자 - 1:1 문의 이미지 파일 조회 */
	public List<FileDTO> selectNormalImg(int postNo);
	
	/* 관리자 - 1:1 문의 답변 파일 등록 */
	public int registNormalFile(Map<String, Object> registfile);

	/* 관리자 - 1:1 문의 답변 등록 */
	public int registNormalAnswer(Map<String, Object> registInfo);
	
	/* 배너추가 */
	public int insertBannerAdd(Map<String, Object> bnMap);

	/* 사용중인 태그 조회 */
	public List<TagDTO> selectUseTag();

	/* 태그 추가 */
	public int insertTagAdd(String tag);

	/* 태그 삭제 */
	public int deleteTag(int tagNo);

	/* 사용 태그로 등록하기 */
	public int updateUseTag(List<Integer> useTagNoList);

	/* 미사용 태그로 등록하기 */
	public int updateUnUseTag(List<Integer> unUseTagNoList);

	/* 핫 키워드 조회 */
	public List<HotKeywordDTO> selectHotkeword();

	/* 핫 키워드 등록 */
	public int updateHotkewordAdd(List<Map<String, Object>> hotkewordList);

	/* 핫 키워드 수정 */
	public int updateHotkewordEdit(List<Map<String, Object>> hotkewordEditList);

	/* 카테고리 조회 */
	public List<CategoryDTO> selectCategoryList();

	/* 카테고리 추가 */
	public int insertCategory(String category);

	/* 카테고리 삭제 */
	public int deleteCategory(int categoryCode);

	/* 사용 카테고리로 등록 */
	public int updateUseCategory(List<String> useCategoryCodeList);

	/* 미사용 카테고리로 등록 */
	public int updateUnUseCategory(List<String> unUseCategoryCodeList);

	public List<TaxAdjustDTO> selectTaxAdjustListList(Map<String, Object> map);

	public int selectTaxAdjustTotalCount(Map<String, Object> searchMap);

	public List<TaxAdjustDTO> selectTaxList(List<String> list);

}
