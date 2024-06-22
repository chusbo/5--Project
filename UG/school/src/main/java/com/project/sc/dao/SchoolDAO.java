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

	List<SchoolVO> selectSubsByNos(List<String> subNos) throws DataAccessException;

	List<SchoolVO> selectAllSubNames() throws DataAccessException;

	void insertSub(SchoolVO sub) throws DataAccessException;

	void deleteSub(String subNo) throws DataAccessException;

	SchoolVO selectUserById(String userId) throws DataAccessException;

	void updateUser(SchoolVO user) throws DataAccessException;
}
