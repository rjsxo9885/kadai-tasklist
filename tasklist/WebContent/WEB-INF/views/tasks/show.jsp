<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <h2>id : ${task.id}의 상세 페이지</h2>

        <p>타이틀：<c:out value="${task.title}" /></p>
        <p>메세지：<c:out value="${task.content}" /></p>
        <p>작성시간：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p>수정시간：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

        <p><a href="${pageContext.request.contextPath}/index">돌아간다</a></p>
        <p> <a href="${pageContext.request.contextPath}/edit?id=${task.id}">이 메시지 편집 </a></p>

    </c:param>
</c:import>