package com.project.sc.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.sc.vo.SchoolVO;

@Mapper
@Repository("schoolDAO")
public interface SchoolDAO {
	// 모든 과목 정보를 가져오는 메서드
	List<SchoolVO> selectAllSubs() throws DataAccessException;

	// 특정 과목 번호 목록에 해당하는 과목 정보를 가져오는 메서드
	List<SchoolVO> selectSubsByNos(List<String> subNos) throws DataAccessException;

	// 모든 과목의 이름과 번호를 가져오는 메서드
	List<SchoolVO> selectAllSubNames() throws DataAccessException;

	// 새로운 과목을 추가하는 메서드
	void insertSub(SchoolVO sub) throws DataAccessException;

	// 특정 과목 번호에 해당하는 과목을 삭제하는 메서드
	void deleteSub(String subNo) throws DataAccessException;

	// 특정 사용자 ID에 해당하는 사용자 정보를 가져오는 메서드
	SchoolVO selectUserById(String userId) throws DataAccessException;

	// 특정 사용자 정보를 업데이트하는 메서드
	void updateUser(SchoolVO user) throws DataAccessException;

	// 모든 학년과 과목별 평균 점수를 가져오는 메서드
	List<Map<String, Object>> selectGradeAverages() throws DataAccessException;

	// 특정 학기에 대한 학년과 과목별 평균 점수를 가져오는 메서드
	List<Map<String, Object>> getAvgScoresBySem(String semester) throws DataAccessException;

	// 학년별 학생들의 평균 점수와 등수를 가져오는 메서드
	List<Map<String, Object>> getRanks() throws DataAccessException;
}
