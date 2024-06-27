package com.project.sc.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.sc.vo.SchoolVO;


@Mapper
@Repository("SchoolDAO")
public interface SchoolDAO<board> {
//-----------------------------yj	
	public SchoolVO loginById(SchoolVO schoolVO) throws DataAccessException;
	public List<SchoolVO> selectAllmain() throws DataAccessException;
	public List<SchoolVO> selectAllmainBoList() throws DataAccessException;
	public List<SchoolVO> selectAllboard() throws DataAccessException;
	public List<SchoolVO> selectAlladminBoard() throws DataAccessException;
	public SchoolVO selectAllboardDetail(int aid) throws DataAccessException;
	public SchoolVO selectAlladminBoardDetail(int aid) throws Exception;
	void insertBoard(SchoolVO schoolVO) throws Exception;
	void deleteBoard(int aid) throws Exception;
	void updateBoard(SchoolVO schoolVO) throws Exception;
	
//------------------------------ug	
	List<SchoolVO> selectAllSubs() throws DataAccessException;
	List<SchoolVO> selectSubsByNos(List<String> subNos) throws DataAccessException;
	List<SchoolVO> selectAllSubNames() throws DataAccessException;
	void insertSub(SchoolVO sub) throws DataAccessException;
	void deleteSub(String subNo) throws DataAccessException;
	SchoolVO selectUserById(String userId) throws DataAccessException;
	void updateUser(SchoolVO user) throws DataAccessException;
	// 모든 학년과 과목별 평균 점수를 가져오는 메서드
    List<Map<String, Object>> selectGradeAverages() throws DataAccessException;

    // 특정 학기에 대한 학년과 과목별 평균 점수를 가져오는 메서드
    List<Map<String, Object>> getAvgScoresBySem(String semester) throws DataAccessException;

    // 학년별 학생들의 평균 점수와 등수를 가져오는 메서드
    List<Map<String, Object>> getRanks() throws DataAccessException;
	
//-------------------------------sb
	public List<SchoolVO> StudentList() throws DataAccessException;
    public SchoolVO InfoStudent(String stNo) throws DataAccessException;
    public int InsertStudent(SchoolVO schoolVO) throws DataAccessException;
    public void UpdateStudent(SchoolVO student) throws DataAccessException;
    public void DeleteStudent(String stNo) throws DataAccessException;
    public List<SchoolVO> StudentGrade(String stNo) throws DataAccessException;
    public List<SchoolVO> selectAttendance(Map<String, Object> paramMap) throws DataAccessException;
   
	
//-------------------------------ds    
    
    public int InsertTeacher(SchoolVO schoolVO) throws DataAccessException;
    public void DeleteTeacher(String tcNo) throws DataAccessException;
 	public void attendanceUpdate(Map<String, Object> paramMap) throws DataAccessException;
 	public List<SchoolVO> AttendanceAll(Map<String, Object> paramMap) throws DataAccessException;
 	public void updateAttendance(Map<String, Object> paramMap) throws DataAccessException;
 	public List<SchoolVO> TeacherList() throws DataAccessException;
	public SchoolVO getTeacherByNo(String tcNo) throws DataAccessException;	
	public List<SchoolVO> adminTeacherList() throws DataAccessException;
	public SchoolVO getAdminTeacherByNo(String tcNo) throws DataAccessException;
	public List<SchoolVO> findByTcNo(String tcNo) throws DataAccessException;
	public SchoolVO findTcNameByTcNo(String tcNo) throws DataAccessException;
	public List<SchoolVO> subjectGrades(String tcNo) throws DataAccessException;
	public void insertSubjectGrades(SchoolVO schoolVO) throws DataAccessException;
	public void insertSubjectGradesProcess(SchoolVO schoolVO) throws DataAccessException;
	public void updateSubjectGrades(SchoolVO grade_no) throws DataAccessException;
	void updateScore(@Param("gradeNo") int gradeNo, @Param("newScore") int newScore) throws DataAccessException;


}
