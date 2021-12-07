package com.sd.mommyson.user.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.user.common.SelectCriteria;

public interface UserDAO {



	int selectTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectNotice(SelectCriteria selectCriteria);

	int selectStoreTotalCount(Map<String, String> searchMap);

	List<StoreDTO> selectStoreList(Pagination pagination);

	int selectProductTotalCount(Map<String, String> searchMap);

	List<StoreDTO> selectProductList(Pagination pagination);

}
