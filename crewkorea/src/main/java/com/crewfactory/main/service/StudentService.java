package com.crewfactory.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.ReservationDao;
import com.crewfactory.main.dao.StudentDao;
import com.crewfactory.main.domain.ReservationDomain;
import com.crewfactory.main.domain.StudentDomain;

@Service
public class StudentService {
	
	@Autowired
	StudentDao dao;
	
	public List <StudentDomain> select (StudentDomain domain) throws Exception {
		return dao.select(domain);
	}
	
	public StudentDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	
	public boolean insert(StudentDomain domain) throws Exception {
		return dao.insert(domain);
	}
	
	public boolean update(StudentDomain domain) throws Exception {
		return dao.update(domain);
	}
	
	public boolean delete(int idx) throws Exception {
		return dao.delete(idx);
	}
	
	public List <StudentDomain> selectDiary (int idx) throws Exception {
		return dao.selectDiary(idx);
	}
	
	public boolean insertDiary (StudentDomain domain) throws Exception {
		return dao.insertDiary(domain);
	}

}
