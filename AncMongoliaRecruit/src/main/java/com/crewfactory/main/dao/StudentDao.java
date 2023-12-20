package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.StudentDomain;

@Mapper
public interface StudentDao {
	
	public List <StudentDomain> select (StudentDomain domain) throws Exception;
	public StudentDomain view (int idx) throws Exception;
	public boolean insert (StudentDomain domain) throws Exception;
	public boolean update (StudentDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	
	public List <StudentDomain> selectDiary (int idx) throws Exception;
	public boolean insertDiary (StudentDomain domain) throws Exception;

}
