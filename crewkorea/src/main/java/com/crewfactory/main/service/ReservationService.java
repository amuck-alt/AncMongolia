package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.ReservationDao;
import com.crewfactory.main.domain.ReservationDomain;


@Service
public class ReservationService {
	
	@Autowired
	ReservationDao dao;
	
	public List <ReservationDomain> select (ReservationDomain domain) throws Exception {
		return dao.select(domain);
	}
	
	public ReservationDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(ReservationDomain domain) throws Exception {
		return dao.insert(domain);
	}
	
	public boolean update(ReservationDomain domain) throws Exception {
		return dao.update(domain);
	}
	
	public boolean updateEnd(ReservationDomain domain) throws Exception {
		return dao.updateEnd(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}
	
	public List <ReservationDomain> selectMemo (int idx) throws Exception {
		return dao.selectMemo(idx);
	}
	
	public boolean insertMemo (ReservationDomain domain) throws Exception {
		return dao.insertMemo(domain);
	}
	
	
	public List <ReservationDomain> selectIndex () throws Exception {
		return dao.selectIndex();
	}

}
