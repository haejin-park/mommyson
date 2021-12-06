package com.sd.mommyson.user.dao;

import java.util.List;

import com.sd.mommyson.manager.dto.PostDTO;

public interface UserDAO {

	List<PostDTO> selectNotice();

}
