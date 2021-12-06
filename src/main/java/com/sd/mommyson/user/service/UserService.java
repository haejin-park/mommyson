package com.sd.mommyson.user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.sd.mommyson.user.dto.PostDTO;

public interface UserService {

	List<PostDTO> selectNotice();

	int selectTotalCount(HttpSession session, Map<String, String> searchMap);

}
