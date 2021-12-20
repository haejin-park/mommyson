package com.sd.mommyson.usermypage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.user.dto.ReviewDTO;
import com.sd.mommyson.usermypage.dto.CouponDTO;
import com.sd.mommyson.usermypage.dto.MyOrderDTO;
import com.sd.mommyson.usermypage.dto.OrderInfoDTO;

public interface UserMyPageService {

	int selectMycouponNo(Map<String, String> searchMap);

	List<CouponDTO> selectMyCouponList(SelectCriteria selectCriteria);

	int selectMyOrderNum(Map<String, String> searchMap);

	List<MyOrderDTO> selectMyOrderList(SelectCriteria selectCriteria);

	int selectMyRecommendStore(Map<String, String> searchMap);

	List<StoreDTO> selectRecommendStore(SelectCriteria selectCriteria);

	int deleteRecommendStore(int storeNo);

	int selectTotalReviewCount(Map<String,String> searchMap);

	List<ReviewDTO> selectReviewContentList(SelectCriteria selectCriteria);

	List<HashMap<String, String>> selectMyOrderSd(int userCode);

	int insertReview(ReviewDTO review);

	int updateStoreGrade(Map<String, Object> map);

	double selectStoreGrade(int orderCode);

	List<HashMap<String, String>> selectMySdInfo(int userCode);

	int updateOrderCancel(int orderNo);

	int updateDelReview(int rvCodeDel);

	int updateSignOut(MemberDTO memberInfo);

}
