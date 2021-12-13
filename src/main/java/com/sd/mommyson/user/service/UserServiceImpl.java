package com.sd.mommyson.user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dao.UserDAO;
import com.sd.mommyson.user.dto.ReviewDTO;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDAO userDAO;
	
	@Autowired
	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}


	@Override
	public int selectTotalCount(Map<String, String> searchMap) {
		System.out.println("서비스 searchMap: " + searchMap);
		int totalCount = userDAO.selectTotalCount(searchMap);
		return totalCount;
	}


	@Override
	public List<PostDTO> selectNotice(SelectCriteria selectCriteria) {
		
		List<PostDTO>noticeList = userDAO.selectNotice(selectCriteria);
		return noticeList;
	}


	@Override
	public List<StoreDTO> selectStoreList(Pagination pagination) {
		List<StoreDTO> storeList = userDAO.selectStoreList(pagination);
		return storeList;
	}


	@Override
	public int selectProductTotalCount(Map<String, String> searchMap) {
		return userDAO.selectProductTotalCount(searchMap);
	}


	@Override
	public List<StoreDTO> selectProductList(Pagination pagination) {
		List<StoreDTO> productList = userDAO.selectProductList(pagination);
		return productList;
	}

	@Override
	public int selectStoreTotalCount(Map<String, String> searchMap) {
		return userDAO.selectStoreTotalCount(searchMap);
	}


	@Override
	public List<ReviewDTO> selectReviewList(Pagination pagination) {
		return userDAO.selectReviewList(pagination);
	}


	@Override
	public List<ProductDTO> selectProducts(String memCode) {
		return userDAO.selectProducts(memCode);
	}


	@Override
	public Map<String, String> selectStoreByMemCode(String memCode) {
		return userDAO.selectStoreMyMemCode(memCode);
	}


	@Override
	public int selectReviewTotalCount(Map<String, String> searchMap) {
		return userDAO.selectReviewTotalCount(searchMap);
	}


	@Override
	public ProductDTO selectProductBySdCode(int sdCode) {
		return userDAO.selectProductBySdCode(sdCode);
	}


	@Override
	public void insertShoppingBasket(Map<String, Integer> order) {
		userDAO.insertShoppingBasket(order);
	}


	@Override
	public int insertReport(Map<String, Integer> reportInfo) {
		return userDAO.insertReport(reportInfo);
	}

}
