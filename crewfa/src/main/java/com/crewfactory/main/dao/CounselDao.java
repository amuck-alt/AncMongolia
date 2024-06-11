package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.CounselDomain;

@Mapper
public interface CounselDao {
	public List <CounselDomain> select() throws Exception;
	public List <CounselDomain> selectSpc() throws Exception;
	public CounselDomain view (int idx) throws Exception;
	public boolean insert (CounselDomain domain) throws Exception;
	public boolean update (CounselDomain domain) throws Exception;
	public void delete (int m_idx) throws Exception;
	public List <CounselDomain> selectBlack() throws Exception;
}
