package com.project.sc.controller;

import org.springframework.web.bind.annotation.ModelAttribute;
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
	ModelAndView board(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView adminBoard(HttpServletRequest request, HttpServletResponse response) throws Exception;	
	ModelAndView boardDetail(int aid, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView adminBoardDetail(int aid, HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView addBoard(HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception;
	ModelAndView deleteBoard(int aid, HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception;
	ModelAndView updateBoard(SchoolVO schoolVO, HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception;
	ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView listSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView searchSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView addSubjectForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView addSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView deleteSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView showGrades(HttpServletRequest request, HttpServletResponse response) throws Exception;
	ModelAndView showRanks(HttpServletRequest request, HttpServletResponse response) throws Exception;

	}