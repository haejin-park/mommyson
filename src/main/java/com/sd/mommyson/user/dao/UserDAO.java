package com.sd.mommyson.user.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dto.PostDTO;

public interface UserDAO {



	int selectTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectNotice(SelectCriteria selectCriteria);

}
