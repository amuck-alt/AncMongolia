package com.crewfactory.main.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.ProfessorDomain;

@Mapper
public interface ProfessorDao {
	
	public List <ProfessorDomain> selectByAdmin() throws Exception;
	public List <ProfessorDomain> selectByWeb() throws Exception;
	public List <ProfessorDomain> selectByWebHome() throws Exception;
	public ProfessorDomain viewByAdmin(int idx) throws Exception;

	public void insert (ProfessorDomain domain) throws Exception;
	public void update (ProfessorDomain domain) throws Exception;
	public void delete (int idx) throws Exception;

}
