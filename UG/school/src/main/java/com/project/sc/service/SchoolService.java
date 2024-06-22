package com.project.sc.service;

import java.util.List;
import com.project.sc.vo.SchoolVO;

public interface SchoolService {
	List<SchoolVO> getAllSubs() throws Exception;

	List<SchoolVO> getSubsByNos(List<String> nos) throws Exception;

	List<SchoolVO> getAllSubNames() throws Exception;

	void addSub(SchoolVO sub) throws Exception;

	void removeSub(String no) throws Exception;
}
