package com.project.sc.service;

import java.util.List;
import com.project.sc.vo.SchoolVO;

public interface SchoolService {
    List<SchoolVO> getAllSubs() throws Exception;

    List<SchoolVO> getSubsByNos(List<String> subNos) throws Exception;

    List<SchoolVO> getAllSubNames() throws Exception;

    void addSub(SchoolVO sub) throws Exception;

    void removeSub(String subNo) throws Exception;

    SchoolVO getUserById(String userId) throws Exception;

    void updateUser(SchoolVO user) throws Exception;
}
