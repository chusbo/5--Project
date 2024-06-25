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
    public List<SchoolVO> adminMains() throws Exception {
        return schoolDAO.selectAlladminMain();
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
			
			// 출결 상태 업데이트 메서드
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


//------------------------------------tc
		
		@Override
	    public List listtc() throws Exception {
	        List stLitc = null;
	        stLitc = schoolDAO.TeacherList();
	        return stLitc;
	    }
		
		@Override
	    public SchoolVO InfoTeacher(String tcNo) throws Exception {
	        return schoolDAO.InfoTeacher(tcNo);
	    }
		
}
