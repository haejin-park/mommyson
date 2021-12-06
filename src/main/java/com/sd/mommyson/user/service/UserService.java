package com.sd.mommyson.user.service;

import java.util.List;

import com.sd.mommyson.user.dto.PostDTO;

public interface UserService {

	List<PostDTO> selectNotice();

}
