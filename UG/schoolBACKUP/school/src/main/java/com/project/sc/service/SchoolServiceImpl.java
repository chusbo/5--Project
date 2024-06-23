package com.project.sc.service;

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

	@Override
	public List<SchoolVO> getAllSubs() throws Exception {
		return schoolDAO.selectAllSubs();
	}

	@Override
	public List<SchoolVO> getSubsByNos(List<String> nos) throws Exception {
		return schoolDAO.selectSubsByNos(nos);
	}

	@Override
	public List<SchoolVO> getAllSubNames() throws Exception {
		return schoolDAO.selectAllSubNames();
	}

	@Override
	public void addSub(SchoolVO sub) throws Exception {
		schoolDAO.insertSub(sub);
	}

	@Override
	public void removeSub(String subNo) throws Exception {
		schoolDAO.deleteSub(subNo);
	}

	@Override
	public SchoolVO getUserById(String userId) throws Exception {
		return schoolDAO.selectUserById(userId);
	}

	@Override
	public void updateUser(SchoolVO user) throws Exception {
		schoolDAO.updateUser(user);
	}

	@Override
	public List<Map<String, Object>> getGradeAverages() throws Exception {
		return schoolDAO.selectGradeAverages();
	}

	@Override
	public List<Map<String, Object>> getAvgScoresBySem(String semester) throws Exception {
		return schoolDAO.getAvgScoresBySem(semester);
	}

	@Override
	public List<Map<String, Object>> getRanks() throws Exception {
	    return schoolDAO.getRanks();
	}
}
