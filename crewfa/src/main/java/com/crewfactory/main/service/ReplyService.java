package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.ReplyDao;
import com.crewfactory.main.domain.ReplyDomain;

@Service
public class ReplyService {
	
	@Autowired
	ReplyDao dao;
	
	public List <ReplyDomain> selectByAdmin() throws Exception {
		return dao.selectByAdmin();
	}
	
	public List <ReplyDomain> selectByWeb() throws Exception {
		return dao.selectByWeb();
	}
	
	public List <ReplyDomain> selectByWebHome() throws Exception {
		return dao.selectByWebHome();
	}
	
	public void insert(ReplyDomain domain) throws Exception {
		dao.insert(domain);
	}
	
	public ReplyDomain viewByAdmin(int idx) throws Exception {
		return dao.viewByAdmin(idx);
	}
	
	public void update(ReplyDomain domain) throws Exception {
		dao.update(domain);
	}
	
	public void delete (int idx) throws Exception {
		dao.delete(idx);
	}

}
