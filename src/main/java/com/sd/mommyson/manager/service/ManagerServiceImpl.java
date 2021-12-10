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
   public List<MemberDTO> selectSearchMemberList(String searchMember) {
      
      List<MemberDTO> searchMemberList = managerDAO.selectSearchMemberList(searchMember);
      
      return searchMemberList;
   }

   @Override
   public int selectNormalMemberTotalCount(Map<String, Object> searchMap) {
      return managerDAO.selectNormalMemberTotalCount(searchMap);
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
	 * 공지사항 작성
	 * @author junheekim
	 */
	@Override
	public int postWriting(Map<String, Object> map) {

		int result = managerDAO.postWriting(map);
		
		return result;
	}

	/**
	 * 공지사항 게시글 조회
	 * @author junheekim
	 */
	@Override
	public PostDTO selectNotice(int postNo) {
		
		System.out.println("포스트 2 : " + postNo);
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


   
}