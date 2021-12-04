package com.sd.mommyson.manager.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.member.dto.MemberDTO;

public interface ManagerService {

	public MemberDTO normalMemberSelect();
	
	/* 공지사항 총 게시글 갯수 */
	public int selectNoticeTotalCount(Map<String, String> searchMap);

	/* 공지사항 리스트 */
	public List<Pagination> selectNoticeList(Pagination pagination);

}
