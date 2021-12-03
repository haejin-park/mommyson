package com.sd.mommyson.manager.dao;

import java.util.List;

import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface ManagerDAO {

	List<ManagerDTO> selectManagers();

	MemberDTO normalMemberSelect(MemberDTO member);

}
