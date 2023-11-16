package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.ReservationDomain;
import com.crewfactory.main.domain.SearchDomain;

@Mapper
public interface ReservationDao {
	public List <ReservationDomain> select (ReservationDomain domain) throws Exception;
	public ReservationDomain view (int idx) throws Exception;
	public boolean insert (ReservationDomain domain) throws Exception;
	public boolean update (ReservationDomain domain) throws Exception;
	public boolean updateMemo (ReservationDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;

}
