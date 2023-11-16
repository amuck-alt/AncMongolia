package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.ReviewDao;
import com.crewfactory.main.domain.ReviewDomain;
import com.crewfactory.main.util.Pageable;
import com.crewfactory.main.util.Utility;

@Service
public class ReviewService {
	
	@Autowired
	ReviewDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <ReviewDomain> select(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		return dao.select(paramMap);
	}
	
	public int selectTotal(Map<String, Object> paramMap) throws Exception {
		return dao.selectTotal(paramMap);
	}
	
	// 메인페이지 > 합격생인터뷰 > 대한항공
	public List <ReviewDomain> selectKoTop() throws Exception {
		return dao.selectKoTop();
	}
	
	public List <ReviewDomain> selectKe() throws Exception {
		return dao.selectKe();
	}
	
	public List <ReviewDomain> selectOz() throws Exception {
		return dao.selectOz();
	}
	
	public List <ReviewDomain> selectKo() throws Exception {
		return dao.selectKo();
	}
	
	public List <ReviewDomain> selectEa() throws Exception {
		return dao.selectEa();
	}
	
	public List <ReviewDomain> selectEu() throws Exception {
		return dao.selectEu();
	}
	
	public List <ReviewDomain> selectAs() throws Exception {
		return dao.selectAs();
	}
	
	public List <ReviewDomain> selectBest() throws Exception {
		return dao.selectBest();
	}
	
	// 메인페이지 > 합격생인터뷰 > 외국항공사
	public List <ReviewDomain> selectOsTop() throws Exception {
		return dao.selectOsTop();
	}
	
	public List <ReviewDomain> selectAll( Map<String, Object> paramMap ) throws Exception {
		return dao.selectAll(paramMap);
	}
	
	public ReviewDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(ReviewDomain domain) throws Exception {
		Utility util = new Utility();
		//String pureText = util.limitText(util.removeTag(domain.getContent()), 800);
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		//domain.setDescription(pureText);
		
		return dao.insert(domain);
	}
	
	public boolean update(ReviewDomain domain) throws Exception {		
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.update(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}

}
