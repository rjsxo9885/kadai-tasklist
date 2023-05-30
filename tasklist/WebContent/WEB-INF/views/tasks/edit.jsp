<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>id:${task.id }의 수정 페이지</h2>

        <form method="POST" action="${pageContext.request.contextPath }/update">
            <c:import url="_form.jsp"></c:import>
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>

          <p><a href="${pageContext.request.contextPath}/index">목록으로 돌아가기</a></p>

        <p> <a href="#" onclick="confirmDestroy();">이 메시지 삭제</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/destroy" >
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
        function confirmDestroy() {
            if(confirm("정말 삭제하시겠습니까?") ) {
                document.forms[1].submit();
            }
        }
        </script>
    </c:param>
</c:import>