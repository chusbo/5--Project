package com.project.sc.service;

import java.util.List;

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
    public List<SchoolVO> adminMains() throws Exception {
        return schoolDAO.selectAlladminMain();
    }
}
