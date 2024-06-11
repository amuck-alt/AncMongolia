package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.InterviewDao;
import com.crewfactory.main.domain.InterviewDomain;
import com.crewfactory.main.util.Pageable;

@Service
public class InterviewService {
	
	@Autowired
	InterviewDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <InterviewDomain> select() throws Exception {
		return dao.select();
	}
	
	public InterviewDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(InterviewDomain domain) throws Exception {
		return dao.insert(domain);
	}
	
	public boolean update(InterviewDomain domain) throws Exception {
		return dao.update(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}
	
	public int selectTotalByWeb(Map<String, Object> searchMap) throws Exception {
		return dao.selectTotalByWeb(searchMap);		
	}
	
	public List <InterviewDomain> selectByWeb(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		return dao.selectByWeb(paramMap);	
	}

}
