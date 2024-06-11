package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.MemberDao;
import com.crewfactory.main.domain.MemberDomain;

@Service
public class MemberService {
	
	@Autowired
	MemberDao dao;
	
	public List <MemberDomain> select() throws Exception {
		return dao.select();
	}
	
	public MemberDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public MemberDomain findIdpw(MemberDomain domain) throws Exception {
		return dao.findIdpw(domain);
	}
	
	public void insert(MemberDomain md) throws Exception {
		dao.insert(md);
	}
	
	public int check(MemberDomain md) throws Exception {
		return dao.check(md);
	}
	
	public int overlap (MemberDomain md) throws Exception{
		return dao.overlap(md);
	}
	
	public void update(MemberDomain md) throws Exception {
		dao.update(md);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
}
