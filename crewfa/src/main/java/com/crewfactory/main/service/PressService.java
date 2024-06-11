package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crewfactory.main.dao.PressDao;
import com.crewfactory.main.domain.PressDomain;
import com.crewfactory.main.util.Pageable;
import com.crewfactory.main.util.Utility;

@Service
@Transactional
public class PressService {
	
	@Autowired
	PressDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <PressDomain> select(Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		
		return dao.select(paramMap);
	}
	
	public List <PressDomain> selectAll() throws Exception {
		return dao.selectAll();
	}
	
	public int selectTotal(Map<String, Object> paramMap) throws Exception {
		return dao.selectTotal(paramMap);
	}
	
	public PressDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(PressDomain domain) throws Exception {
		Utility util = new Utility();
		String pureText = util.limitText(util.removeTag(domain.getContent()), 800);
		domain.setDescription(pureText);
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.insert(domain);
	}
	
	public boolean update(PressDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.update(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}

}
