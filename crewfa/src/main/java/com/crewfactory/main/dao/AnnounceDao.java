package com.crewfactory.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.AnnounceDomain;

@Mapper
public interface AnnounceDao {
	
	public List <AnnounceDomain> selectNew() throws Exception;
	public List <AnnounceDomain> selectAdmin(Map<String, Object> paramMap) throws Exception;
	public List <AnnounceDomain> selectAll(Map<String, Object> paramMap) throws Exception;
	public List <AnnounceDomain> selectEvent(Map<String, Object> paramMap) throws Exception;
	
	public AnnounceDomain selectOne (int m_idx) throws Exception;
	public void insert (AnnounceDomain md) throws Exception;
	public void update (AnnounceDomain md) throws Exception;
	public void delete (int m_idx) throws Exception;
	public int selectTotal (Map<String, Object> paramMap) throws Exception;
}
