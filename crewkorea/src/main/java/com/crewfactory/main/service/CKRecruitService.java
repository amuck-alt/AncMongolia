package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crewfactory.main.dao.CKRecruitDao;
import com.crewfactory.main.domain.CKRecruitDomain;
import com.crewfactory.main.util.Pageable;
import com.crewfactory.main.util.Utility;

@Service
@Transactional
public class CKRecruitService {
	
	@Autowired
	CKRecruitDao dao;
	
	@Autowired
	private Pageable pageable;
	
	public List <CKRecruitDomain> selectAdmin() throws Exception {
		return dao.selectAdmin();
	}
	
	public List <CKRecruitDomain> selectTitle () throws Exception {
		return dao.selectTitle();
	}
	
	public List <CKRecruitDomain> selectMain () throws Exception {
		return dao.selectMain();
	}
	
	public List <CKRecruitDomain> selectList (Map<String, Object> paramMap, int startPage, int visiblePages) throws Exception {
		Map<String, Object> tmpSearchMap = pageable.getRowBounds(startPage, visiblePages);
        paramMap.put("start", tmpSearchMap.get("start"));
        paramMap.put("end", tmpSearchMap.get("end"));
		
		return dao.selectList(paramMap);
	}
	
	public int selectTotal (Map<String, Object> paramMap) throws Exception {
		return dao.selectTotal(paramMap);
	}
	
	public void insert(CKRecruitDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		dao.insert(domain);
	}
	
	
	public CKRecruitDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public void update(CKRecruitDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}

}
