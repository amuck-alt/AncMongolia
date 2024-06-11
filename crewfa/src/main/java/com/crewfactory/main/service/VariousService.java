package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.VariousDao;
import com.crewfactory.main.domain.VariousDomain;
import com.crewfactory.main.util.Pageable;

@Service
public class VariousService {
	
	@Autowired
	VariousDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <VariousDomain> select() throws Exception {
		return dao.select();
	}
	
	public VariousDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(VariousDomain domain) throws Exception {
		return dao.insert(domain);
	}
	
	public boolean update(VariousDomain domain) throws Exception {
		return dao.update(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}
	
	public int selectTotalByWeb(Map<String, Object> searchMap) throws Exception {
		return dao.selectTotalByWeb(searchMap);		
	}
	
	public List <VariousDomain> selectByWeb(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		return dao.selectByWeb(paramMap);	
	}

}
