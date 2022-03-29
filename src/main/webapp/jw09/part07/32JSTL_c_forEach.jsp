<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("EUC_KR");
%>


1. c:forEach 이용 Array 전송되는 ParamValues 출력(begin=0,step=1인 경우)
<br />
<!--  paramValue는 EL내장객체로 [파라미터이름,값의배열]을 저장한 Map객체 -->
<c:forEach var="i" items="${paramValues.sw}" begin="0" step="1">
	선택하신 SW는 : ${i}<br />
</c:forEach>
<br />

2. c:forEach 이용 Array 전송되는 ParamValues 출력(begin,step 없는 경우)
<br />
<c:forEach var="i" items="${paramValues.sw}">
	선택하신 SW는 : ${i}<br />
</c:forEach>
<br />

3. c:forEach 이용 Map으로 전송되어 오는 Param 출력
<br />
<!-- param은 EL내장객체로 [파라미터이름,값]을 저장한 Map객체 -->
<c:forEach var="i" items="${param}">
${i.key}:${i.value}<br />
</c:forEach>
<br />

4. c:forEach 이용 Map 으로 전송되어 오는 Param 출력
<br />
<c:forEach var="i" items="${param }">
	<c:if test="${!empty param.name}">
${param.name}님의 나이는 ${param.age}입니다.<br />
	</c:if>
</c:forEach>
<br />

5. c:forEach 이용 Map 으로 전송되어 오는 Param출력
<br />
<c:forEach var="i" items="${param}">
	<c:if test="${i.key=='name'}">
${param.name}님의 나이는 ${param.age}입니다.<br />
	</c:if>
</c:forEach>