package com.project.sc.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

public interface SchoolController {
	// 모든 과목 목록을 가져와서 뷰에 전달
	ModelAndView listSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 특정 과목을 검색하여 결과를 뷰에 전달
	ModelAndView searchSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 과목 추가 폼을 보여주는 뷰를 반환
	ModelAndView addSubjectForm(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 새로운 과목을 추가하고 과목 목록 페이지로 리다이렉트
	ModelAndView addSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 과목을 삭제하고 과목 목록 페이지로 리다이렉트
	ModelAndView deleteSubject(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 특정 사용자의 정보를 가져와서 뷰에 전달
	ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 사용자의 정보를 업데이트하고 결과를 뷰에 전달
	ModelAndView updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 특정 학기의 평균 점수를 가져와서 학년별로 그룹화하여 뷰에 전달
	ModelAndView showGrades(HttpServletRequest request, HttpServletResponse response) throws Exception;

	// 학생들의 등수를 학년별로 그룹화하여 뷰에 전달
	ModelAndView showRanks(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
