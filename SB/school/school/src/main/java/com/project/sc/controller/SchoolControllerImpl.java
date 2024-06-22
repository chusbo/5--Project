package com.project.sc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.sc.service.SchoolService;
import com.project.sc.vo.SchoolVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller("SchoolController")
public class SchoolControllerImpl implements SchoolController {
    
    @Autowired
    private SchoolService schoolService;
    
    @Override
    @GetMapping("/stList.do")
    public ModelAndView listst(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List stList = schoolService.listst();
        ModelAndView mav = new ModelAndView("stList");
        mav.addObject("stList", stList);
        return mav;
    }
    
    @Override
    @GetMapping("/stInfo.do")
    public ModelAndView stInfo(HttpServletRequest request, HttpServletResponse response, @RequestParam("stNo") String stNo) throws Exception {
        SchoolVO student = schoolService.InfoStudent(stNo);
        ModelAndView mav = new ModelAndView("stInfo");
        mav.addObject("student", student);
        return mav;
    }         

    @Override
    @GetMapping("/DeleteStudent.do")
    public ModelAndView DeleteStudent(@RequestParam("stNo") String stNo, HttpServletRequest request, HttpServletResponse response) throws Exception {
        schoolService.DeleteStudent(stNo);
        ModelAndView mav = new ModelAndView("redirect:/stList.do");
        return mav;
    }
}