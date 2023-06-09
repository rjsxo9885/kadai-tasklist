<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク新規登録ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/create">
            <!--   <c:import url="_form.jsp" /> -->

            <label for="title">タスク</label><br /> <input type="text" name="title"
                id="title" value="${task.title}" /> <br />
            <br /> <label for="content_msg">タスク内容</label><br /> <input
                type="text" name="content" id="content_msg"
                value="${task.content}" /> <br />
            <br /> <input type="hidden" name="_token" value="${_token}" />
            <button type="submit">投稿</button>
        </form>

        <p>
            <a href="${pageContext.request.contextPath}/Index">一覧に戻る</a>
        </p>

    </c:param>
</c:import>