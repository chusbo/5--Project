package com.project.sc.service;

import java.util.List;
import java.util.Map;

import com.project.sc.vo.SchoolVO;

public interface SchoolService {
	// 모든 과목 정보를 가져오는 메서드
	List<SchoolVO> getAllSubs() throws Exception;

	// 특정 과목 번호 목록에 해당하는 과목 정보를 가져오는 메서드
	List<SchoolVO> getSubsByNos(List<String> subNos) throws Exception;

	// 모든 과목의 이름과 번호를 가져오는 메서드
	List<SchoolVO> getAllSubNames() throws Exception;

	// 새로운 과목을 추가하는 메서드
	void addSub(SchoolVO sub) throws Exception;

	// 특정 과목 번호에 해당하는 과목을 삭제하는 메서드
	void removeSub(String subNo) throws Exception;

	// 특정 사용자 ID에 해당하는 사용자 정보를 가져오는 메서드
	SchoolVO getUserById(String userId) throws Exception;

	// 특정 사용자 정보를 업데이트하는 메서드
	void updateUser(SchoolVO user) throws Exception;

	// 모든 학년과 과목별 평균 점수를 가져오는 메서드
	List<Map<String, Object>> getGradeAverages() throws Exception;

	// 특정 학기에 대한 학년과 과목별 평균 점수를 가져오는 메서드
	List<Map<String, Object>> getAvgScoresBySem(String semester) throws Exception;

	// 학년별 학생들의 평균 점수와 등수를 가져오는 메서드
	List<Map<String, Object>> getRanks() throws Exception;
}
