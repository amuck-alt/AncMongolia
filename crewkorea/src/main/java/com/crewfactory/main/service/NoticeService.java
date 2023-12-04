package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crewfactory.main.dao.AnnounceDao;
import com.crewfactory.main.dao.NoticeDao;
import com.crewfactory.main.domain.AnnounceDomain;
import com.crewfactory.main.domain.NoticeDomain;
import com.crewfactory.main.util.Pageable;
import com.crewfactory.main.util.Utility;


@Service
@Transactional
public class NoticeService {
	
	@Autowired
	NoticeDao dao;
	
	
	public List <NoticeDomain> selectNew() throws Exception {
		return dao.selectNew();
	}
	
	public List <NoticeDomain> select() throws Exception {
		return dao.select();
	}
	
	public NoticeDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public void insert(NoticeDomain domain) throws Exception {
		dao.insert(domain);
	}
	
	public void update(NoticeDomain domain) throws Exception {
		dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}
	
}
