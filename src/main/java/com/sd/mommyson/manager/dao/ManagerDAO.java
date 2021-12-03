package com.sd.mommyson.manager.dao;

import java.util.List;

import com.sd.mommyson.member.dto.ManagerDTO;

public interface ManagerDAO {

	List<ManagerDTO> selectManagers();

}
