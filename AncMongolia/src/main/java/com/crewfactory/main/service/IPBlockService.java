package com.crewfactory.main.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.IPBlockDao;
import com.crewfactory.main.domain.IPBlockDomain;

@Service
public class IPBlockService {
	
	@Autowired
	IPBlockDao dao;
	
	public List <IPBlockDomain> select() throws Exception {
		return dao.select();
	}
	
	public IPBlockDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public void insert (IPBlockDomain domain) throws Exception {
		dao.insert(domain);
	}
	
	public void update (IPBlockDomain domain) throws Exception {
		dao.update(domain);
	}
	
	public void delete (int idx) throws Exception {
		dao.delete(idx);
	}
	
	public int checkBlock (String ipaddr) throws Exception {
		return dao.checkBlock(ipaddr);
	}

}
