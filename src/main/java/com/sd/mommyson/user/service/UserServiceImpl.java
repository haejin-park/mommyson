package com.sd.mommyson.user.service;

import java.util.HashMap;
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
import com.sd.mommyson.user.dto.CartDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDAO userDAO;
	
	@Autowired
	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}


	@Override
	public List<PostDTO> selectRecentNotice() {

		List<PostDTO> noticeMainCon = userDAO.selectRecentNotice();		
		
		
		return noticeMainCon;
	}
	
	@Override
	public List<PostDTO> selectOftenFqa() {
		List<PostDTO> oftenFqa = userDAO.selectOftenFqa();
		
		return oftenFqa;
	}
	
	@Override
	public int selectTotalCount(Map<String, String> searchMap) {
		System.out.println("서비스 searchMap: " + searchMap);
		int totalCount = userDAO.selectTotalCount(searchMap);
		return totalCount;
	}

	@Override
	public int selectFqaTotalCount(Map<String, String> searchMap) {
		int totalCount = userDAO.selectFqaTotalCount(searchMap);
		return totalCount;
	}

	@Override
	public List<PostDTO> selectNotice(SelectCriteria selectCriteria) {
		
		List<PostDTO>noticeList = userDAO.selectNotice(selectCriteria);
		return noticeList;
	}
	
	@Override
	public List<PostDTO> selectNoticeContents(int postNo) {

		List<PostDTO> noticeContentList = userDAO.selectNoticeContents(postNo);
		
		return noticeContentList;
	}

	@Override
	public int updateIncrementBoardCount(int postNo) {
		int result = userDAO.updateIncrementBoardCount(postNo);
		return result;
	}

	@Override
	public List<PostDTO> selectImportantNotice() {

		List<PostDTO> importantNotice = userDAO.selectImportantNotice();
		return importantNotice;
	}

	@Override
	public List<StoreDTO> selectStoreList(Pagination pagination) {
		List<StoreDTO> storeList = userDAO.selectStoreList(pagination);
		return storeList;
	}
	
	@Override
	public List<PostDTO> selectFqaList(SelectCriteria selectCriteria) {

		List<PostDTO> fqaList = userDAO.selectFqaList(selectCriteria);
		
		return fqaList;
	}


	@Override
	public int selectProductTotalCount(Map<String, String> searchMap) {
		return userDAO.selectProductTotalCount(searchMap);
	}


	@Override
	public List<ProductDTO> selectProductList(Pagination pagination) {
		List<ProductDTO> productList = userDAO.selectProductList(pagination);
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


	/* 장바구니 상품 조회  */
	@Override
	public int selectCountCart(HashMap<String, Integer> order) {
		return userDAO.selectCountCart(order);
	}
	
	/* 장바구니에 상품 insert  */
	@Override
	public void insertCart(HashMap<String, Integer> order) {
		 userDAO.insertCart(order);
		
	}


	/* 장바구니에 상품 update */
	@Override
	public void updateCart(HashMap<String, Integer> order) {
		userDAO.updateCart(order);
		
	}

	
	/* 장바구니 목록 조회 */
	@Override
	public List<CartDTO> cartList(MemberDTO member) {
		// TODO Auto-generated method stub
		return userDAO.cartList(member);
	}

	
	/* 방문포장 주문리스트 저장 */
	@Override
	public int insertPackageOrderList(HashMap<String, Object> insertPackage) {
		
		int result = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Integer> totalPrice = (List<Integer>)insertPackage.get("packagePayList");
		
		int[] storeCode = (int[])insertPackage.get("storeCode");
		
		String[] storeName = (String[])insertPackage.get("storeName");
		
		for(int i = 0; i< totalPrice.size(); i++) {
			
			map.put("totalPrice", totalPrice.get(i));
			map.put("storeCode",storeCode[i]);
			map.put("storeName", storeName[i]);
			map.put("memCode", insertPackage.get("memCode"));
			
			int success = userDAO.insertPackageOrderList(map);
			
			if(success > 0) {
				result += 1;
			}
			
		}
		
		
		return result;		
	}


	@Override
	public int insertDeliveryOrderList(HashMap<String, Object> insertDelivery) {

		int result = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Integer> totalPrice = (List<Integer>)insertDelivery.get("deliveryPayList");
		
		int[] storeCode = (int[])insertDelivery.get("storeCode");
		
		String[] storeName = (String[])insertDelivery.get("storeName");
		
		for(int i = 0; i < totalPrice.size(); i++) {
			map.put("totalPrice", totalPrice.get(i));
			map.put("storeCode", storeCode[i]);
			map.put("storeName", storeName[i]);
			map.put("memCode", insertDelivery.get("memCode"));
			
			int success = userDAO.insertDeliveryOrderList(map);
			
			if(success > 0) {
				result += 1;
			}
		
		
		}
		
		return result;
	}


	@Override
	public int insertReport(Map<String, Integer> reportInfo) {
		return userDAO.insertReport(reportInfo);
	}


	@Override
	public Map<String, String> selectStoreInfoByMemcode(int memCode) {
		return userDAO.selectStoreInfoByMemcode(memCode);
	}


	@Override
	public int selectSearchTotalCount(Map<String, Object> searchMap) {
		return userDAO.selectSearchTotalCount(searchMap);
	}


	@Override
	public List<ProductDTO> selectSearchList(Map<String, Object> searchMap) {
		return userDAO.selectSearchList(searchMap);
	}

	@Override
	public Integer insertJJIMplus(Map<String, Integer> map) {
		return userDAO.insertJJIMplus(map);
	}


	@Override
	public List<String> selectJJIMList(String memCode) {
		return userDAO.selectJJIMList(memCode);
	}


	@Override
	public Integer deleteJJIMplus(Map<String, Integer> map) {
		return userDAO.deleteJJIMplus(map);
	}





	
}
