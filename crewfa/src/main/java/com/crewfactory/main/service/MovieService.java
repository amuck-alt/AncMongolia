package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crewfactory.main.dao.MovieDao;
import com.crewfactory.main.domain.MovieDomain;
import com.crewfactory.main.util.Utility;

@Service
public class MovieService {
	
	@Autowired
	MovieDao dao;
	
	public List <MovieDomain> select() throws Exception {
		return dao.select();
	}	
	
	public MovieDomain view(int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(MovieDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.insert(domain);
	}
	
	public boolean update(MovieDomain domain) throws Exception {
		Utility util = new Utility();
		String convertPath = util.modifyEditorTxt(domain.getContent());
		domain.setContent(convertPath);
		return dao.update(domain);
	}
	
	public void delete(int idx) throws Exception {
		dao.delete(idx);
	}

}
