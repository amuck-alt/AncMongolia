package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.BefMemberDomain;

@Mapper
public interface BefMemberDao {
	
	public List <BefMemberDomain> select() throws Exception;

}
