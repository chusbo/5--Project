package com.project.sc.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.sc.service.SchoolService;
import com.project.sc.vo.SchoolVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class SchoolControllerImpl implements SchoolController {

	@Autowired
	private SchoolService schoolService;

	// 모든 과목 목록을 가져와서 뷰에 전달
	@Override
	@GetMapping("/listSubjects.do")
	public ModelAndView listSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("/subList", "subsList", schoolService.getAllSubs());
	}

	// 특정 과목을 검색하여 결과를 뷰에 전달
	@Override
	@GetMapping("/searchSubjects.do")
	public ModelAndView searchSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] nos = request.getParameterValues("sub_no");
		List<SchoolVO> subsList = (nos == null || nos.length == 0 || Arrays.asList(nos).contains(""))
				? schoolService.getAllSubs()
				: schoolService.getSubsByNos(Arrays.asList(nos));
		return new ModelAndView("/subSearchList", "subsList", subsList)
				.addObject("subNames", schoolService.getAllSubNames())
				.addObject("selectedNos", nos != null ? Arrays.asList(nos) : null);
	}

	// 과목 추가 폼을 보여주는 뷰를 반환
	@Override
	@GetMapping("/addSubForm.do")
	public ModelAndView addSubjectForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("/addSubForm");
	}

	// 새로운 과목을 추가하고 과목 목록 페이지로 리다이렉트
	@Override
	@PostMapping("/addSub.do")
	public ModelAndView addSubject(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SchoolVO sub = new SchoolVO();
		sub.setSub_no(request.getParameter("sub_no"));
		sub.setSub_name(request.getParameter("sub_name"));
		schoolService.addSub(sub);
		return new ModelAndView("redirect:/listSubjects.do");
	}

	// 과목을 삭제하고 과목 목록 페이지로 리다이렉트
	@Override
	@PostMapping("/deleteSub.do")
	public ModelAndView deleteSubject(HttpServletRequest request, HttpServletResponse response) throws Exception {
		schoolService.removeSub(request.getParameter("sub_no"));
		return new ModelAndView("redirect:/listSubjects.do");
	}

	// 특정 사용자의 정보를 가져와서 뷰에 전달
	@Override
	@GetMapping("/myPage.do")
	public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("/myPage", "user", schoolService.getUserById(request.getParameter("user_id")));
	}

	// 사용자의 정보를 업데이트하고 결과를 뷰에 전달
	@Override
	@PostMapping("/updateUser.do")
	public ModelAndView updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SchoolVO user = new SchoolVO();
		user.setUser_id(request.getParameter("user_id"));
		user.setTc_phone(request.getParameter("tc_phone"));
		user.setTc_addr(request.getParameter("tc_addr"));
		schoolService.updateUser(user);
		return new ModelAndView("/myPage", "user", user).addObject("updateMessage", "정보가 변경되었습니다.");
	}

	// 특정 학기의 평균 점수를 가져와서 학년별로 그룹화하여 뷰에 전달
	@Override
	@GetMapping("/grades.do")
	public ModelAndView showGrades(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String semester = (request.getParameter("semester") != null) ? request.getParameter("semester") : "1-1";
		List<Map<String, Object>> gradesList = schoolService.getAvgScoresBySem(semester);
		Map<String, Map<String, Double>> groupedData = gradesList.stream().collect(Collectors.groupingBy(
				entry -> (String) entry.get("grade"),
				Collectors.toMap(entry -> (String) entry.get("subject"), entry -> (Double) entry.get("avg_score"))));
		return new ModelAndView("gradesList", "gradesList", groupedData).addObject("selectedSemester", semester);
	}

	// 학생들의 등수를 학년별로 그룹화하여 뷰에 전달
	@GetMapping("/ranks.do")
	public ModelAndView showRanks(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Map<String, Object>> ranksList = schoolService.getRanks();
		ranksList.forEach(entry -> {
			double avgScore = (double) entry.get("avg_score");
			entry.put("avg_score", String.format("%.2f", avgScore));
		});
		Map<String, List<Map<String, Object>>> groupedData = ranksList.stream()
				.collect(Collectors.groupingBy(entry -> entry.get("grade").toString()));
		return new ModelAndView("ranksList", "groupedData", groupedData);
	}
}
