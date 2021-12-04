package com.sd.mommyson.manager.common;

@SuppressWarnings("serial")
public class Pagination implements java.io.Serializable{

	private int pageNo;					//현재페이지
	private int totalCount;				//전체 게시물 수
	private int limit;					//페이지당 글 갯수
	private int buttonAmount;			//페이징 버튼의 갯수
	private int maxPage;				//가장 마지막 페이지
	private int startPage;				//한 번에 보여줄 페이징 버튼의 시작하는 페이지 수
	private int endPage;				//한 번에 보여줄 페이징 버튼의 마지막 페이지 수
	private int startRow;				//DB 조회 시 최신 글 부터 조회해야 하는 행의 시작 수
	private int endRow;					//DB 조회 시 최신글부터 조회해야 하는 행의 마지막 수
	private String searchCondition;		//검색 조건
	private String searchValue;			//검색값

	public Pagination() {
		super();
	}
	
	public Pagination(int pageNo, int totalCount, int limit, int buttonAmount, int maxPage, int startPage, int endPage,
			int startRow, int endRow, String searchCondition, String searchValue) {
		super();
		this.pageNo = pageNo;
		this.totalCount = totalCount;
		this.limit = limit;
		this.buttonAmount = buttonAmount;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.startRow = startRow;
		this.endRow = endRow;
		this.searchCondition = searchCondition;
		this.searchValue = searchValue;
	}
	
	public static Pagination getPagination(int pageNo, int totalCount, int limit, int buttonAmount) {
		
		return getPagination(pageNo, totalCount, limit, buttonAmount, null, null);
	}

	public static Pagination getPagination(int pageNo, int totalCount, int limit, int buttonAmount, String searchCondition, String searchValue) {
		/* pageNo와 totalCount가 넘어온 상태이기 때문에
		 * 페이징처리에 필요한 나머지 변수만 선언을 한다.
		 * */
		int maxPage;			//전체 페이지에서 가장 마지막 페이지
		int startPage;			//한번에 표시될 페이지 버튼의 시작할 페이지
		int endPage;			//한번에 표시될 페이지 버튼의 끝나는 페이지
		int startRow;
		int endRow;
		
		/* 총 페이지수 계산 */
		maxPage = (int) Math.ceil((double) totalCount / limit);

		/* 현재 페이지에 보여줄 시작 페이지 수 (10개씩 보여지게 할 경우)
		 * 아래쪽에 페이지 수가 10개씩 보여지게 한다면
		 * 1, 11, 21, 31, .....
		 * */
		startPage = (int) (Math.ceil((double) pageNo / buttonAmount) - 1) * buttonAmount + 1;

		/* 목록 아래쪽에 보여질 마지막 페이지 수 (10, 20, 30, ....) */
		endPage = startPage + buttonAmount - 1;
		
		/* max 페이지가 더 작은 경우 마지막 페이지가 max페이지이다. */
		if(maxPage < endPage){
			endPage = maxPage;
		}
		
		/* 마지막 페이지는 0이 될 수 없기 때문에 게시물이 아무 것도 존재하지 않으면 max페이지와 endPage는 0이 된다. */
		if(maxPage == 0 && endPage == 0) {
			maxPage = startPage;
			endPage = startPage;
		}
		
		/* 조회할 시작 번호와 마지막 행 번호를 계산한다. */
		startRow = (pageNo - 1) * limit + 1;
		endRow = startRow + limit - 1;
		
		System.out.println("startRow : " + startRow);
		System.out.println("endRow : " + endRow);
		
		return new Pagination(pageNo, totalCount, limit, buttonAmount ,maxPage, startPage, endPage, startRow, endRow, searchCondition, searchValue);

	}
	


	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getButtonAmount() {
		return buttonAmount;
	}
	public void setButtonAmount(int buttonAmount) {
		this.buttonAmount = buttonAmount;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	
	@Override
	public String toString() {
		return "pagination [pageNo=" + pageNo + ", totalCount=" + totalCount + ", limit=" + limit + ", buttonAmount="
				+ buttonAmount + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", startRow=" + startRow + ", endRow=" + endRow + ", searchCondition=" + searchCondition
				+ ", searchValue=" + searchValue + "]";
	}
}
