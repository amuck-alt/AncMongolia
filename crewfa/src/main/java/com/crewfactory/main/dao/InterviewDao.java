package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.InterviewDomain;

@Mapper
public interface InterviewDao {
	public List <InterviewDomain> select() throws Exception;
	public InterviewDomain view (int idx) throws Exception;
	public boolean insert (InterviewDomain domain) throws Exception;
	public boolean update (InterviewDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	
	public int selectTotalByWeb(Map<String, Object> paramMap) throws Exception;
	public List <InterviewDomain> selectByWeb(Map<String, Object> paramMap) throws Exception;
}
