package com.sd.mommyson.usermypage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.user.dto.ReviewDTO;
import com.sd.mommyson.usermypage.dao.UserMyPageDAO;
import com.sd.mommyson.usermypage.dto.CouponDTO;
import com.sd.mommyson.usermypage.dto.MyOrderDTO;
import com.sd.mommyson.usermypage.dto.OrderInfoDTO;

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

	@Override
	public int selectMyOrderNum(Map<String, String> searchMap) {

		int totalCount = userMyPageDAO.selectMyOrderNum(searchMap);
		
		return totalCount;
	}

	@Override
	public List<MyOrderDTO> selectMyOrderList(SelectCriteria selectCriteria) {

		List<MyOrderDTO> myOrderList = userMyPageDAO.selectMyOrderList(selectCriteria);
		return myOrderList;
	}

	@Override
	public int selectMyRecommendStore(Map<String, String> searchMap) {

		int totalCount = userMyPageDAO.selectMyRecommendStore(searchMap);
		return totalCount;
	}

	@Override
	public List<StoreDTO> selectRecommendStore(SelectCriteria selectCriteria) {
		
		List<StoreDTO> storeReconmendList = userMyPageDAO.selectRecommendStore(selectCriteria);
		
		return storeReconmendList;
	}

	@Override
	public int deleteRecommendStore(int storeNo) {

		int result = userMyPageDAO.deleteRecommendStore(storeNo);
		
		return result;
	}

	@Override
	public int selectTotalReviewCount(Map<String,String> searchMap) {
		int totalCount = userMyPageDAO.selectTotalReviewCount(searchMap);
		return totalCount;
	}

	@Override
	public List<ReviewDTO> selectReviewContentList(SelectCriteria selectCriteria) {
		
		List<ReviewDTO> reviewContentList = userMyPageDAO.selectReviewContentList(selectCriteria);
		return reviewContentList;
	}

	@Override
	public List<HashMap<String, String>> selectMyOrderSd(int userCode) {
		List<HashMap<String, String>> mySdInfo = userMyPageDAO.selectMyOrderSd(userCode);
		return mySdInfo;
	}

	@Override
	public List<HashMap<String, String>> selectMySdInfo(int userCode) {
		List<HashMap<String, String>> productInfo = userMyPageDAO.selectMySdInfo(userCode);
		return productInfo;
	}

	@Override
	public int updateOrderCancel(int orderNo) {
		int result = userMyPageDAO.updateOrderCancel(orderNo);
		return result;
	}

}
