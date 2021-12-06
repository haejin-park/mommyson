package com.sd.mommyson.manager.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface ManagerDAO {

	List<ManagerDTO> selectManagers();

	List<MemberDTO> memberSelect(MemberDTO member);

	int deleteMembers(List<Integer> deleteMemberList);

	List<AuthDTO> selectAuth();

	int updateAuth(Map<String, Object> map);

	int insertNewManager(Map<String, Object> map);

	Map<String, String> selectManagerByMemCode(int memCode);

	int deleteManager(List<String> list);

	public int selectNoticeTotalCount(Map<String, String> searchMap);

	public List<Pagination> selectNoticeList(Pagination pagination);

	int idDupCheck(String memId);
	
	List<MemberDTO> blackMemberSelect(MemberDTO member);

	int memberAddBlack(List<Integer> memberAddBlackList);

}
