package com.crewfactory.main.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.crewfactory.main.domain.ReservationDomain;

@Mapper
public interface ReservationDao {
	public List <ReservationDomain> select (ReservationDomain domain) throws Exception;
	public ReservationDomain view (int idx) throws Exception;
	public boolean insert (ReservationDomain domain) throws Exception;
	public boolean update (ReservationDomain domain) throws Exception;
	public boolean updateEnd (ReservationDomain domain) throws Exception;
	public boolean delete (int idx) throws Exception;
	
	public List <ReservationDomain> selectMemo (int idx) throws Exception;
	public boolean insertMemo (ReservationDomain domain) throws Exception;
	
	public List <ReservationDomain> selectIndex () throws Exception;

}
