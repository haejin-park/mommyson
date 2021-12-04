package com.sd.mommyson.manager.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;

public interface ManagerDAO {

	public int selectNoticeTotalCount(Map<String, String> searchMap);

	public List<Pagination> selectNoticeList(Pagination pagination);

}
