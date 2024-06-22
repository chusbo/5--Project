package com.project.sc.service;

import java.util.List;

import com.project.sc.vo.SchoolVO;

public interface SchoolService {

	SchoolVO login(SchoolVO schoolVO) throws Exception;
	List<SchoolVO> mains() throws Exception;
	List<SchoolVO> adminMains() throws Exception;
	List<SchoolVO> selectAllboard() throws Exception;
	SchoolVO selectAllboardDetail(int aid) throws Exception;

	
}
