package com.project.sc.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.project.sc.vo.SchoolVO;

public interface SchoolService {
//-----------------------------yj
	SchoolVO login(SchoolVO schoolVO) throws Exception;
	List<SchoolVO> mains() throws Exception;
	List<SchoolVO> selectAllmain() throws Exception;
	List<SchoolVO> selectAlladminBoard() throws Exception;	
	List<SchoolVO> selectAllboard() throws Exception;
	List<SchoolVO> selectAllmainBoList() throws Exception;
	SchoolVO selectAllboardDetail(int aid) throws Exception;
	SchoolVO selectAlladminBoardDetail(int aid) throws Exception;
	void insertBoard(SchoolVO schoolVO) throws Exception;
	void deleteBoard(int aid) throws Exception;
	void updateBoard(SchoolVO schoolVO) throws Exception;
	
//------------------------------ug	
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
		
//-------------------------------sb
	public List listst() throws Exception;
    public SchoolVO InfoStudent(String stNo) throws Exception;
    public int addStudent(SchoolVO schoolVO) throws Exception;
    public void DeleteStudent(String stNo) throws Exception;
    public void UpdateStudent(SchoolVO student) throws Exception;
    public List listGrade(String stNo) throws Exception;
    public List<SchoolVO> getAttendance(String st_name, String st_no, Date startDate, Date endDate) throws Exception;
   
	
//------------------------------ds	
    public int addTeacher(SchoolVO schoolVO) throws Exception;
    public void DeleteTeacher(String tcNo) throws Exception;
 	public void attendanceUpdate(String tcNo, String endDate) throws Exception;
 	public List<SchoolVO> findAttendanceByTcNoAndDate(String tcNo, String attendanceDate) throws Exception;
 	public void updateAttendance(String attendanceNo, String newStatus, String st_no, String startDate, String endDate) throws Exception;
 	public List<SchoolVO> tcList() throws Exception;							
    public SchoolVO getTeacherByNo(String tcNo) throws Exception;			
    public List<SchoolVO> adminTcList() throws Exception;
	public SchoolVO getAdminTeacherByNo(String tcNo) throws Exception;
    public List<SchoolVO> findByTcNo(String tcNo) throws Exception; 			
    public SchoolVO findTcNameByTcNo(String tcNo) throws Exception;				
    public List<SchoolVO> subjectGrades(String tcNo) throws Exception;	
    public void insertSubjectGrades(SchoolVO schoolVO) throws Exception;    	
    public void insertSubjectGradesProcess(SchoolVO schoolVO) throws Exception;	
    public void updateSubjectGrades(SchoolVO grade_no) throws Exception;	
    public void updateScore(int gradeNo, int newScore) throws Exception;
	
	
}
