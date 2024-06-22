package com.project.sc.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import com.project.sc.vo.SchoolVO;

@Mapper
@Repository("schoolDAO")
public interface SchoolDAO {
	List<SchoolVO> selectAllSubs() throws DataAccessException;

	List<SchoolVO> selectSubsByNos(List<String> nos) throws DataAccessException;

	List<SchoolVO> selectAllSubNames() throws DataAccessException;

	int insertSub(SchoolVO sub) throws DataAccessException;

	int deleteSub(String no) throws DataAccessException;
}
