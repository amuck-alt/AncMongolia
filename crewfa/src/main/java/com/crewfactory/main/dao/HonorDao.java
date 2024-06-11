package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.HonorDomain;

@Mapper
public interface HonorDao {
	
	public List <HonorDomain> select (Map<String, Object> paramMap) throws Exception;
	
	public List <HonorDomain> selectTop () throws Exception;
	
	public List <HonorDomain> selectByWeb (String univ) throws Exception;
	
	public List <HonorDomain> selectByWebEtc (String univ) throws Exception;
	
	public List <HonorDomain> selectByWebTop () throws Exception;
	
	public HonorDomain view (int idx) throws Exception;
	
	public void insert(HonorDomain domain) throws Exception;
	
	public void update(HonorDomain domain) throws Exception;
	
	public void delete(int idx) throws Exception;

}
