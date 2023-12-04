package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.NoticeDomain;

@Mapper
public interface NoticeDao {
	
	public List <NoticeDomain> selectNew() throws Exception;
	
	public List <NoticeDomain> select() throws Exception;
	
	
	public NoticeDomain view (int m_idx) throws Exception;
	public void insert (NoticeDomain md) throws Exception;
	public void update (NoticeDomain md) throws Exception;
	public void delete (int m_idx) throws Exception;
	
}
