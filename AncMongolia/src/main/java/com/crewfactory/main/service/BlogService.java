package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.BlogDao;
import com.crewfactory.main.domain.BlogDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.util.Pageable;
import com.crewfactory.main.util.Utility;


@Service
public class BlogService {
	
	@Autowired
	BlogDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <BlogDomain> selectBlogByHome () throws Exception {
		return dao.selectBlogByHome();
	}
	
	public List <BlogDomain> select (SearchDomain sdomain) throws Exception {
		return dao.select(sdomain);
	}
	
	public int selectBlogByWebTotal(Map<String, Object> paramMap) throws Exception {
		return dao.selectBolgByWebTotal(paramMap);
	}
	
	public int selectMomentByWebTotal(Map<String, Object> paramMap) throws Exception {
		return dao.selectMomentByWebTotal(paramMap);
	}
	
	public int selectMomentByWebTotalIncheon(Map<String, Object> paramMap) throws Exception {
		return dao.selectMomentByWebTotalIncheon(paramMap);
	}
	
	public List <BlogDomain> selectBlogByWeb(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		return dao.selectBlogByWeb(paramMap);
	}
	
	public List <BlogDomain> selectMomentByWeb(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		return dao.selectMomentByWeb(paramMap);
	}
	
	public List <BlogDomain> selectMomentByWebIncheon(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		return dao.selectMomentByWebIncheon(paramMap);
	}
	
	public List <BlogDomain> selectTopBlogByWeb (Map<String, Object> paramMap) throws Exception {
		return dao.selectTopBlogByWeb(paramMap);
	}
	
	public List <BlogDomain> selectTopBlog (SearchDomain search) throws Exception {
		return dao.selectTopBlog(search);
	}
	
	public BlogDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public BlogDomain viewMoment (int idx) throws Exception {
		return dao.viewMoment(idx);
	}
	
	public BlogDomain viewMomentIncheon (int idx) throws Exception {
		return dao.viewMomentIncheon(idx);
	}
	
	public void insert(BlogDomain domain) throws Exception {
		Utility util = new Utility();
		//String pureText = util.limitText(util.removeTag(domain.getContent()), 800);
		//domain.setDescription(pureText);
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		dao.insert(domain);
	}
	
	public void update(BlogDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
	
	public List <BlogDomain> selectMomentByHome () throws Exception {
		return dao.selectMomentByHome();
	}

}
