package com.project.sc.dao;

import java.util.List;

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
	public List<SchoolVO> selectAllboard() throws DataAccessException;
	public List<SchoolVO> selectAlladminBoard() throws DataAccessException;
	public SchoolVO selectAllboardDetail(int aid) throws DataAccessException;
	public SchoolVO selectAlladminBoardDetail(int aid) throws Exception;
	void insertBoard(SchoolVO schoolVO) throws Exception;
	void deleteBoard(int aid) throws Exception;
	void updateBoard(SchoolVO schoolVO) throws Exception;
	
}
