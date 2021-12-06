package com.sd.mommyson.user.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.user.common.SelectCriteria;

public interface UserDAO {



	int selectTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectNotice(SelectCriteria selectCriteria);

}
