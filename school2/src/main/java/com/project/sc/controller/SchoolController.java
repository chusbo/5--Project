package com.project.sc.controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.sc.vo.SchoolVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface SchoolController {
	ModelAndView login(@ModelAttribute("school") SchoolVO school, RedirectAttributes rAttr,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView adminMain(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView mainBoList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView board(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView adminBoard(HttpServletRequest request, HttpServletResponse response) throws Exception;	
	ModelAndView boardDetail(int aid, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView adminBoardDetail(int aid, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView addBoard(HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception;
	ModelAndView deleteBoard(int aid, HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception;
	ModelAndView updateBoard(SchoolVO schoolVO, HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception;
	ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//ug
	ModelAndView listSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView searchSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView addSubjectForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView addSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView deleteSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView showGrades(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView showRanks(HttpServletRequest request, HttpServletResponse response) throws Exception;

	//sb
	public ModelAndView listst(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
    public ModelAndView stInfo(HttpServletRequest request, HttpServletResponse response, String stNo) throws Exception;
    
    public ModelAndView addStudent(@ModelAttribute("stAdd") SchoolVO schoolVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
   
    public ModelAndView DeleteStudent(@RequestParam("stNo") String stNo, HttpServletRequest request, HttpServletResponse response) throws Exception;
    
    public ModelAndView newStudentForm(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView modStudentForm(String stNo, HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView listGrade(@RequestParam("stNo") String stNo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView searchAttendance(@RequestParam("stName") String st_name, @RequestParam("st_no") String st_no, String startDate, String endDate) throws Exception;
	
	public ModelAndView updateAttendance(String attendanceNo, String newStatus, String st_no, String startDate, String endDate) throws Exception;

	
	//ds	
	ModelAndView listtc(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView tcInfo(HttpServletRequest request, HttpServletResponse response, String tcNo) throws Exception;    
	}