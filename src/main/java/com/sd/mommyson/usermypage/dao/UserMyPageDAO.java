package com.sd.mommyson.usermypage.dao;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.usermypage.dto.CouponDTO;

public interface UserMyPageDAO {

	int selectMycouponNo(Map<String, String> searchMap);

	List<CouponDTO> selectMyCouponList(SelectCriteria selectCriteria);

}
