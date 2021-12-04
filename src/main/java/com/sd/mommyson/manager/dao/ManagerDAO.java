package com.sd.mommyson.manager.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface ManagerDAO {

	MemberDTO normalMemberSelect(MemberDTO member);

	List<AuthDTO> selectAuth();

	int updateAuth(Map<String, Object> map);

	int insertNewManager(Map<String, Object> map);

	Map<String, String> selectManagerByMemCode(int memCode);

}
