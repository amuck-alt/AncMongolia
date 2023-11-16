package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.CKInterviewDomain;

@Mapper
public interface CKInterviewDao {
	public List <CKInterviewDomain> select (String catenum) throws Exception;	
	public List <CKInterviewDomain> select1st (String catenum) throws Exception;
	public List <CKInterviewDomain> select2nd (String catenum) throws Exception;
	public List <CKInterviewDomain> selectIntv1 (String catenum) throws Exception;
	public List <CKInterviewDomain> selectIntv2 (String catenum) throws Exception;
	public CKInterviewDomain view (int m_idx) throws Exception;
	public void insert (CKInterviewDomain md) throws Exception;
	public void update (CKInterviewDomain md) throws Exception;
	public void delete (int m_idx) throws Exception;
}
