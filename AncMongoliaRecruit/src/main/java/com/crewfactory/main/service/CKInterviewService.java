package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crewfactory.main.dao.CKInterviewDao;
import com.crewfactory.main.domain.CKInterviewDomain;
@Service
@Transactional
public class CKInterviewService {
	
	@Autowired
	CKInterviewDao dao;
	
	public List <CKInterviewDomain> select (String catenum) throws Exception {
		return dao.select(catenum);
	}
	public List <CKInterviewDomain> select1st (String catenum) throws Exception {
		return dao.select1st(catenum);
	}
	public List <CKInterviewDomain> select2nd (String catenum) throws Exception {
		return dao.select2nd(catenum);
	}
	public List <CKInterviewDomain> selectIntv1 (String catenum) throws Exception {
		return dao.selectIntv1(catenum);
	}
	public List <CKInterviewDomain> selectIntv2 (String catenum) throws Exception {
		return dao.selectIntv2(catenum);
	}
	public CKInterviewDomain view (int m_idx) throws Exception {
		return dao.view(m_idx);
	}
	public void insert (CKInterviewDomain md) throws Exception {
		dao.insert(md);
	}
	public void update (CKInterviewDomain md) throws Exception {
		dao.update(md);
	}
	public void delete (int m_idx) throws Exception {
		dao.delete(m_idx);
	}

}
