package com.sd.mommyson.manager.service;

import java.util.List;

import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface ManagerService {

	public MemberDTO normalMemberSelect();

	public List<ManagerDTO> selectManagers();
}
