package com.crewfactory.main.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.crewfactory.main.domain.MemberDomain;

@Mapper
public interface MemberDao {
	public List <MemberDomain> select () throws Exception;
	public MemberDomain view (int idx) throws Exception;
	public void insert (MemberDomain md) throws Exception;
	public void update (MemberDomain md) throws Exception;
	public void delete (int idx) throws Exception;
	public int check (MemberDomain md) throws Exception;
	public int overlap (MemberDomain md) throws Exception;
	public MemberDomain findIdpw (MemberDomain md) throws Exception;
}
