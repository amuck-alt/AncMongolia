package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.VariousDomain;

@Mapper
public interface VariousDao {
	public List <VariousDomain> select() throws Exception;
	public VariousDomain view (int idx) throws Exception;
	public boolean insert (VariousDomain domain) throws Exception;
	public boolean update (VariousDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	
	public int selectTotalByWeb(Map<String, Object> paramMap) throws Exception;
	public List <VariousDomain> selectByWeb(Map<String, Object> paramMap) throws Exception;
}
