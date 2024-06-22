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
}