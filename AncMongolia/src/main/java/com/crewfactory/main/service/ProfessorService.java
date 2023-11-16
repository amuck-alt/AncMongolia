package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.ProfessorDao;
import com.crewfactory.main.domain.ProfessorDomain;

@Service
public class ProfessorService {
	
	@Autowired
	ProfessorDao dao;
	
	public List <ProfessorDomain> selectByAdmin() throws Exception {
		return dao.selectByAdmin();
	}
	
	public List <ProfessorDomain> selectByWeb() throws Exception {
		return dao.selectByWeb();
	}
	
	public List <ProfessorDomain> selectByWebHome() throws Exception {
		return dao.selectByWebHome();
	}
	
	public void insert(ProfessorDomain domain) throws Exception {
		dao.insert(domain);
	}
	
	public ProfessorDomain viewByAdmin(int idx) throws Exception {
		return dao.viewByAdmin(idx);
	}
	
	public void update(ProfessorDomain domain) throws Exception {
		dao.update(domain);
	}
	
	public void delete (int idx) throws Exception {
		dao.delete(idx);
	}

}
