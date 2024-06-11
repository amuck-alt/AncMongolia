package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.FaqDomain;
import com.crewfactory.main.domain.SearchDomain;

@Mapper
public interface FaqDao {
	public List <FaqDomain> select (SearchDomain search) throws Exception;
	public FaqDomain view (int idx) throws Exception;
	public boolean insert (FaqDomain domain) throws Exception;
	public boolean update (FaqDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
}
