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
    @GetMapping("/subject/listSubjects.do")
    public ModelAndView listSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<SchoolVO> subsList = schoolService.getAllSubs();
        return new ModelAndView("/subject/subList", "subsList", subsList);
    }

    @Override
    @GetMapping("/subject/searchSubjects.do")
    public ModelAndView searchSubjects(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String[] subNos = request.getParameterValues("sub_no");
        List<SchoolVO> subsList = (subNos == null || subNos.length == 0) ? schoolService.getAllSubs()
                : schoolService.getSubsByNos(Arrays.asList(subNos));
        List<SchoolVO> subNames = schoolService.getAllSubNames();
        ModelAndView mav = new ModelAndView("/subject/subSearchList");
        mav.addObject("subsList", subsList);
        mav.addObject("subNames", subNames);
        mav.addObject("selectedNos", subNos != null ? Arrays.asList(subNos) : null);
        return mav;
    }

    @Override
    @GetMapping("/subject/addSubForm.do")
    public ModelAndView addSubjectForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return new ModelAndView("/subject/addSubForm");
    }

    @Override
    @PostMapping("/subject/addSub.do")
    public ModelAndView addSubject(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String subNo = request.getParameter("sub_no");
        String subName = request.getParameter("sub_name");

        SchoolVO sub = new SchoolVO();
        sub.setSub_no(subNo);
        sub.setSub_name(subName);

        schoolService.addSub(sub);
        return new ModelAndView("redirect:/subject/listSubjects.do");
    }

    @Override
    @PostMapping("/subject/deleteSub.do")
    public ModelAndView deleteSubject(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String subNo = request.getParameter("sub_no");
        schoolService.removeSub(subNo);
        return new ModelAndView("redirect:/subject/listSubjects.do");
    }
}
