package com.sd.mommyson.usermypage.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.usermypage.dto.CouponDTO;
import com.sd.mommyson.usermypage.dto.MyOrderDTO;

public interface UserMyPageService {

	int selectMycouponNo(Map<String, String> searchMap);

	List<CouponDTO> selectMyCouponList(SelectCriteria selectCriteria);

	int selectMyOrderNum(Map<String, String> searchMap);

	List<MyOrderDTO> selectMyOrderList(SelectCriteria selectCriteria);

	int selectMyRecommendStore(Map<String, String> searchMap);

}
