package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.FaqDao;
import com.crewfactory.main.domain.FaqDomain;
import com.crewfactory.main.domain.SearchDomain;

@Service
public class FaqService {
	
	@Autowired
	FaqDao dao;
	
	public List <FaqDomain> select (SearchDomain search) throws Exception {
		return dao.select(search);
	}
	
	public FaqDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(FaqDomain domain) throws Exception {
		return dao.insert(domain);
	}
	
	public boolean update(FaqDomain domain) throws Exception {
		return dao.update(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}

}
