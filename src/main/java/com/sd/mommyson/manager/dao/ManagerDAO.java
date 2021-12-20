package com.sd.mommyson.manager.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.CategoryDTO;
import com.sd.mommyson.manager.dto.HotKeywordDTO;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.UserDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.ReportDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface ManagerDAO {

	List<ManagerDTO> selectManagers();

	List<MemberDTO> selectMember(Pagination pagination);

	int deleteMembers(List<Integer> deleteMemberList);

	List<AuthDTO> selectAuth();

	int updateAuth(Map<String, Object> map);

	int insertNewManager(Map<String, Object> map);

	Map<String, String> selectManagerByMemCode(int memCode);

	int deleteManager(List<String> list);

	public int selectNoticeTotalCount(Map<String, String> searchMap);

	public List<PostDTO> selectNoticeList(Pagination pagination);

	int idDupCheck(String memId);
	
	List<MemberDTO> blackMemberSelect(MemberDTO member);

	int memberAddBlack(List<Integer> memberAddBlackList);

	int selectNormalMemberTotalCount(Map<String, Object> searchMap);

	int postWriting(Map<String, Object> map);

	PostDTO selectNotice(int postNo);

	boolean selectNoticeCnt(int postNo);

	MemberDTO selectCeoDetailInfo(Map<String, Object> ceoDetailInfo);

	int updateTerminateBlack(Map<String, Object> terminateMap);
	
	int updateBlackCountReset(Map<String, Object> terminateMap);

	int updateRealReview(Map<String, Object> terminateMap);

	int selectReportTotalCount(Map<String, Object> searchMap);

	int noticeRevise(Map<String, Object> map);

	int deletePost(List<Integer> addPostDeleteList);

	int deleteSelectNotice(int postNo);

	int noticeUp(int postNo);

	List<PostDTO> selectNoticeUpList();

	int noticeDown(int postNo);
	
	List<Map<String, Object>> selectReportList(Pagination pagination);

	Map<String, Object> selectRepDetailView(Map<String, Object> repMap);

	int updateRepCompanion(Map<String, Integer> repComMap);

	int updateWarning(Map<String, Integer> warMap);
	
	int updateWarning2(Map<String, Integer> warMap);
	
	int updateWarning3(Map<String, Integer> warMap);

	int updateBlack(Map<String, Object> blackMap);

	int updateBlack2(Map<String, Object> blackMap);

	int updateBlack3(Map<String, Object> blackMap);

	List<Map<String, Object>> selectblackMemDetail(Map<String, Object> blackMemDetailMap);
	
	List<PostDTO> selectOftenQuestionList(Pagination pagination);

	int OftenQuestionTotalCount(Map<String, String> searchMap);

	int businessInquiryTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectBusinessInquiry(Pagination pagination);

	int normalInquiryTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectNormalInquiry(Pagination pagination);

	int insertBannerAdd(Map<String, Object> bnMap);

	List<TagDTO> selectUseTag();

	int insertTagAdd(String tag);

	int deleteTag(int tagNo);

	int updateUseTag(List<Integer> useTagNoList);

	int updateUnUseTag(List<Integer> unUseTagNoList);

	List<HotKeywordDTO> selectHotkeword();

	int updateHotkewordAdd(Map<String, Object> map);

	int updateHotkewordEdit(Map<String, Object> map);

	List<CategoryDTO> selectCategoryList();

	int insertCategory(String category);

	int deleteCategory(int categoryCode);

	int updateUseCategory(List<String> useCategoryCodeList);

	int updateUnUseCategory(List<String> unUseCategoryCodeList);

}
