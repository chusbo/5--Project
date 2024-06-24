package com.project.sc.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.sc.service.SchoolService;
import com.project.sc.vo.SchoolVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class SchoolControllerImpl implements SchoolController {
    
    @Autowired
    private SchoolService schoolService;
    
    @Autowired
    private SchoolVO schoolVO;

    @GetMapping("/login.do")
    public String login() {
        return "login"; // loginForm.jsp와 같은 뷰 이름을 반환
    }
    
    // 로그인
    @PostMapping("/login.do")
    public ModelAndView login(@ModelAttribute("school") SchoolVO school, RedirectAttributes rAttr, HttpServletRequest request,
                              HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView();
		SchoolVO schoolVO = schoolService.login(school);
        if (schoolVO != null) {
            // 로그인 성공
            HttpSession session = request.getSession();
            session.setAttribute("school", schoolVO);
            session.setAttribute("isLogOn", true);
            // 세션 유효 시간 설정 (예: 30분)
            session.setMaxInactiveInterval(1800); // 초 단위, 30분

            // 추가적인 기능을 위한 조건 추가 (user_grant가 admin인 경우)
            if (schoolVO.getUser_grant().equals("admin")) {
                mav.setViewName("redirect:/adminMain.do"); // 관리자 대시보드로 리다이렉트
            } else {
                mav.setViewName("redirect:/main.do"); // 일반 사용자 메인 페이지로 리다이렉트
            }

        } else {
            // 로그인 실패
            rAttr.addFlashAttribute("result", "아이디 또는 비밀번호가 일치하지 않습니다.");
            mav.setViewName("redirect:/login.do"); // 로그인 폼 페이지로 리다이렉트
        }
        return mav;
    }
    
    //로그아웃
    @Override
    @GetMapping("/logout.do")
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        session.removeAttribute("school");
        session.setAttribute("isLogOn", false);

        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/login.do");
        return mav;
    }
    
    // 메인 페이지
    @Override
    @GetMapping("/main.do")
    public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List main = schoolService.mains();
        ModelAndView mav = new ModelAndView("/main");

        mav.addObject("main", main);
        return mav;
    }
    
    // 관리자 메인 페이지
    @Override
    @GetMapping("/adminMain.do")
    public ModelAndView adminMain(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List adminMain = schoolService.adminMains();
        ModelAndView mav = new ModelAndView("/adminMain");

        mav.addObject("adminMain", adminMain);
        return mav;
    }
    
    // 공지사항
    @Override
    @GetMapping("/boList.do")
    public ModelAndView board(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("/boList");
        try {
            List<SchoolVO> boList = schoolService.selectAllboard();
            mav.addObject("boardList", boList); // "boardList"라는 이름으로 데이터를 추가
        } catch(Exception e) {
            e.printStackTrace();
            mav.addObject("message", "공지사항 목록을 불러오는 데 실패했습니다.");
        }
        return mav;
    }
    
    //관리자 공지사항
    @Override
    @GetMapping("/adminBoList.do")
    public ModelAndView adminBoard(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("/adminBoList");
        try {
            List<SchoolVO> adminBoList = schoolService.selectAlladminBoard();
            mav.addObject("adminBoList", adminBoList); // "boardList"라는 이름으로 데이터를 추가
        } catch(Exception e) {
            e.printStackTrace();
            mav.addObject("message", "공지사항 목록을 불러오는 데 실패했습니다.");
        }
        return mav;
    }
    
    // 공지사항 정보 페이지
    @Override
    @GetMapping("/boListView.do/{aid}")
    public ModelAndView boardDetail(@PathVariable("aid") int aid, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("boListView");
        try {
            SchoolVO schoolVO = schoolService.selectAllboardDetail(aid); // aid를 전달하여 해당 공지사항 상세 정보 가져오기
            mav.addObject("boardDetail", schoolVO); // schoolVO 객체를 boardDetail 속성으로 추가
        } catch(Exception e) {
            e.printStackTrace();
            mav.addObject("message", "공지사항 정보를 불러오는 데 실패했습니다.");
        }
        return mav;
    }
    
    // 관리자 공지사항 정보 페이지
    @Override
    @GetMapping("/adminBoListView.do/{aid}")
    public ModelAndView adminBoardDetail(@PathVariable("aid") int aid, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("adminBoListView");
        try {
            SchoolVO schoolVO = schoolService.selectAlladminBoardDetail(aid); // aid를 전달하여 해당 공지사항 상세 정보 가져오기
            mav.addObject("adminBoardDetail", schoolVO); // schoolVO 객체를 boardDetail 속성으로 추가
        } catch(Exception e) {
            e.printStackTrace();
            mav.addObject("message", "공지사항 정보를 불러오는 데 실패했습니다.");
        }
        return mav;
    }

    // 공지사항 등록
    @GetMapping("/addBoard.do")
    public ModelAndView addBoardForm() {
        ModelAndView mav = new ModelAndView("addBoard");
        return mav;
    }
    
    @Override
    @PostMapping("/addBoard.do")
    public ModelAndView addBoard(HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception {
        ModelAndView mav = new ModelAndView();

        try {
            SchoolVO schoolVO = new SchoolVO();
            schoolVO.setBoard_no(request.getParameter("board_no"));
            schoolVO.setTitle(request.getParameter("title"));
            schoolVO.setArticle(request.getParameter("article"));

            schoolService.insertBoard(schoolVO);

            // 성공적으로 등록되었음을 알리는 메시지를 ModelAndView에 직접 추가
            mav.addObject("message", "공지사항 등록이 완료되었습니다.");
            mav.setViewName("redirect:/adminBoList.do");
        } catch(Exception e) {
            e.printStackTrace();
            mav.addObject("message", "공지사항 등록 실패했습니다.");
            mav.setViewName("addBoard");
        }

        return mav;
    }
    
    // 공지사항 삭제
    @Override
    @GetMapping("/delete/{aid}")
    public ModelAndView deleteBoard(@PathVariable("aid") int aid, HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception {
        ModelAndView mav = new ModelAndView();
        try {
            SchoolVO schoolVO = schoolService.selectAllboardDetail(aid);
            schoolService.deleteBoard(aid); // 공지사항 삭제
            mav.setViewName("redirect:/adminBoList.do");
            rAttr.addFlashAttribute("message", "공지사항이 성공적으로 삭제되었습니다.");
        } catch(SQLException e) {
            e.printStackTrace();
            mav.setViewName("boList");
            mav.addObject("message", "공지사항 삭제 실패");
        }
        return mav;
    }
    
 // 공지사항 수정 처리
    
    @GetMapping("/modBoard.do/{aid}")
    public ModelAndView modBoard(@PathVariable("aid") int aid, HttpServletRequest request, HttpServletResponse response) throws Exception {
        SchoolVO schoolVO = schoolService.selectAlladminBoardDetail(aid);
        ModelAndView mav = new ModelAndView("/modBoard");
        mav.addObject("schoolVO", schoolVO);
        return mav;
    }
    
    @Override
    @PostMapping("/updateBoard.do")
    public ModelAndView updateBoard(@ModelAttribute("schoolVO") SchoolVO schoolVO, HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception {
        ModelAndView mav = new ModelAndView();

        try {
            schoolService.updateBoard(schoolVO);
            mav.setViewName("redirect:/adminBoList.do");
            rAttr.addFlashAttribute("message", "공지사항 수정이 완료되었습니다.");
        } catch (Exception e) {
            e.printStackTrace();
            mav.addObject("message", "공지사항 수정 실패했습니다.");
            mav.setViewName("adminBoListView");
        }

        return mav;
    }

    
}
