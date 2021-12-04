package com.sd.mommyson.manager.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dao.ManagerDAO;
import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;

public class ManagerServiceImpl implements ManagerService {

	private MemberDAO memberDAO;
	private ManagerDAO managerDAO;
	
	public ManagerServiceImpl(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@Override
	public MemberDTO normalMemberSelect() {
		return null;
	}

	@Override
	public int selectNoticeTotalCount(Map<String, String> searchMap) {
		return managerDAO.selectNoticeTotalCount(searchMap);
	}

	@Override
	public List<Pagination> selectNoticeList(Pagination pagination) {
		return managerDAO.selectNoticeList(pagination);
	}

	
}
