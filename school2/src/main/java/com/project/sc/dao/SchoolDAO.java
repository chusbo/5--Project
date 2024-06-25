package com.project.sc.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.sc.vo.SchoolVO;


@Mapper
@Repository("SchoolDAO")
public interface SchoolDAO<board> {
	public SchoolVO loginById(SchoolVO schoolVO) throws DataAccessException;
	public List<SchoolVO> selectAllmain() throws DataAccessException;
	public List<SchoolVO> selectAlladminMain() throws DataAccessException;
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
	List<Map<String, Object>> selectGradeAverages() throws DataAccessException;
	List<Map<String, Object>> getAvgScoresBySem(String semester) throws DataAccessException;
	List<Map<String, Object>> getRanks() throws DataAccessException;
	
//-------------------------------sb
	public List<SchoolVO> StudentList() throws DataAccessException;
    public SchoolVO InfoStudent(String stNo) throws DataAccessException;
    public int InsertStudent(SchoolVO schoolVO) throws DataAccessException;
    public void UpdateStudent(SchoolVO student) throws DataAccessException;
    public void DeleteStudent(String stNo) throws DataAccessException;
    public List<SchoolVO> StudentGrade(String stNo) throws DataAccessException;
    public List<SchoolVO> selectAttendance(Map<String, Object> paramMap) throws DataAccessException;
    public void updateAttendance(Map<String, Object> paramMap) throws DataAccessException;
	
//-------------------------------tc    
    public List<SchoolVO> TeacherList() throws DataAccessException;
    public SchoolVO tcfoStudent(String tcNo) throws DataAccessException;
	public SchoolVO InfoTeacher(String tcNo)throws DataAccessException;

}
