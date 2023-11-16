package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.BlogDomain;
import com.crewfactory.main.domain.SearchDomain;

@Mapper
public interface BlogDao {
	public List <BlogDomain> selectBlogByHome () throws Exception;
	public List <BlogDomain> select (SearchDomain sdomain) throws Exception;
	public List <BlogDomain> selectTopBlog (SearchDomain sdoma) throws Exception;
	
	
	public int selectBolgByWebTotal (Map<String, Object> paramMap) throws Exception;
	public int selectMomentByWebTotal (Map<String, Object> paramMap) throws Exception;
	public int selectMomentByWebTotalIncheon (Map<String, Object> paramMap) throws Exception;
	
	public List <BlogDomain> selectBlogByWeb (Map<String, Object> paramMap) throws Exception;
	public List <BlogDomain> selectMomentByWeb (Map<String, Object> paramMap) throws Exception;
	public List <BlogDomain> selectMomentByWebIncheon (Map<String, Object> paramMap) throws Exception;
	
	public List <BlogDomain> selectTopBlogByWeb (Map<String, Object> paramMap) throws Exception;
	public BlogDomain selectBlogNewOne () throws Exception;
	
	public BlogDomain view (int idx) throws Exception;
	public BlogDomain viewMoment (int idx) throws Exception;
	public BlogDomain viewMomentIncheon (int idx) throws Exception;
	
	public void insert (BlogDomain bd) throws Exception;
	public void update (BlogDomain bd) throws Exception;
	public void delete (int idx) throws Exception;
	
	public List <BlogDomain> selectMomentByHome () throws Exception;
}
