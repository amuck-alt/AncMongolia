package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.MomentDao;
import com.crewfactory.main.domain.BlogDomain;
import com.crewfactory.main.util.Utility;

@Service
public class MomentService {
	
	@Autowired
	MomentDao dao;
	
	public List <BlogDomain> select() throws Exception {
		return dao.select();
	}
	
	
	public BlogDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(BlogDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.insert(domain);
	}
	
	public boolean update(BlogDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}

}
