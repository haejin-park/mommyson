package com.sd.mommyson.manager.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dao.ManagerDAO;
import com.sd.mommyson.manager.dto.BannerDTO;
import com.sd.mommyson.manager.dto.CategoryDTO;
import com.sd.mommyson.manager.dto.HotKeywordDTO;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

import com.sd.mommyson.member.dto.UserDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.user.dto.ReportDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

@Service
public class ManagerServiceImpl implements ManagerService {

   private ManagerDAO managerDAO;
   private MemberDAO memberDAO;
   
   @Autowired
   public ManagerServiceImpl(ManagerDAO managerDAO, MemberDAO memberDAO) {
      this.managerDAO = managerDAO;
      this.memberDAO = memberDAO;
   }
   
   /**
    * 회원조회
    * @author leeseungwoo
    */
   @Override
   public List<MemberDTO> selectMember(Pagination pagination) {
      
       List<MemberDTO> normalMemberList = managerDAO.selectMember(pagination);
      
      return normalMemberList;
   }

   @Override
   public List<ManagerDTO> selectManagers(String memId) {
      
      List<ManagerDTO> managerList = memberDAO.selectManagers(memId);
      
      return managerList;
   }

   /**
    * 일반회원삭제
    * @author leeseungwoo
    */
   @Override
   public boolean deleteMembers(List<Integer> deleteMemberList) {
      
      int result = managerDAO.deleteMembers(deleteMemberList);
      
      return result > 0? true : false;
   }

   public List<AuthDTO> selectAuth() {
      List<AuthDTO> authList = managerDAO.selectAuth();
      return authList;
   }

   @Override
   public int updateAuth(Map<String, Object> map) {
      int result = managerDAO.updateAuth(map);
      return result;
   }

   @Override
   public int insertNewManager(Map<String, Object> map) {
      int result = managerDAO.insertNewManager(map);
      return result;
   }

   @Override
   public Map<String, String> selectManagerByMemCode(int memCode) {
      Map<String, String> map = managerDAO.selectManagerByMemCode(memCode);
      return map;
   }

   @Override
   public int deleteManager(List<String> list) {
      int result = managerDAO.deleteManager(list);
      return result;
   }

   @Override
   public int idDupCheck(String memId) {
      int count = managerDAO.idDupCheck(memId);
      return count;
   }

   /**
    * 블랙 회원 조회
    * @author leeseungwoo
    */
   @Override
   public List<MemberDTO> blackMemberSelect(MemberDTO member) {
      
      List<MemberDTO> blackMemberList = managerDAO.blackMemberSelect(member);
      
      return blackMemberList;
   }
   
   /**
	 * 블랙회원 상세정보
	 * @author leeseungwoo
	 */
	@Override
	public List<Map<String, Object>> selectblackMemDetail(Map<String, Object> blackMemDetailMap) {
		
		return managerDAO.selectblackMemDetail(blackMemDetailMap);
	}

   /**
    * 블랙추가
    * @author leeseungwoo
 	*/
   @Override
   public boolean modifyMemberAddBlack(List<Integer> memberAddBlackList) {
      
      int result = managerDAO.memberAddBlack(memberAddBlackList);
      
      return result > 0? true : false;
   }

   /**
    * 회원 총 인원 수
   	* @author leeseungwoo
   	*/
   	@Override
   	public int selectNormalMemberTotalCount(Map<String, Object> searchMap) {
      return managerDAO.selectNormalMemberTotalCount(searchMap);
   	}

	/**
	 * 블랙해지
	 * @author leeseungwoo
	 */
	@Override
	public boolean updateTerminateBlack(Map<String, Object> terminateMap) {
		
		/* 회원 상태값 변경 */
		int result = managerDAO.updateTerminateBlack(terminateMap);
		/* 경고 초기화 */
		int result2 = managerDAO.updateBlackCountReset(terminateMap);
		/* 회원이 작성했던 리뷰 완전 삭제 */
		int result3 = managerDAO.updateRealReview(terminateMap);
		
		return result + result2 + result3 > 2? true : false;
	}

	/**
	 * 신고된 리뷰 총 갯수
	 * @author leeseungwoo
	 */
	@Override
	public int selectReportTotalCount(Map<String, Object> searchMap) {
		
		return managerDAO.selectReportTotalCount(searchMap);
	}

	/**
	 * 사업자 상세정보
	 * @author leeseungwoo
	 */
	@Override
	public MemberDTO selectCeoDetailInfo(Map<String, Object> ceoDetailInfo) {
		
		MemberDTO ceoDetailInfos = managerDAO.selectCeoDetailInfo(ceoDetailInfo);
		
		return ceoDetailInfos;
	}

	   
   /**
	* 공지사항 게시글 총 갯수
	* @author junheekim
	*/
	public int selectNoticeTotalCount(Map<String, String> searchMap) {
	      return managerDAO.selectNoticeTotalCount(searchMap);
	   }
	
   /**
    * 공지사항 리스트 조회
    * @author junheekim
    */
   @Override
   public List<PostDTO> selectNoticeList(Pagination pagination) {
      return managerDAO.selectNoticeList(pagination);
   }

	/**
	 * 신고된 리뷰 조회
	 * @author leeseungwoo
	 */
	@Override
	public List<Map<String, Object>> selectReportList(Pagination pagination) {
		
		List<Map<String, Object>> selectReportList = managerDAO.selectReportList(pagination);
		
		return selectReportList;
	}

	/**
	 * 신고된 리뷰 상세 조회
	 * @author leeseungwoo
	 */
	@Override
	public Map<String, Object> selectRepDetailView(Map<String, Object> repMap) {
		
		Map<String, Object> reportInfo = managerDAO.selectRepDetailView(repMap);
		
		return reportInfo;
	}

	/**
	 * 신고된 리뷰 반려처리
	 * @author leeseungwoo
	 */
	@Override
	public boolean updateRepCompanion(Map<String, Integer> repComMap) {
		
		return managerDAO.updateRepCompanion(repComMap) > 0? true : false;
	}

	/**
	 * 신고된 리뷰 경고 주기
	 * @author leeseungwoo
	 */
	@Override
	public boolean updateWarning(Map<String, Integer> warMap) {
		
		int result = managerDAO.updateWarning(warMap);
		int result2 = managerDAO.updateWarning2(warMap);
		int result3 = managerDAO.updateWarning3(warMap);
		
		return result + result2 + result3 > 2? true : false;
	}

	/**
	 * 신고된 해당 리뷰 작성자 블랙등록
	 * @author leeseungwoo
	 */
	@Override
	public boolean updateBlack(Map<String, Object> blackMap) {
		
		int result = managerDAO.updateBlack(blackMap);
		int result2 = managerDAO.updateBlack2(blackMap);
		int result3 = managerDAO.updateBlack3(blackMap);
		
		return result + result2 + result3 > 2? true : false;
	}

   
	/**
	 * 공지사항 작성
	 * @author junheekim
	 */
	@Override
	public int postWriting(Map<String, Object> map) {

		int result = managerDAO.postWriting(map);
		
		return result;
	}

	/**
	 * 공지사항/자주묻는질문 게시글 조회
	 * @author junheekim
	 */
	@Override
	public PostDTO selectNotice(int postNo) {
		
		PostDTO selectNotice = managerDAO.selectNotice(postNo);
		
		return selectNotice;
	}

	
	/**
	 * 공지사항 게시글 조회수
	 * @author junheekim
	 */
	@Override
	public boolean selectNoticeCnt(int postNo) {
		
		return managerDAO.selectNoticeCnt(postNo);
	}

	/**
	 * 공지사항 게시글 수정
	 * @author junheekim
	 */
	@Override
	public int postRevise(Map<String, Object> map) {
		
		int result = managerDAO.noticeRevise(map);
		
		return result;
	}

	/**
	 * 공지사항/자주묻는질문 게시글 삭제(선택박스)
	 * @author junheekim
	 */
	@Override
	public boolean deletePost(List<Integer> addPostDeleteList) {
		
		int result = managerDAO.deletePost(addPostDeleteList);
		
		return result > 0? true : false;
	}

	/**
	 * 공지사항 게시글 삭제
	 * @author junheekim
	 */
	@Override
	public boolean deleteSelectNotice(int postNo) {
		
		int result = managerDAO.deleteSelectNotice(postNo);
		
		return result > 0? true : false;
	}

	/**
	 * 공지사항 게시글 상단 고정(up)
	 * @author junheekim
	 */
	@Override
	public boolean noticeUp(int postNo) {
		
		int result = managerDAO.noticeUp(postNo);
		
		return result > 0? true : false;
	}

	/**
	 * 공지사항 상단 고정 리스트
	 * @author junheekim
	 */
	@Override
	public List<PostDTO> selectNoticeUpList() {
		
		return managerDAO.selectNoticeUpList();
	}

	/**
	 * 공지사항 게시글 상단 고정 해제(down)
	 * @author junheekim
	 */
	@Override
	public boolean noticeDown(int postNo) {
		
		int result = managerDAO.noticeDown(postNo);
		
		return result > 0? true : false;
	}

	/**
	 * 자주 묻는 질문 게시글 총 갯수
	 * @author junheekim
	 */
	@Override
	public int OftenQuestionTotalCount(Map<String, String> searchMap) {
		
		return managerDAO.OftenQuestionTotalCount(searchMap);
	}
	
	/**
	 * 자주 묻는 질문 리스트
	 * @author junheekim
	 */
	@Override
	public List<PostDTO> selectOftenQuestionList(Pagination pagination) {
		
		return managerDAO.selectOftenQuestionList(pagination);
	}

	/**
	 * 사업자 - 1:1 문의 총 갯수
	 * @author junheekim
	 */
	@Override
	public int businessInquiryTotalCount(Map<String, String> searchMap) {
	
		return managerDAO.businessInquiryTotalCount(searchMap);
	}

	/**
	 * 사업자 - 1:1 문의 리스트
	 * @author junheekim
	 */
	@Override
	public List<PostDTO> selectBusinessInquiry(Pagination pagination) {
		
		return managerDAO.selectBusinessInquiry(pagination);
	}

	/**
	 * 소비자 - 1:1 문의 총 갯수
	 * @author junheekim
	 */
	@Override
	public int normalInquiryTotalCount(Map<String, String> searchMap) {
		
		return managerDAO.normalInquiryTotalCount(searchMap);
	}

	/**
	 * 소비자 - 1:1 문의 리스트
	 * @author junheekim
	 */
	@Override
	public List<PostDTO> selectNormalInquiry(Pagination pagination) {
		
		return managerDAO.selectNormalInquiry(pagination);
	}
	
	/**
	 * 배너조회
	 * @author leeseungwoo
	 */
	@Override
	public List<BannerDTO> selectBanner() {
		
		return managerDAO.selectBanner();
	}
	
	/** 
	 * 배너추가
	 * @author leeseungwoo
	 */
	@Override
	public int insertBannerAdd(Map<String, Object> bnMap) {
		
		int result = managerDAO.insertBannerAdd(bnMap);
		
		return result;
	}
	
	/**
	 * 배너수정 페이지
	 * @author leeseungwoo 
	 */
	@Override
	public BannerDTO selectBannerEditView(int bnCode) {
		
		return managerDAO.selectBannerEditView(bnCode);
	}
	
	/**
	 * 배너수정
	 * @author leeseungwoo
	 */
	@Override
	public int updateBanner(Map<String, Object> bnMap) {
		
		int result = managerDAO.updateBanner(bnMap);
		
		return result;
	}
	
	/**
	 * 배너삭제
	 * @author leeseungwoo
	 */
	@Override
	public int deleteBanner(List<String> chkBannerList) {
		
		int result = managerDAO.deleteBanner(chkBannerList);
		
		return result;
	}

	/**
	 * 사용중인 태그 조회
	 * @author leeseungwoo
	 */
	@Override
	public List<TagDTO> selectUseTag() {
		
		return managerDAO.selectUseTag();
	}

	/**
	 * 태그 추가
	 * @author leeseungwoo
	 */
	@Override
	public int insertTagAdd(String tag) {
		
		int result = managerDAO.insertTagAdd(tag);
		
		return result;
	}

	/**
	 * 태그 삭제
	 * @author leeseungwoo
	 */
	@Override
	public int deleteTag(int tagNo) {
		
		int result = managerDAO.deleteTag(tagNo);
		
		return result;
	}

	/**
	 * 사용 태그로 등록하기
	 * @author leeseungwoo
	 */
	@Override
	public int updateUseTag(List<Integer> useTagNoList) {
		
		int result = managerDAO.updateUseTag(useTagNoList);
		
		return result;
	}

	/**
	 * 미사용 태그로 등록하기
	 * @author leeseungwoo
	 */
	@Override
	public int updateUnUseTag(List<Integer> unUseTagNoList) {
		
		int result = managerDAO.updateUnUseTag(unUseTagNoList);
		
		return result;
	}

	/**
	 * 핫 키워드 조회
	 * @author leeseungwoo
	 */
	@Override
	public List<HotKeywordDTO> selectHotkeword() {
		
		return managerDAO.selectHotkeword();
	}

	/**
	 * 핫 키워드 등록
	 * @author leeseungwoo
	 */
	@Override
	public int updateHotkewordAdd(List<Map<String, Object>> hotkewordList) {
		
		int result = 0;
		for(int i = 0; i < hotkewordList.size(); i++) {
			result += managerDAO.updateHotkewordAdd(hotkewordList.get(i));
		}
		
		return result;
	}

	/**
	 * 핫 키워드 수정
	 * @author leeseungwoo
	 */
	@Override
	public int updateHotkewordEdit(List<Map<String, Object>> hotkewordEditList) {
		
		int result = 0;
		for(int i = 0; i < hotkewordEditList.size(); i++) {
			result += managerDAO.updateHotkewordEdit(hotkewordEditList.get(i));
		}
		
		return result;
	}

	/**
	 * 카테고리 조회
	 * @author leeseungwoo
	 */
	@Override
	public List<CategoryDTO> selectCategoryList() {
		
		return managerDAO.selectCategoryList();
	}

	/**
	 * 카테고리 추가
	 * @author leeseungwoo
	 */
	@Override
	public int insertCategory(String category) {
		
		int result = managerDAO.insertCategory(category);
		
		return result;
	}

	/**
	 * 카테고리 삭제
	 * @author leeseungwoo
	 */
	@Override
	public int deleteCategory(int categoryCode) {
		
		int result = managerDAO.deleteCategory(categoryCode);
		
		return result;
	}

	/**
	 * 사용 카테고리로 등록
	 * @author leeseungwoo
	 */
	@Override
	public int updateUseCategory(List<String> useCategoryCodeList) {
		
		int result = managerDAO.updateUseCategory(useCategoryCodeList);
		
		return result;
	}

	/**
	 * 미사용 카테고리로 등록
	 * @author leeseungwoo
	 */
	@Override
	public int updateUnUseCategory(List<String> unUseCategoryCodeList) {
		
		int result = managerDAO.updateUnUseCategory(unUseCategoryCodeList);
		
		return result;
	}

	/**
	 * 일반회원 인원수
	 * @author leeseungwoo
	 */
	@Override
	public int selectUserTotalCount(Map<String, Object> searchMap) {
		
		return managerDAO.selectUserTotalCount(searchMap);
	}

	/**
	 * 일반회원 조회
	 */
	@Override
	public List<MemberDTO> selectUser(Pagination pagination) {
		
		return managerDAO.selectUser(pagination);
	}

	/**
	 * 일반회원 총 주문금액 조회
	 */
	@Override
	public List<OrderDTO> selectTotalPrice(int memCode) {
		
		return managerDAO.selectTotalPrice(memCode);
	}



}