package com.project.sc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.sc.vo.SchoolVO;

@Mapper
@Repository("SchoolDAO")
public interface SchoolDAO {
	public List<SchoolVO> StudentList() throws DataAccessException;
    public SchoolVO InfoStudent(String stNo) throws DataAccessException;
    public void DeleteStudent(String stNo) throws DataAccessException;
}