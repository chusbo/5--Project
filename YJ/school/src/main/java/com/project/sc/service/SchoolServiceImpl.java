package com.project.sc.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sc.dao.SchoolDAO;
import com.project.sc.vo.SchoolVO;

@Service
public class SchoolServiceImpl implements SchoolService {
	
	@Autowired
	private SchoolDAO schoolDAO;
	
//-----------------------------------yj	
	@Override
    public SchoolVO login(SchoolVO schoolVO) throws Exception {
        return schoolDAO.loginById(schoolVO);
    }
	
	@Override
    public List<SchoolVO> mains() throws Exception {
        return schoolDAO.selectAllmain();
    }
	
	@Override
	public List<SchoolVO> selectAllmain() throws Exception {
		return schoolDAO.selectAllmain();
	}
	
	@Override
	public List<SchoolVO> selectAllmainBoList() throws Exception {
		return schoolDAO.selectAllmainBoList();
	}

	@Override
	public List<SchoolVO> selectAllboard() throws Exception {
		return schoolDAO.selectAllboard();
	}

	@Override
	public SchoolVO selectAllboardDetail(int aid) throws Exception {
		return schoolDAO.selectAllboardDetail(aid);
	}

	@Override
	public void insertBoard(SchoolVO schoolVO) throws Exception {
	    schoolDAO.insertBoard(schoolVO);
	}

	@Override
    public void deleteBoard(int aid) throws Exception {
        schoolDAO.deleteBoard(aid);
    }

	@Override
	public SchoolVO selectAlladminBoardDetail(int aid) throws Exception {
		return schoolDAO.selectAlladminBoardDetail(aid);
	}

	@Override
	public List<SchoolVO> selectAlladminBoard() throws Exception {
		return schoolDAO.selectAlladminBoard();
	}

	@Override
	public void updateBoard(SchoolVO schoolVO) throws Exception {
		schoolDAO.updateBoard(schoolVO);
		
	}

//------------------------------------------------------ug	
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
		
//--------------------------------------------------------sb
	@Override
	public List listst() throws Exception {
		List stList = null;
		stList = schoolDAO.StudentList();
		return stList;
	}

	@Override
	public SchoolVO InfoStudent(String stNo) throws Exception {
		return schoolDAO.InfoStudent(stNo);
	}

	@Override
	public int addStudent(SchoolVO school) throws Exception {
		return schoolDAO.InsertStudent(school);
	}

	@Override
	public void UpdateStudent(SchoolVO student) throws Exception {
		schoolDAO.UpdateStudent(student);
	}

	@Override
	public void DeleteStudent(String stNo) throws Exception {
		schoolDAO.DeleteStudent(stNo);
	}

	@Override
	public List listGrade(String stNo) throws Exception {
		List listGrade = null;
		listGrade = schoolDAO.StudentGrade(stNo);
		return listGrade;
	}

	@Override
	public List<SchoolVO> getAttendance(String st_name, String st_no, Date startDate, Date endDate) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("st_name", st_name);
		paramMap.put("st_no", st_no);
		paramMap.put("startDate", startDate);
		paramMap.put("endDate", endDate);

		return schoolDAO.selectAttendance(paramMap);
	}

//------------------------------------ds

	@Override
	public int addTeacher(SchoolVO school) throws Exception {
		return schoolDAO.InsertTeacher(school);
	}

	@Override
	public void DeleteTeacher(String tcNo) throws Exception {
		schoolDAO.DeleteTeacher(tcNo);
	}

	@Override
	public void attendanceUpdate(String tcNo, String endDate) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("tcNo", tcNo);
		paramMap.put("endDate", endDate);
		schoolDAO.attendanceUpdate(paramMap);
	}

	@Override
	public List<SchoolVO> findAttendanceByTcNoAndDate(String tcNo, String attendanceDate) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("tcNo", tcNo);
		paramMap.put("attendanceDate", attendanceDate);
		return schoolDAO.AttendanceAll(paramMap);
	}

	@Override
	public void updateAttendance(String attendanceNo, String newStatus, String st_no, String startDate, String endDate)
			throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("attendanceNo", attendanceNo);
		paramMap.put("newStatus", newStatus);
		paramMap.put("st_no", st_no);
		paramMap.put("startDate", startDate);
		paramMap.put("endDate", endDate);
		schoolDAO.updateAttendance(paramMap);
	}

	@Override
	public List<SchoolVO> tcList() throws Exception {
		List<SchoolVO> tcList = null;
		tcList = schoolDAO.TeacherList();
		return tcList;
	}

	@Override
	public SchoolVO getTeacherByNo(String tcNo) throws Exception {
		return schoolDAO.getTeacherByNo(tcNo);
	}

	@Override
	public List<SchoolVO> adminTcList() throws Exception {
		List<SchoolVO> adminTcList = null;
		adminTcList = schoolDAO.adminTeacherList();
		return adminTcList;
	}

	@Override
	public SchoolVO getAdminTeacherByNo(String tcNo) throws Exception {
		return schoolDAO.getAdminTeacherByNo(tcNo);
	}

	@Override
	public List<SchoolVO> findByTcNo(String tcNo) throws Exception {
		return schoolDAO.findByTcNo(tcNo);
	}

	@Override
	public SchoolVO findTcNameByTcNo(String tcNo) throws Exception {
		return schoolDAO.findTcNameByTcNo(tcNo);
	}

	@Override
	public List<SchoolVO> subjectGrades(String tcNo) throws Exception {
		return schoolDAO.subjectGrades(tcNo);
	}

	@Override
	public void insertSubjectGrades(SchoolVO schoolVO) throws Exception {
		schoolDAO.insertSubjectGrades(schoolVO);
	}

	@Override
	public void insertSubjectGradesProcess(SchoolVO schoolVO) throws Exception {
		schoolDAO.insertSubjectGradesProcess(schoolVO);
	}

	@Override
	public void updateSubjectGrades(SchoolVO grade_no) throws Exception {
		schoolDAO.updateSubjectGrades(grade_no);
	}

	@Override
	public void updateScore(int gradeNo, int newScore) throws Exception {
		schoolDAO.updateScore(gradeNo, newScore);
	}

}
