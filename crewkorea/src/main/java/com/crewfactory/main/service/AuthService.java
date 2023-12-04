package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.AuthDao;
import com.crewfactory.main.domain.AuthDomain;

@Service
public class AuthService {
	
	@Autowired
	AuthDao dao;
	
	public List <AuthDomain> select() throws Exception {
		return dao.select();
	}
	
	public List <AuthDomain> selectTeam(AuthDomain ad) throws Exception {
		return dao.selectTeam(ad);
	}
	
	public AuthDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public void insert(AuthDomain ad) throws Exception {
		dao.insert(ad);
	}
	
	public void update(AuthDomain ad) throws Exception {
		dao.update(ad);
	}
	
	public void updateRecDate(AuthDomain ad) throws Exception {
		dao.updateRecDate(ad);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
	
	public AuthDomain login(AuthDomain domain) throws Exception {
		return dao.login(domain);
	}

}
