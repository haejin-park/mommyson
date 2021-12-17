package com.sd.mommyson.owner.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.member.dao.MemberDAO;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dao.OwnerDAO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.DCProduct;
import com.sd.mommyson.owner.dto.MembershipDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

@Service
public class OwnerServiceImpl implements OwnerService{

	private OwnerDAO ownerDAO;
	private MemberDAO memberDAO;
	
	@Autowired
	public OwnerServiceImpl(MemberDAO memberDAO,OwnerDAO ownerDAO) {
		this.memberDAO = memberDAO;
		this.ownerDAO = ownerDAO;
	}

	@Override
	public MemberDTO selectOwner(MemberDTO member) {

		
		return memberDAO.selectOwner(member);
	}

	@Override
	public List<CouponDTO> selectCoupon(Pagination pagination) {
		
		return ownerDAO.selectCoupon(pagination);
	}

	@Override
	public List<ReviewDTO> selectReview(Pagination pagination) {
		
		List<ReviewDTO> list = ownerDAO.selectReview(pagination);
		
		return list;
	}

	@Override
	public int modifyInfo(Map<String, Object> modifyInfo) {

		System.out.println(modifyInfo);
		
		int result = ownerDAO.modifyInfo(modifyInfo);
		
		return result;
	}

	@Override
	public int modifyCeo(Map<String, Object> modifyInfo) {
		
		int result = ownerDAO.modifyCeo(modifyInfo);
		
		return result;
	}

	@Override
	public int modifyStore(Map<String, Object> modifyInfo) {

		int result = ownerDAO.modifyStore(modifyInfo);
		
		return result;
	}

	@Override
	public int registCoupon(CouponDTO coupon) {
		
		int result = ownerDAO.registCoupon(coupon);
		
		return result;
	
	}
	@Override
	public int modifyPwd(MemberDTO member) {
		
		int result = ownerDAO.modifyPwd(member);
		
		return result;
	}

	@Override
	public int registCouponStore(int memCode) {
		
		int result = ownerDAO.registCouponStore(memCode);
		
		return result;
		
	}
	
	@Override
	public List<TagDTO> selectTag() {

		return ownerDAO.selectTag();
	}

	@Override
	public int registProduct(Map<String, Object> productInfo) {

		int result = ownerDAO.registProduct(productInfo);
		
		return result;
	}

	@Override
	public List<ProductDTO> selectProduct(Map<String, Object> searchMap) {
		
		return ownerDAO.selectProduct(searchMap);
	}

	@Override
	public int selectTotalCount(Map<String, Object> searchMap) {

		int result = ownerDAO.selectTotalCount(searchMap);
			
		return result;
	}

	@Override
	public int modifyStatus(ProductDTO product) {

		int result = ownerDAO.modifyStatus(product);
		
		return result;
	}

	@Override
	public int removeProduct(List<Integer> deleteCode) {

		int result = ownerDAO.removeProduct(deleteCode);
		
		return result;
	}

	@Override
	public int selectTotalDC(Map<String, Object>  searchMap) {
		
		int result = ownerDAO.selectTotalDC(searchMap);
		
		return result;
	}

	@Override
	public List<ProductDTO> selectDC(Map<String, Object> searchMap) {

		List<ProductDTO> result = ownerDAO.selectDC(searchMap);
		
		return result;
	}

	@Override
	public int selectTotalModal(Map<String, Object> searchMap) {

		int result = ownerDAO.selectTotalModal(searchMap);

		return result;
	}

	@Override
	public List<ProductDTO> selectProdouct(int memCode) {

		List<ProductDTO> product = ownerDAO.selectProdouct(memCode);
		
		return product;
	}

	@Override
	public int registDc(List<DCProduct> maps) {

		int result = ownerDAO.registDc(maps);
				
		return result;
	}

	@Override
	public List<OrderDTO> selectOrderList(Pagination pagination) {
		
		List<OrderDTO> order = ownerDAO.selectOrderList(pagination);
		
		return order;
	}

	@Override
	public int selectOrderListTotalCount(String storeName) {
		
		int result = ownerDAO.selectOrderListTotalCount(storeName);
		
		return result;
	}
	
	@Override
	public int modifyOwnerStatus(Map<String, Object> map) {

		int result = ownerDAO.modifyOwnerStatus(map);
		
		return result;
	}

	@Override
	public int deleteReview(List<Integer> deleteReviewList) {

		int result = ownerDAO.deleteCoupon(deleteReviewList);
		
		return result;
	}

	@Override
	public int deleteCoupon(List<Integer> deleteCouponList) {

		int result = ownerDAO.deleteCoupon(deleteCouponList);
		
		return result;
	}

	@Override
	public int selectCouponListTotalCount(int memCode) {
		
		int result = ownerDAO.selectCouponListTotalCount(memCode);
		
		return result;
	}

	@Override
	public int selectReviewListTotalCount(String storeName) {
		
		int result = ownerDAO.selectReviewListTotalCount(storeName);
		
		return result;
	}

	@Override
	public MembershipDTO selectMembership(int msCode) {

		MembershipDTO membership = ownerDAO.selectMembership(msCode);
		
		return membership;
	}

	@Override
	public int modifyProduct(List<DCProduct> maps) {
		// 결과값에 대한 내용을 서비스에서 처리 해야한다.
		// 프로시져에 대한 내용을 사용하게 되면 성공에 대한 값을 일반 업데이트와 다른 기준으로 넘겨준다.
		int result = 0;
		int checkValue = 0;
		for(int i = 0; i < maps.size(); i++) {
			
			DCProduct dc = maps.get(i);
			
			checkValue += ownerDAO.modifyProduct(dc);
		} 
		
		if(checkValue == maps.size()) {
			result = checkValue;
		}
		
		return result;
	}

	@Override
	public List<OrderDTO> selectOrderList2(String storeName) {
		return null;
	}

	@Override
	public int removeDc(List<Integer> codeList) {

		int result = ownerDAO.removeDc(codeList);
		
		return result;
	}

	@Override
	public int modifyDc(List<Integer> codeList) {

		int result = ownerDAO.modifyDc(codeList);
		
		return result;
	}

	@Override
	public ProductDTO selectPd(int sdCode) {
		
		return ownerDAO.selectPd(sdCode);
	}

	@Override
	public List<Integer> seletTagList(int sdCode) {

		return ownerDAO.seletTagList(sdCode);
	}

	@Override
	public int updateProduct(Map<String, Object> productInfo) {

		int result = 0;
		
		int updateProduct = ownerDAO.updateProduct(productInfo);
		
		if(updateProduct > 0) {
			
			@SuppressWarnings("unchecked")
			List<Integer> tagList = (List<Integer>)productInfo.get("tagList");
			
			Map<String, Integer> map = new HashMap<String, Integer>();
			
			ProductDTO pr = (ProductDTO)productInfo.get("product");
			
			int sdCode = pr.getSdCode();
			
			map.put("sdCode",sdCode);

			int removeTag = ownerDAO.removeTag(sdCode);
			
			if(removeTag > 0) {
				
				int updateTag = 0;
				
				for(int i = 0; i < tagList.size(); i++) {
					
					int tag = tagList.get(i);
					
					map.put("tag", tag);
					
					updateTag += ownerDAO.insertTag(map);
				}
				
				if(updateTag == tagList.size()) {
					result = 1;
				}
			}
			
		}
		
		return result;
	}

}
