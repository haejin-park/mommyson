package com.sd.mommyson.manager.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.UserDTO;
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

	MemberDTO selectCeoDetailInfo(Map<String, Object> ceoDetailInfo);

	int terminateBlack(List<Integer> blackMember);

	int selectReportTotalCount(Map<String, Object> searchMap);

	List<Map<String, Object>> selectReportList(Pagination pagination);

	Map<String, Object> selectRepDetailView(Map<String, Object> repMap);

	int updateRepCompanion(Map<String, Integer> repComMap);

	int updateWarning(Map<String, Integer> warMap);
	
	int updateWarning2(Map<String, Integer> warMap);
	
	int updateWarning3(Map<String, Integer> warMap);

	int updateBlack(Map<String, Object> blackMap);

	int updateBlack2(Map<String, Object> blackMap);

	int updateBlack3(Map<String, Object> blackMap);



}
