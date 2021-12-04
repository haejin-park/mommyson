package com.sd.mommyson.manager.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.AuthDTO;
import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface ManagerService {

	public MemberDTO normalMemberSelect(MemberDTO member);

	public List<ManagerDTO> selectManagers(String string);

	public List<AuthDTO> selectAuth();

	public int updateAuth(Map<String, Object> map);

	public int insertNewManager(Map<String, Object> map);

	public Map<String, String> selectManagerByMemCode(int memCode);

	public int deleteManager(List<String> list);
}
