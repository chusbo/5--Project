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

	
}
