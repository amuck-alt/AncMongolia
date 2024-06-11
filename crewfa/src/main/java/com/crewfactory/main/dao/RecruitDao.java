package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.AirlineDomain;
import com.crewfactory.main.domain.RecruitDomain;
import com.crewfactory.main.domain.SearchDomain;

@Mapper
public interface RecruitDao {
	public List <RecruitDomain> select (SearchDomain search) throws Exception;
	public RecruitDomain view (int idx) throws Exception;
	public boolean insert (RecruitDomain domain) throws Exception;
	public boolean update (RecruitDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	public List <AirlineDomain> selectAirline() throws Exception;
	
	// 현재진행중인 항공사채용공고
	public List <RecruitDomain> selectTop4 () throws Exception;
	
	public List <RecruitDomain> selectByWeb (Map<String, Object> paramMap) throws Exception;
	public int selectByWebTotal(Map<String, Object> paramMap) throws Exception;
}
