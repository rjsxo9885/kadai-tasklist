<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <h2>id : ${tasks.id}のページ</h2>

        <p>タスク：<c:out value="${tasks.title}" /></p>
        <p>タスク内容：<c:out value="${tasks.content}" /></p>
        <p>タスク登録時間：<fmt:formatDate value="${tasks.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p>タスク修正時間：<fmt:formatDate value="${tasks.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>

        <p><a href="${pageContext.request.contextPath}/Index">戻る</a></p>
        <p> <a href="${pageContext.request.contextPath}/edit?id=${tasks.id}">がタスクを変更 </a></p>

    </c:param>
</c:import>