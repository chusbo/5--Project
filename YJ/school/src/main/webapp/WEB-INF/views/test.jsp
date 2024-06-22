<!--package com.project.sc.controller;-->

<!--import java.sql.SQLException;-->
<!--import java.util.List;-->

<!--import org.springframework.beans.factory.annotation.Autowired;-->
<!--import org.springframework.stereotype.Controller;-->
<!--import org.springframework.web.bind.annotation.GetMapping;-->
<!--import org.springframework.web.bind.annotation.PathVariable;-->
<!--import org.springframework.web.bind.annotation.PostMapping;-->
<!--import org.springframework.web.bind.annotation.RequestBody;-->
<!--import org.springframework.web.servlet.ModelAndView;-->
<!--import org.springframework.web.servlet.mvc.support.RedirectAttributes;-->

<!--import com.project.sc.dao.NewsDAO;-->
<!--import com.project.sc.vo.News;-->

<!--@Controller-->
<!--@RequestMapping("/news")-->
<!--public class NewsController {-->

<!--    final NewsDAO dao;-->

<!--    @Autowired-->
<!--    public NewsController(NewsDAO dao) {-->
<!--        this.dao = dao;-->
<!--    }-->

<!--    // 뉴스 등록 폼-->
<!--    @GetMapping("/add")-->
<!--    public String showAddNewsForm() {-->
<!--        return "addNews"; // addNews.jsp로 이동-->
<!--    }-->

<!--    // 뉴스 등록-->
<!--    @PostMapping("/add")-->
<!--    public ModelAndView addNews(News news, RedirectAttributes rAttr) {-->
<!--        ModelAndView mav = new ModelAndView();-->
<!--        try {-->
<!--            dao.addNews(news);-->
<!--            mav.setViewName("redirect:/news/list");-->
<!--            rAttr.addFlashAttribute("message", "뉴스가 성공적으로 등록되었습니다.");-->
<!--        } catch(Exception e) {-->
<!--            e.printStackTrace();-->
<!--            mav.setViewName("addNews");-->
<!--            mav.addObject("message", "뉴스 등록 실패");-->
<!--        }-->
<!--        return mav;-->
<!--    }-->

<!--    // 뉴스 삭제-->
<!--    @GetMapping("/delete/{aid}")-->
<!--    public ModelAndView delNews(@PathVariable("aid") int aid, RedirectAttributes rAttr) {-->
<!--        ModelAndView mav = new ModelAndView();-->
<!--        try {-->
<!--            dao.delNews(aid);-->
<!--            mav.setViewName("redirect:/news/list");-->
<!--            rAttr.addFlashAttribute("message", "뉴스가 성공적으로 삭제되었습니다. - " + aid);-->
<!--        } catch(SQLException e) {-->
<!--            e.printStackTrace();-->
<!--            mav.setViewName("newsList");-->
<!--            mav.addObject("message", "뉴스 삭제 실패 - " + aid);-->
<!--        }-->
<!--        return mav;-->
<!--    }-->

<!--    // 뉴스 목록-->
<!--    @GetMapping("/list")-->
<!--    public ModelAndView getNewsList() {-->
<!--        ModelAndView mav = new ModelAndView("newsList");-->
<!--        try {-->
<!--            List<News> newsList = dao.getAll();-->
<!--            mav.addObject("newsList", newsList);-->
<!--        } catch(Exception e) {-->
<!--            e.printStackTrace();-->
<!--            mav.addObject("message", "뉴스 목록을 불러오는 데 실패했습니다.");-->
<!--        }-->
<!--        return mav;-->
<!--    }-->

<!--    // 뉴스 상세 정보-->
<!--    @GetMapping("/{aid}")-->
<!--    public ModelAndView getNews(@PathVariable("aid") int aid) {-->
<!--        ModelAndView mav = new ModelAndView("newsDetail");-->
<!--        try {-->
<!--            News news = dao.getNews(aid);-->
<!--            mav.addObject("news", news);-->
<!--        } catch(SQLException e) {-->
<!--            e.printStackTrace();-->
<!--            mav.addObject("message", "뉴스 정보를 불러오는 데 실패했습니다.");-->
<!--        }-->
<!--        return mav;-->
<!--    }-->
<!--}-->

<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>-->

<!--<!DOCTYPE html>-->
<!--<html>-->
<!--<head>-->
<!--    <title>News List</title>-->
<!--</head>-->
<!--<body>-->
<!--    <h1>News List</h1>-->

<!--    <c:if test="${not empty message}">-->
<!--        <div>${message}</div>-->
<!--    </c:if>-->

<!--    <c:forEach var="news" items="${newsList}">-->
<!--        <div>-->
<!--            <a href="${pageContext.request.contextPath}/news/${news.aid}" class="text-decoration-none">-->
<!--                [${news.aid}] ${news.title} - ${news.date}-->
<!--            </a>-->
<!--            <a href="${pageContext.request.contextPath}/news/delete/${news.aid}" class="text-decoration-none">삭제</a>-->
<!--        </div>-->
<!--    </c:forEach>-->
    
<!--    <a href="${pageContext.request.contextPath}/news/add">뉴스 추가</a>-->
<!--</body>-->
<!--</html>-->


<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>-->

<!--<!DOCTYPE html>-->
<!--<html>-->
<!--<head>-->
<!--    <title>News Detail</title>-->
<!--</head>-->
<!--<body>-->
<!--    <h1>News Detail</h1>-->

<!--    <c:if test="${not empty message}">-->
<!--        <div>${message}</div>-->
<!--    </c:if>-->

<!--    <div>-->
<!--        <h2>${news.title}</h2>-->
<!--        <p>${news.date}</p>-->
<!--        <p>${news.content}</p>-->
<!--    </div>-->
    
<!--    <a href="${pageContext.request.contextPath}/news/list">뉴스 목록으로 돌아가기</a>-->
<!--</body>-->
<!--</html>-->


<!--<!DOCTYPE html>-->
<!--<html>-->
<!--<head>-->
<!--    <title>Add News</title>-->
<!--</head>-->
<!--<body>-->
<!--    <h1>Add News</h1>-->

<!--    <form action="${pageContext.request.contextPath}/news/add" method="post">-->
<!--        <div>-->
<!--            <label for="title">Title:</label>-->
<!--            <input type="text" id="title" name="title" required>-->
<!--        </div>-->
<!--        <div>-->
<!--            <label for="content">Content:</label>-->
<!--            <textarea id="content" name="content" required></textarea>-->
<!--        </div>-->
<!--        <div>-->
<!--            <button type="submit">Add News</button>-->
<!--        </div>-->
<!--    </form>-->

<!--    <c:if test="${not empty message}">-->
<!--        <div>${message}</div>-->
<!--    </c:if>-->

<!--    <a href="${pageContext.request.contextPath}/news/list">뉴스 목록으로 돌아가기</a>-->
<!--</body>-->
<!--</html>-->



