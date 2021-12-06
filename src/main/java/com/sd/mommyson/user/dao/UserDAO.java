package com.sd.mommyson.user.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.sd.mommyson.user.dto.PostDTO;

public interface UserDAO {

	List<PostDTO> selectNotice();

	int selectTotalCount(Map<String, String> searchMap);

	int selectStoreTotalCount(Map<String, String> searchMap);

}
