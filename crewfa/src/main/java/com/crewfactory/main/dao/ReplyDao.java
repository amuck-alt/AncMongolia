package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.ReplyDomain;

@Mapper
public interface ReplyDao {
	
	public List <ReplyDomain> selectByWeb() throws Exception;
	public List <ReplyDomain> selectByWebHome() throws Exception;
	
	public List <ReplyDomain> selectByAdmin() throws Exception;
	public ReplyDomain viewByAdmin(int idx) throws Exception;

	public void insert (ReplyDomain domain) throws Exception;
	public void update (ReplyDomain domain) throws Exception;
	public void delete (int idx) throws Exception;

}
