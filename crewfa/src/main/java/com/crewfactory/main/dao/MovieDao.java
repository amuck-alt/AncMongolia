package com.crewfactory.main.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.MovieDomain;

@Mapper
public interface MovieDao {
	
	public List <MovieDomain> select() throws Exception;
	public MovieDomain view (int idx) throws Exception;
	public boolean insert (MovieDomain domain) throws Exception;
	public boolean update (MovieDomain domain) throws Exception;
	public void delete (int idx) throws Exception;

}
