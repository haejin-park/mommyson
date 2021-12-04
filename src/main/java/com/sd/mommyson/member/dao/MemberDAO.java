package com.sd.mommyson.member.dao;

import java.util.HashMap;
import java.util.List;

import com.sd.mommyson.member.dto.ManagerDTO;
import com.sd.mommyson.member.dto.MemberDTO;

public interface MemberDAO {

	public int selectAll();

	public MemberDTO selectMember(MemberDTO member);

	public String selectEncPassword(MemberDTO member);

	public List<HashMap<String, String>> selectLocation();

	public List<HashMap<String, String>> selectCategoryList();
	
	public MemberDTO selectOwner(MemberDTO member);

	public List<ManagerDTO> selectManagers(String memId);
}
