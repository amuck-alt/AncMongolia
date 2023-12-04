package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.CKRecruitDomain;

@Mapper
public interface CKRecruitDao {
	public List <CKRecruitDomain> selectAdmin () throws Exception;
	public List <CKRecruitDomain> selectTitle () throws Exception;
	public List <CKRecruitDomain> selectMain () throws Exception;
	public List <CKRecruitDomain> selectList (Map<String, Object> paramMap) throws Exception;
	public int selectTotal (Map<String, Object> paramMap) throws Exception;
	public CKRecruitDomain view (int idx) throws Exception;
	public boolean insert (CKRecruitDomain domain) throws Exception;
	public void update (CKRecruitDomain domain) throws Exception;
	public void delete (int idx) throws Exception;
}
