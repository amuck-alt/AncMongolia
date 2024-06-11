package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.RecruitDao;
import com.crewfactory.main.domain.AirlineDomain;
import com.crewfactory.main.domain.RecruitDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.util.Pageable;
import com.crewfactory.main.util.Utility;

@Service
public class RecruitService {
	
	@Autowired
	RecruitDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <RecruitDomain> select(SearchDomain search) throws Exception {
		return dao.select(search);
	}
	
	public List <RecruitDomain> selectByWeb(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
        
		return dao.selectByWeb(paramMap);
	}
	
	public int selectByWebTotal(Map<String, Object> paramMap) throws Exception {
        
		return dao.selectByWebTotal(paramMap);
	}
	
	public RecruitDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(RecruitDomain domain) throws Exception {
		Utility util = new Utility();
		String pureText = util.limitText(util.removeTag(domain.getContent()), 800);
		domain.setDescription(pureText);
		
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.insert(domain);
	}
	
	public boolean update(RecruitDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.update(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}
	
	public List <AirlineDomain> selectAirline() throws Exception {
		return dao.selectAirline();
	}
	
	public List <RecruitDomain> selectTop4 () throws Exception {
		return dao.selectTop4();
	}

}
