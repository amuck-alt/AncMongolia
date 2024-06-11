package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.PressDomain;

@Mapper
public interface PressDao {
	public List <PressDomain> select(Map<String, Object> paramMap) throws Exception;
	public List <PressDomain> selectAll() throws Exception;
	public PressDomain view (int idx) throws Exception;
	public boolean insert (PressDomain domain) throws Exception;
	public boolean update (PressDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	public int selectTotal (Map<String, Object> paramMap) throws Exception;
}
