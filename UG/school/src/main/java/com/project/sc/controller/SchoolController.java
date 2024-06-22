package com.project.sc.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

public interface SchoolController {
	ModelAndView listSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView searchSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView addSubjectForm(HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView addSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView deleteSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
