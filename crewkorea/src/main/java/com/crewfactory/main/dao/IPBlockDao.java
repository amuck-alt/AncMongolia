package com.crewfactory.main.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.IPBlockDomain;

@Mapper
public interface IPBlockDao {
	
	public List <IPBlockDomain> select () throws Exception;
	public IPBlockDomain view (int idx) throws Exception;
	public void insert (IPBlockDomain domain) throws Exception;
	public void update (IPBlockDomain domain) throws Exception;
	public void delete (int idx) throws Exception;
	
	public int checkBlock (String ipaddr) throws Exception;
}
