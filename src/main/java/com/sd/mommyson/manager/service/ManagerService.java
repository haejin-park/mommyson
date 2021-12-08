package com.sd.mommyson.manager.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

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

	/* 공지사항 리스트 */
	public List<PostDTO> selectNoticeList(Pagination pagination);

	public int idDupCheck(String memId);
	
	/* 블랙회원조회 */
	public List<MemberDTO> blackMemberSelect(MemberDTO member);
	
	/* 회원 블랙등록 */
	public boolean modifyMemberAddBlack(List<Integer> memberAddBlackList);

	/* 사업자 상세정보 조회 */
	public List<MemberDTO> selectCeoDetailInfo(Map<String, Object> ceoDetailInfo);


}
