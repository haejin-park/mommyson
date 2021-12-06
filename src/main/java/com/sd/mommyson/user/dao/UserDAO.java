package com.sd.mommyson.user.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.dto.PostDTO;
<<<<<<< HEAD
import com.sd.mommyson.user.common.SelectCriteria;
=======
>>>>>>> 4ed0ea00577004a0d636d07a9240ea52c36002b9

public interface UserDAO {



	int selectTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectNotice(SelectCriteria selectCriteria);

}
