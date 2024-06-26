package com.project.sc.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.project.sc.vo.SchoolVO;

public interface SchoolService {

	SchoolVO login(SchoolVO schoolVO) throws Exception;
	List<SchoolVO> mains() throws Exception;
	List<SchoolVO> selectAllmain() throws Exception;
	List<SchoolVO> adminMains() throws Exception;
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
 // 전체 출석 업데이트
 	public void attendanceUpdate(String tcNo, String endDate) throws Exception;

 	// 출석 조회
 	public List<SchoolVO> findAttendanceByTcNoAndDate(String tcNo, String attendanceDate) throws Exception;

 	// 개별 출석 상태 업데이트
 	public void updateAttendance(String attendanceNo, String newStatus, String st_no, String startDate, String endDate)
 			throws Exception;
 // 선생 번호로 선생명 조회
 	
 	public List<SchoolVO> tcList() throws Exception;							// 선생 목록
    public SchoolVO getTeacherByNo(String tcNo) throws Exception;				// 선생 번호로 선생 정보 조회
    public List<SchoolVO> adminTcList() throws Exception;
	public SchoolVO getAdminTeacherByNo(String tcNo) throws Exception;
    public List<SchoolVO> findByTcNo(String tcNo) throws Exception; 			// 선생 번호로 담당 학생번호, 학생명 조회
    public SchoolVO findTcNameByTcNo(String tcNo) throws Exception;				// 선생 번호로 선생명 조회
    public List<SchoolVO> subjectGrades(String tcNo) throws Exception;	// 선생 번호로 담당 과목 성적 조회
    public void insertSubjectGrades(SchoolVO schoolVO) throws Exception;    	// 담당 과목 성적 입력
    public void insertSubjectGradesProcess(SchoolVO schoolVO) throws Exception;	// 담당 과목 성적 입력(처리)
    public void updateSubjectGrades(SchoolVO grade_no) throws Exception;	// 담당 과목 성적 수정
    public void updateScore(int gradeNo, int newScore) throws Exception;
	
	
}
