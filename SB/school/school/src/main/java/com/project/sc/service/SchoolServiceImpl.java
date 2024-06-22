package com.project.sc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.project.sc.dao.SchoolDAO;
import com.project.sc.vo.SchoolVO;

@Service("SchoolService")
@Transactional(propagation = Propagation.REQUIRED)
public class SchoolServiceImpl implements SchoolService {
    @Autowired
    private SchoolDAO schoolDAO;
    
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
	public void DeleteStudent(String stNo) throws Exception {
		schoolDAO.DeleteStudent(stNo);
	}
}