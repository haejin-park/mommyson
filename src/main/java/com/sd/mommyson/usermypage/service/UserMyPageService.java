package com.sd.mommyson.usermypage.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.usermypage.dto.CouponDTO;

public interface UserMyPageService {

	int selectMycouponNo(Map<String, String> searchMap);

	List<CouponDTO> selectMyCouponList(SelectCriteria selectCriteria);

}
