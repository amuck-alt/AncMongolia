package com.crewfactory.main.domain;

public class SearchDomain {

	private String searchText;
	private String searchType;
	private String searchSection;
	private String searchResult;

	private int startPage;
	private int endPage;
	
	public SearchDomain() {}

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



	public String getSearchResult() {
		return searchResult;
	}
	public void setSearchResult(String searchResult) {
		this.searchResult = searchResult;
	}
	
	public String getSearchText() {
		return searchText;
	}
	
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
	public String getSearchType() {
		return searchType;
	}
	
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchSection() {
		return searchSection;
	}

	public void setSearchSection(String searchSection) {
		this.searchSection = searchSection;
	}

	@Override
	public String toString() {
		return "SearchDomain [searchText=" + searchText + ", searchType=" + searchType + ", searchSection="
				+ searchSection + ", searchResult=" + searchResult + "]";
	}

	
	
}

