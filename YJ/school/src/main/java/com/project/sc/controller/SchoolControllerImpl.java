package com.project.sc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.sc.service.SchoolService;
import com.project.sc.vo.SchoolVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller("SchoolController")
public class SchoolControllerImpl implements SchoolController {
    
    @Autowired
    private SchoolService memberService;
    
    @Autowired
    private SchoolVO schoolVO;

    @GetMapping("/school/login.do")
    public String login() {
        return "login"; // loginForm.jsp와 같은 뷰 이름을 반환
    }
    
    //로그인
    @PostMapping("/school/login.do")
    public ModelAndView login(SchoolVO school, RedirectAttributes rAttr, HttpServletRequest request,
                              HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView();
        SchoolVO memberVO = memberService.login(school);
        if (memberVO != null) {
            // 로그인 성공
            HttpSession session = request.getSession();
            session.setAttribute("member", memberVO);
            session.setAttribute("isLogOn", true);
            // 세션 유효 시간 설정 (예: 30분)
            session.setMaxInactiveInterval(1800); // 초 단위, 30분

            // 추가적인 기능을 위한 조건 추가 (user_grant가 admin인 경우)
            if (memberVO.getUser_grant().equals("admin")) {
                mav.setViewName("redirect:/school/adminMain.do"); // 관리자 대시보드로 리다이렉트
            } else {
                mav.setViewName("redirect:/school/main.do"); // 일반 사용자 메인 페이지로 리다이렉트
            }

        } else {
            // 로그인 실패
            rAttr.addFlashAttribute("result", "아이디 또는 비밀번호가 일치하지 않습니다.");
            mav.setViewName("redirect:/school/loginForm.do"); // 로그인 폼 페이지로 리다이렉트
        }
        return mav;
    }

    
    //메인페이지
    @Override
    @GetMapping("/school/main.do")
    public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List main = memberService.mains();
        ModelAndView mav = new ModelAndView("/main");

        mav.addObject("main", main);
        return mav;
    }
    
  //관리자 메인페이지
    @Override
    @GetMapping("/school/adminMain.do")
    public ModelAndView adminMain(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List adminMain = memberService.adminMains();
        ModelAndView mav = new ModelAndView("/adminMain");

        mav.addObject("adminMain", adminMain);
        return mav;
    }
}
