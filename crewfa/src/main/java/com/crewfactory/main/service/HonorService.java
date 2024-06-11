package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.HonorDao;
import com.crewfactory.main.domain.HonorDomain;

@Service
public class HonorService {
	
	@Autowired
	HonorDao dao;
	
	public List <HonorDomain> select (Map<String, Object> paramMap) throws Exception {
		return dao.select(paramMap);
	}
	
	public List <HonorDomain> selectTop () throws Exception {
		return dao.selectTop();
	}
	
	public List <HonorDomain> selectByWebTop () throws Exception {
		return dao.selectByWebTop();
	}
	
	public List <HonorDomain> selectByWebEtc (String univ) throws Exception {
		return dao.selectByWebEtc(univ);
	}
	
	public List <HonorDomain> selectByWeb (String univ) throws Exception {
		return dao.selectByWeb(univ);
	}
	
	public HonorDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public void insert(HonorDomain domain) throws Exception {
		dao.insert(domain);
	}
	
	public void update(HonorDomain domain) throws Exception {
		dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}

}
