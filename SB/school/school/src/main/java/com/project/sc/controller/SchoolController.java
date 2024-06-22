package com.project.sc.controller;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface SchoolController {
	public ModelAndView listst(HttpServletRequest request, HttpServletResponse response) throws Exception;
    public ModelAndView stInfo(HttpServletRequest request, HttpServletResponse response, String stNo) throws Exception;
    public ModelAndView DeleteStudent(@RequestParam("stNo") String stNo, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
