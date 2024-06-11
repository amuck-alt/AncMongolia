package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.AuthDomain;

@Mapper
public interface AuthDao {
	public List <AuthDomain> select() throws Exception;
	public List <AuthDomain> selectTeam(AuthDomain ad) throws Exception;
	public AuthDomain view (int idx) throws Exception;
	public void insert (AuthDomain ad) throws Exception;
	public void update (AuthDomain ad) throws Exception;
	public void updateRecDate (AuthDomain ad) throws Exception;
	public void delete (int m_idx) throws Exception;
	public AuthDomain login (AuthDomain domain) throws Exception;
}
