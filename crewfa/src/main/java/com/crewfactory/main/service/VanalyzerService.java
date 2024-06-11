package com.crewfactory.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crewfactory.main.dao.VisitCounterDao;
import com.crewfactory.main.domain.CounterDomain;
import com.crewfactory.main.domain.VanalyzerDomain;

@Service
public class VanalyzerService {
	
	@Autowired
	VisitCounterDao vanalyzer;
	
	public List <VanalyzerDomain> selectLog (Map<String, Object> vmap) throws Exception {
		return vanalyzer.selectLog(vmap);		
	}
	
	public List <VanalyzerDomain> selectRecent (Map<String, Object> vmap) throws Exception {
		return vanalyzer.selectRecent(vmap);		
	}
	
	public VanalyzerDomain totalCount (Map<String, Object> vmap) throws Exception {
		return vanalyzer.total_count(vmap);		
	}
	
	public CounterDomain ov_count(Map<String, Object> searchMap) throws Exception {
		return vanalyzer.ov_count(searchMap);
	}
	
	public CounterDomain ov_count_monthly(Map<String, Object> searchMap) throws Exception {
		return vanalyzer.ov_count_monthly(searchMap);
	}

}
