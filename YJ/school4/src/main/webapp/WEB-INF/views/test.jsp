

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









