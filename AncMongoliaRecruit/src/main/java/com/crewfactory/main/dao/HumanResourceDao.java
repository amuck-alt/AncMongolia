package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.HRSearchDomain;
import com.crewfactory.main.domain.HumanResourceDomain;

@Mapper
public interface HumanResourceDao {
	public List <HumanResourceDomain> select (HumanResourceDomain domain) throws Exception;
	public List <HumanResourceDomain> downExcel (HumanResourceDomain domain) throws Exception;
	public HumanResourceDomain view (int idx) throws Exception;
	public boolean insert (HumanResourceDomain domain) throws Exception;
	public boolean updateResume (HumanResourceDomain domain) throws Exception;
	public void update (HumanResourceDomain domain) throws Exception;
	public void updateIntv1 (HumanResourceDomain domain) throws Exception;
	public void updateIntv2 (HumanResourceDomain domain) throws Exception;
	public void delete (int idx) throws Exception;
	public void setpass1st (HumanResourceDomain domain) throws Exception;
	public void setpass2nd (HumanResourceDomain domain) throws Exception;
	public void setpass3rd (HumanResourceDomain domain) throws Exception;
	public HumanResourceDomain search (HRSearchDomain domain) throws Exception;
	public int checkVolunteer (HumanResourceDomain domain) throws Exception;
	public void allpass1st (HumanResourceDomain domain) throws Exception;
	public void allpass2nd (HumanResourceDomain domain) throws Exception;
	public int checkLimitVolunteer1(HumanResourceDomain domain) throws Exception;
	public int checkLimitVolunteer2(HumanResourceDomain domain) throws Exception;
}
