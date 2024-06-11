package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.CounselDao;
import com.crewfactory.main.domain.CounselDomain;

@Service
public class CounselService {
	
	@Autowired
	CounselDao dao;
	
	public List <CounselDomain> select() throws Exception {
		return dao.select();
	}
	
	public List <CounselDomain> selectSpc() throws Exception {
		return dao.selectSpc();
	}
	
	public CounselDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(CounselDomain domain) throws Exception {
		return dao.insert(domain);
	}
	
	public boolean update(CounselDomain domain) throws Exception {
		return dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
	
	public List <CounselDomain> selectBlack() throws Exception {
		return dao.selectBlack();
	}
}
