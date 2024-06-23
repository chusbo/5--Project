package com.project.sc.service;

import java.util.List;
import java.util.Map;

import com.project.sc.vo.SchoolVO;

public interface SchoolService {
	List<SchoolVO> getAllSubs() throws Exception;

	List<SchoolVO> getSubsByNos(List<String> subNos) throws Exception;

	List<SchoolVO> getAllSubNames() throws Exception;

	void addSub(SchoolVO sub) throws Exception;

	void removeSub(String subNo) throws Exception;

	SchoolVO getUserById(String userId) throws Exception;

	void updateUser(SchoolVO user) throws Exception;

	List<Map<String, Object>> getGradeAverages() throws Exception;

	List<Map<String, Object>> getAvgScoresBySem(String semester) throws Exception;

	List<Map<String, Object>> getRanks() throws Exception;
}
