package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.AirlineDao;
import com.crewfactory.main.domain.AirlineDomain;

@Service
public class AirlineService {
	
	@Autowired
	AirlineDao dao;
	
	public List <AirlineDomain> select() throws Exception {
		return dao.select();
	}
	
	public AirlineDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public void insert(AirlineDomain domain) throws Exception {
		dao.insert(domain);
	}
	
	public void update(AirlineDomain domain) throws Exception {
		dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
	
	public String check(String code) throws Exception {
		return dao.check(code);
	}
	
	public List <AirlineDomain> kanu() throws Exception {	
		return dao.kanu();
	}

}
