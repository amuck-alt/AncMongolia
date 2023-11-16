package com.crewfactory.main.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CounterDao {
	
	public boolean update_count_announce (int idx) throws Exception;


}
