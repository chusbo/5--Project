package com.project.sc.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.project.sc.service.SchoolService;
import com.project.sc.vo.SchoolVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller("schoolController")
public class SchoolControllerImpl implements SchoolController {

	@Autowired
	private SchoolService schoolService;

	@Override
	@GetMapping("/listSubjects.do")
	public ModelAndView listSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<SchoolVO> subsList = schoolService.getAllSubs();
		return new ModelAndView("/subList", "subsList", subsList);
	}

	@Override
	@GetMapping("/searchSubjects.do")
	public ModelAndView searchSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] nos = request.getParameterValues("sub_no");
		List<SchoolVO> subsList;
		if (nos == null || nos.length == 0 || Arrays.asList(nos).contains("")) {
			subsList = schoolService.getAllSubs();
		} else {
			subsList = schoolService.getSubsByNos(Arrays.asList(nos));
		}
		List<SchoolVO> subNames = schoolService.getAllSubNames();
		ModelAndView mav = new ModelAndView("/subSearchList");
		mav.addObject("subsList", subsList);
		mav.addObject("subNames", subNames);
		mav.addObject("selectedNos", nos != null ? Arrays.asList(nos) : null);
		return mav;
	}

	@Override
	@GetMapping("/addSubForm.do")
	public ModelAndView addSubjectForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("/addSubForm");
	}

	@Override
	@PostMapping("/addSub.do")
	public ModelAndView addSubject(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String subNo = request.getParameter("sub_no");
		String subName = request.getParameter("sub_name");

		SchoolVO sub = new SchoolVO();
		sub.setSub_no(subNo);
		sub.setSub_name(subName);

		schoolService.addSub(sub);
		return new ModelAndView("redirect:/listSubjects.do");
	}

	@Override
	@PostMapping("/deleteSub.do")
	public ModelAndView deleteSubject(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String subNo = request.getParameter("sub_no");
		schoolService.removeSub(subNo);
		return new ModelAndView("redirect:/listSubjects.do");
	}

	@Override
	@GetMapping("/myPage.do")
	public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("user_id");
		SchoolVO user = schoolService.getUserById(userId);
		return new ModelAndView("/myPage", "user", user);
	}

	@Override
	@PostMapping("/updateUser.do")
	public ModelAndView updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("user_id");
		String userPhone = request.getParameter("tc_phone");
		String userAddr = request.getParameter("tc_addr");

		SchoolVO user = new SchoolVO();
		user.setUser_id(userId);
		user.setTc_phone(userPhone);
		user.setTc_addr(userAddr);

		schoolService.updateUser(user);

		ModelAndView mav = new ModelAndView("/myPage");
		mav.addObject("user", user);
		mav.addObject("updateMessage", "정보가 변경되었습니다.");
		return mav;
	}
}
