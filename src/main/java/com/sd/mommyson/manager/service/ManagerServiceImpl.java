package com.sd.mommyson.manager.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dao.ManagerDAO;
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
	public List<MemberDTO> memberSelect(MemberDTO member) {
		
		 List<MemberDTO> normalMemberList = managerDAO.memberSelect(member);
		
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

	public List<Pagination> selectNoticeList(Pagination pagination) {
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
	public boolean memberAddBlack(List<Integer> memberAddBlackList) {
		
		int result = managerDAO.memberAddBlack(memberAddBlackList);
		
		return result > 0? true : false;
	}
	
}
