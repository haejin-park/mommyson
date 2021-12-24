package com.sd.mommyson.user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dto.CartDTO;
import com.sd.mommyson.user.dto.FileDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface UserDAO {

	int selectTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectNotice(SelectCriteria selectCriteria);

	int selectStoreTotalCount(Map<String, String> searchMap);

	List<StoreDTO> selectStoreList(Pagination pagination);

	int selectProductTotalCount(Map<String, String> searchMap);

	List<ProductDTO> selectProductList(Pagination pagination);

	List<PostDTO> selectFqaList(SelectCriteria selectCriteria);

	int selectFqaTotalCount(Map<String, String> searchMap);

	List<PostDTO> selectNoticeContents(int postNo);

	int updateIncrementBoardCount(int postNo);

	List<ReviewDTO> selectReviewList(Pagination pagination);

	List<ProductDTO> selectProducts(String memCode);

	Map<String, String> selectStoreMyMemCode(String memCode);

	int selectReviewTotalCount(Map<String, String> searchMap);

	ProductDTO selectProductBySdCode(int sdCode);

	/* 장바구니 상품 조회  */
	int selectCountCart(HashMap<String, Integer> order);

	/* 장바구니에 상품 insert  */
	void insertCart(HashMap<String,Integer> order);
	
	/* 장바구니에 상품 update */
	void updateCart(HashMap<String,Integer> order);
	
	/* 장바구니 목록 조회 */
	List<CartDTO> cartList(MemberDTO member);

	/* 장바구니 리스트 삭제 */
	int deleteCartList(HashMap<String, Object> deleteCartProduct);

	/* 방문포장 주문리스트 저장  */
	int insertPackageOrderList(Map<String, Object> map);
	
	/* 배달 주문리스트 저장  */
	int insertDeliveryOrderList(Map<String, Object> map);
	
	int insertReport(Map<String, Integer> reportInfo);

	Map<String, String> selectStoreInfoByMemcode(int memCode);

	int selectSearchTotalCount(Map<String, Object> searchMap);

	List<ProductDTO> selectSearchList(Map<String, Object> searchMap);
	
	List<PostDTO> selectImportantNotice();

	List<PostDTO> selectRecentNotice();

	List<PostDTO> selectOftenFqa();

	Integer insertJJIMplus(Map<String, Integer> map);

	List<String> selectJJIMList(String memCode);

	Integer deleteJJIMplus(Map<String, Integer> map);

	int registMtmConsultingText(Map<String, Object> mtmConsulting);

	int registMtmConFile(Map<String, Object> fileInfo);

	int selectMtmTotalCount(Map<String, String> searchMap);
	
	List<PostDTO> selectMtmConsulting(SelectCriteria selectCriteria);

	PostDTO selectConsultingCon(Map<String, Object> searchMap);

	List<FileDTO> selectConsumerImg(int postNo);

	List<FileDTO> selectManagerImg(int postNo);

	int updateDelConsulting(int postNo);


}
