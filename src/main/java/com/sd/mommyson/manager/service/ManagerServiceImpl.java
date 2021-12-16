package com.sd.mommyson.manager.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dao.ManagerDAO;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

import com.sd.mommyson.member.dto.UserDTO;
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

   public List<MemberDTO> blackMemberSelect(MemberDTO member) {
      
      List<MemberDTO> blackMemberList = managerDAO.blackMemberSelect(member);
      
      return blackMemberList;
   }

   @Override
   public boolean modifyMemberAddBlack(List<Integer> memberAddBlackList) {
      
      int result = managerDAO.memberAddBlack(memberAddBlackList);
      
      return result > 0? true : false;
   }

   @Override
   public int selectNormalMemberTotalCount(Map<String, Object> searchMap) {
      return managerDAO.selectNormalMemberTotalCount(searchMap);
   }

	/**
	 * 블랙해지
	 */
	@Override
	public boolean terminateBlack(List<Integer> blackMember) {
		
		int result = managerDAO.terminateBlack(blackMember);
		
		return result > 0? true : false;
	}

	/**
	 * 신고된 리뷰 총 갯수
	 */
	@Override
	public int selectReportTotalCount(Map<String, Object> searchMap) {
		
		return managerDAO.selectReportTotalCount(searchMap);
	}

	@Override
	public List<MemberDTO> selectSearchMemberList(String searchMember) {
		// TODO Auto-generated method stub
		return null;
	}

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
	 */
	@Override
	public List<Map<String, Object>> selectReportList(Pagination pagination) {
		
		List<Map<String, Object>> selectReportList = managerDAO.selectReportList(pagination);
		
		return selectReportList;
	}

	/**
	 * 신고된 리뷰 상세 조회
	 */
	@Override
	public Map<String, Object> selectRepDetailView(Map<String, Object> repMap) {
		
		Map<String, Object> reportInfo = managerDAO.selectRepDetailView(repMap);
		
		return reportInfo;
	}

	/**
	 * 신고된 리뷰 반려처리
	 */
	@Override
	public boolean updateRepCompanion(Map<String, Integer> repComMap) {
		
		return managerDAO.updateRepCompanion(repComMap) > 0? true : false;
	}

	/**
	 * 신고된 리뷰 경고 주기
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



}