package com.crewfactory.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crewfactory.main.dao.CounterDao;
import com.crewfactory.main.dao.VisitCounterDao;
import com.crewfactory.main.domain.VanalyzerDomain;

@Service
public class CounterService {
	
	@Autowired
	CounterDao counter;
	
	@Autowired
	VisitCounterDao visiter;
	
	public boolean increas_vanalyzer(VanalyzerDomain vanalyzer) throws Exception {
		return visiter.insert_visiter(vanalyzer);
	}
	
	public int checkIp(VanalyzerDomain vanalyzer) throws Exception {
		return visiter.checkIp(vanalyzer);
	}
	
	public boolean counter_announce(int idx) throws Exception {
		return counter.update_count_announce(idx);
	}

}
