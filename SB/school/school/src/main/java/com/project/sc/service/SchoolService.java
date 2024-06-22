package com.project.sc.service;

import java.util.List;

import com.project.sc.vo.SchoolVO;

public interface SchoolService {
    public List listst() throws Exception;
    public SchoolVO InfoStudent(String stNo) throws Exception;
    public void DeleteStudent(String stNo) throws Exception;
}