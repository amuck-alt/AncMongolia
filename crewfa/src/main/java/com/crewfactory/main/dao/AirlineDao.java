package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.AirlineDomain;

@Mapper
public interface AirlineDao {
	
	public List <AirlineDomain> select () throws Exception;
	public AirlineDomain view (int idx) throws Exception;
	public boolean insert (AirlineDomain domain) throws Exception;
	public boolean update (AirlineDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	public String check(String code) throws Exception;
	public List <AirlineDomain> kanu() throws Exception;
}
