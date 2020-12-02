<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <div id="table">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>

        <p>こんにちは<c:out value="${login_person.name}" />さん</p>
            <c:choose>
                <c:when test="${person == 0}">
                <p>まだ登録がありません</p>
                </c:when>
                <c:otherwise>
                  <form method="get" action="<c:url value='/moneys/index' />">
                     <select name="year">
                     <c:forEach var="year" items="${moneys}"><option value="${year}" ><c:out value="${year}" /></option></c:forEach>
                    </select>年度の給料表を
                   <input type="submit" name="submit" value="表示" />
                 </form>
                 <br /><br />
                </c:otherwise>
            </c:choose>



        <p><a href="<c:url value='/moneys/new' />">バイト先の追加</a></p>
        </div>
    </c:param>
</c:import>