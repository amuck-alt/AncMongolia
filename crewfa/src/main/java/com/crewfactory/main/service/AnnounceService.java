package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crewfactory.main.dao.AnnounceDao;
import com.crewfactory.main.domain.AnnounceDomain;
import com.crewfactory.main.util.Pageable;
import com.crewfactory.main.util.Utility;


@Service
@Transactional
public class AnnounceService {
	
	@Autowired
	AnnounceDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <AnnounceDomain> selectNew() throws Exception {
		return dao.selectNew();
	}
	
	public List <AnnounceDomain> selectAll(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
        
		return dao.selectAll(paramMap);
	}
	
	public List <AnnounceDomain> selectEvent(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
        
		return dao.selectEvent(paramMap);
	}
	
	public List <AnnounceDomain> selectAdmin(Map<String, Object> paramMap) throws Exception {
		return dao.selectAdmin(paramMap);
	}
	
	public AnnounceDomain selectOne(int idx) throws Exception {
		return dao.selectOne(idx);
	}
	
	public void insert(AnnounceDomain domain) throws Exception {
		Utility util = new Utility();
		String pureText = util.limitText(util.removeTag(domain.getContent()), 800);
		domain.setDescription(pureText);
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		dao.insert(domain);
	}
	
	public void update(AnnounceDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
	
	public int selectTotal(Map<String, Object> paramMap) throws Exception {
		return dao.selectTotal(paramMap);
	}
}
