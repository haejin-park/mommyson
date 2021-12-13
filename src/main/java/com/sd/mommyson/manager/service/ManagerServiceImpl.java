package com.sd.mommyson.manager.service;

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
   
   public int selectNoticeTotalCount(Map<String, String> searchMap) {
      return managerDAO.selectNoticeTotalCount(searchMap);
   }

   @Override
   public List<PostDTO> selectNoticeList(Pagination pagination) {
      return managerDAO.selectNoticeList(pagination);
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

	@Override
	public MemberDTO selectCeoDetailInfo(Map<String, Object> ceoDetailInfo) {
		
		MemberDTO ceoDetailInfos = managerDAO.selectCeoDetailInfo(ceoDetailInfo);
		
		return ceoDetailInfos;
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

   
}