package com.sd.mommyson.usermypage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.usermypage.dao.UserMyPageDAO;
import com.sd.mommyson.usermypage.dto.CouponDTO;

@Service
public class UserMyPageImpl implements UserMyPageService {
	
	private UserMyPageDAO userMyPageDAO;
	
	@Autowired
	public UserMyPageImpl( UserMyPageDAO userMyPageDAO) {
		this.userMyPageDAO = userMyPageDAO;
	}

	@Override
	public int selectMycouponNo(Map<String, String> searchMap) {

		int totalCount = userMyPageDAO.selectMycouponNo(searchMap);
		return totalCount;
	}

	@Override
	public List<CouponDTO> selectMyCouponList(SelectCriteria selectCriteria) {
		
		List<CouponDTO> myCouponList = userMyPageDAO.selectMyCouponList(selectCriteria);
		
		return myCouponList;
	}

}
