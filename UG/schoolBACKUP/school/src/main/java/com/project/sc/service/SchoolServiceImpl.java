package com.project.sc.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.project.sc.dao.SchoolDAO;
import com.project.sc.vo.SchoolVO;

@Service("schoolService")
@Transactional(propagation = Propagation.REQUIRED)
public class SchoolServiceImpl implements SchoolService {

	@Autowired
	private SchoolDAO schoolDAO;

	// 모든 과목 정보를 가져오는 메서드
	@Override
	public List<SchoolVO> getAllSubs() throws Exception {
		return schoolDAO.selectAllSubs();
	}

	// 특정 과목 번호 목록에 해당하는 과목 정보를 가져오는 메서드
	@Override
	public List<SchoolVO> getSubsByNos(List<String> nos) throws Exception {
		return schoolDAO.selectSubsByNos(nos);
	}

	// 모든 과목의 이름과 번호를 가져오는 메서드
	@Override
	public List<SchoolVO> getAllSubNames() throws Exception {
		return schoolDAO.selectAllSubNames();
	}

	// 새로운 과목을 추가하는 메서드
	@Override
	public void addSub(SchoolVO sub) throws Exception {
		schoolDAO.insertSub(sub);
	}

	// 특정 과목 번호에 해당하는 과목을 삭제하는 메서드
	@Override
	public void removeSub(String subNo) throws Exception {
		schoolDAO.deleteSub(subNo);
	}

	// 특정 사용자 ID에 해당하는 사용자 정보를 가져오는 메서드
	@Override
	public SchoolVO getUserById(String userId) throws Exception {
		return schoolDAO.selectUserById(userId);
	}

	// 특정 사용자 정보를 업데이트하는 메서드
	@Override
	public void updateUser(SchoolVO user) throws Exception {
		schoolDAO.updateUser(user);
	}

	// 모든 학년과 과목별 평균 점수를 가져오는 메서드
	@Override
	public List<Map<String, Object>> getGradeAverages() throws Exception {
		return schoolDAO.selectGradeAverages();
	}

	// 특정 학기에 대한 학년과 과목별 평균 점수를 가져오는 메서드
	@Override
	public List<Map<String, Object>> getAvgScoresBySem(String semester) throws Exception {
		return schoolDAO.getAvgScoresBySem(semester);
	}

	// 학년별 학생들의 평균 점수와 등수를 가져오는 메서드
	@Override
	public List<Map<String, Object>> getRanks() throws Exception {
		return schoolDAO.getRanks();
	}

	// 기간별 출결 검색 메서드
	@Override
	public List<SchoolVO> getAttendance(String st_no, Date startDate, Date endDate) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("st_no", st_no);
		paramMap.put("startDate", startDate);
		paramMap.put("endDate", endDate);

		return schoolDAO.selectAttendance(paramMap);
	}
	
	 // 출결 상태 업데이트 메서드
	@Override
	public void updateAttendance(String attendanceNo, String newStatus) throws Exception {
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("attendanceNo", attendanceNo);
	    paramMap.put("newStatus", newStatus);
	    schoolDAO.updateAttendance(paramMap);
	}


}
