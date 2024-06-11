package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.BefMemberDao;
import com.crewfactory.main.domain.BefMemberDomain;

@Service
public class BefMemberService {
	
	@Autowired
	BefMemberDao dao;
	
	public List <BefMemberDomain> select() throws Exception {
		return dao.select();
	}

}
