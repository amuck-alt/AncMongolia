package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.CounterDomain;
import com.crewfactory.main.domain.VanalyzerDomain;

@Mapper
public interface VisitCounterDao {	
	public boolean insert_visiter (VanalyzerDomain vanalyzer) throws Exception;
	public int checkIp (VanalyzerDomain vanalyzer) throws Exception;
	public List <VanalyzerDomain> selectLog (Map<String, Object> vmap) throws Exception;
	public List <VanalyzerDomain> selectRecent (Map<String, Object> vmap) throws Exception;
	public VanalyzerDomain total_count (Map<String, Object> vmap) throws Exception;
	public CounterDomain ov_count(Map<String, Object> searchMap) throws Exception;
	public CounterDomain ov_count_monthly(Map<String, Object> searchMap) throws Exception;
}
