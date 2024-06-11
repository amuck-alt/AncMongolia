package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.ReviewDomain;

@Mapper
public interface ReviewDao {
	
	public List <ReviewDomain> select (Map<String, Object> paramMap) throws Exception;
	
	// 메인페이지 > 합격생리뷰 > 국내항공사
	public List <ReviewDomain> selectKoTop () throws Exception;
	// 메인페이지 > 합격생리뷰 > 외국항공사
	public List <ReviewDomain> selectOsTop () throws Exception;
	
	public List <ReviewDomain> selectAll ( Map<String, Object> paramMap ) throws Exception;
	public int selectTotal (Map<String, Object> paramMap) throws Exception;
	
	public ReviewDomain view (int idx) throws Exception;
	public boolean insert (ReviewDomain domain) throws Exception;
	public boolean update (ReviewDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	
}
