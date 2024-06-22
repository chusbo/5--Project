package com.project.sc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.sc.vo.SchoolVO;


@Mapper
@Repository("SchoolDAO")
public interface SchoolDAO {
	public SchoolVO loginById(SchoolVO schoolVO) throws DataAccessException;
	public List<SchoolVO> selectAllmain() throws DataAccessException;
	public List<SchoolVO> selectAlladminMain() throws DataAccessException;
	
}
