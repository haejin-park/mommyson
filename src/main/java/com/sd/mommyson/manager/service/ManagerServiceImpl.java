package com.sd.mommyson.manager.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.dao.ManagerDAO;
import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

@Service
public class ManagerServiceImpl implements ManagerService {

	private ManagerDAO managerDAO;
	
	public ManagerServiceImpl(ManagerDAO managerDAO) {
		this.managerDAO = managerDAO;
	}
	
	@Override
	public List<MemberDTO> normalMemberSelect(MemberDTO member) {
		
		List<MemberDTO> normalMemberList = null;
		
		normalMemberList = managerDAO.normalMemberSelect(member);
		
		return normalMemberList;
	}

	@Override
	public List<ManagerDTO> selectManagers() {
		
		List<ManagerDTO> managerList = managerDAO.selectManagers();
		
		return managerList;
	}

	@Override
	public boolean deleteMembers(List<Integer> deleteMemberList) {
		
		int result = managerDAO.deleteMembers(deleteMemberList);
		
		return result > 0? true : false;
	}

//	@Override
//	public boolean deleteMembers(int[] deleteMember) {
//		
//		int[] result = managerDAO.deleteMembers(deleteMember);
//		
//		return result.length > 0? true : false;
//	}

	
}
