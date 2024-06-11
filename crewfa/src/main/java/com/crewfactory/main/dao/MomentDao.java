package com.crewfactory.main.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.BlogDomain;

@Mapper
public interface MomentDao {
	
	public List <BlogDomain> select() throws Exception;
	public BlogDomain view (int idx) throws Exception;
	public boolean insert (BlogDomain domain) throws Exception;
	public boolean update (BlogDomain domain) throws Exception;
	public void delete (int idx) throws Exception;

}
