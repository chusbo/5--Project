package com.project.sc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.project.sc.dao.SchoolDAO;
import com.project.sc.vo.SchoolVO;

@Service("schoolService")
@Transactional
public class SchoolServiceImpl implements SchoolService {

    @Autowired
    private SchoolDAO schoolDAO;

    @Override
    public List<SchoolVO> getAllSubs() throws Exception {
        return schoolDAO.selectAllSubs();
    }

    @Override
    public List<SchoolVO> getSubsByNos(List<String> nos) throws Exception {
        return schoolDAO.selectSubsByNos(nos);
    }

    @Override
    public List<SchoolVO> getAllSubNames() throws Exception {
        return schoolDAO.selectAllSubNames();
    }

    @Override
    public void addSub(SchoolVO sub) throws Exception {
        schoolDAO.insertSub(sub);
    }

    @Override
    public void removeSub(String no) throws Exception {
        schoolDAO.deleteSub(no);
    }
}
