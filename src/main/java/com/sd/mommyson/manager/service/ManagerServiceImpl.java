package com.sd.mommyson.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.dao.ManagerDAO;
import com.sd.mommyson.member.dao.MemberDAO;
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
	
	@Override
	public MemberDTO normalMemberSelect(MemberDTO member) {
		
		MemberDTO normalMemberList = null;
		
		normalMemberList = managerDAO.normalMemberSelect(member);
		
		return null;
	}

	@Override
	public List<ManagerDTO> selectManagers() {
		
		List<ManagerDTO> managerList = memberDAO.selectManagers();
		
		return managerList;
	}

	
}
