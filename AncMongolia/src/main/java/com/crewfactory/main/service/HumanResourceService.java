package com.crewfactory.main.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crewfactory.main.dao.HumanResourceDao;
import com.crewfactory.main.domain.HRSearchDomain;
import com.crewfactory.main.domain.HumanResourceDomain;

@Service
public class HumanResourceService {
	
	@Autowired
	HumanResourceDao dao;
	
	public List <HumanResourceDomain> select (HumanResourceDomain domain) throws Exception {
		return dao.select(domain);
	}
	
	public List <HumanResourceDomain> downExcel (HumanResourceDomain domain) throws Exception {
		return dao.downExcel(domain);
	}
	
	public HumanResourceDomain view (int idx) throws Exception {
		return dao.view(idx);
	}
	public boolean insert (HumanResourceDomain domain) throws Exception {
		return dao.insert(domain);
	}
	public boolean updateResume (HumanResourceDomain domain) throws Exception {
		return dao.updateResume(domain);
	}
	public void update (HumanResourceDomain domain) throws Exception {
		dao.update(domain);
	}
	public void updateIntv1 (HumanResourceDomain domain) throws Exception {
		dao.updateIntv1(domain);
	}
	public void updateIntv2 (HumanResourceDomain domain) throws Exception {
		dao.updateIntv2(domain);
	}
	public void delete (int idx) throws Exception {
		dao.delete(idx);
	}
	public void setpass1st (HumanResourceDomain domain) throws Exception {
		dao.setpass1st(domain);
	}
	public void setpass2nd (HumanResourceDomain domain) throws Exception {
		dao.setpass2nd(domain);
	}
	public void setpass3rd (HumanResourceDomain domain) throws Exception {
		dao.setpass3rd(domain);
	}	
	public HumanResourceDomain search (HRSearchDomain domain) throws Exception {
		return dao.search(domain);
	}	
	public int checkVolunteer (HumanResourceDomain domain) throws Exception {
		return dao.checkVolunteer(domain);
	}
	public void allpass1st (HumanResourceDomain domain) throws Exception {
		dao.allpass1st(domain);
	}	
	public void allpass2nd (HumanResourceDomain domain) throws Exception {
		dao.allpass2nd(domain);
	}
	public int checkLimitVolunteer1(HumanResourceDomain domain) throws Exception {
		return dao.checkLimitVolunteer1(domain);
	}
	public int checkLimitVolunteer2(HumanResourceDomain domain) throws Exception {
		return dao.checkLimitVolunteer2(domain);
	}

}
