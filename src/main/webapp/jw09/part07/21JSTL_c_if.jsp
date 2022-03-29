<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("EUC_KR");
%>
<h3>::JSTL c:if을 사용</h3>
<c:if test="ture">
 if문 내부1<br />
</c:if>
<br />
<hr />

<c:if test="false">
 if문 내부2<br />
</c:if>
<br />
<hr />

<h3>:: CLient Form Data처리</h3>
1.이름 :
<%=request.getParameter("name")%>
2.이름 : $
<param.name>
<br />


<c:if test="${ param.name =='홍길동'}">
 3.홍길동님 환영합니다.<br />
</c:if> <c:if test="${!empty param.name}">
 4.${param.name}님 환영합니다.<br />
</c:if> <c:set var="level" value="성인" scope="session" /> <c:if
	test="${param.age < 19}">
	<c:set var="level" value="청소년" />
</c:if> 5.${param.name}님은 나이 ${param.age}로 ${level}입니다.<br />
확인 1: ${sessionScope.level}<br />
확인 2: ${pageScope.level}<br />
<hr />

<c:if test="${!empty paramValues.sw[0]}">
	6 선택하신 SW: ${paramvalues.sw[0]}<br />
</c:if> <c:if test="${!empty paramValues.sw[1]}">
	6 선택하신 SW: ${paramvalues.sw[1]}<br />
</c:if> <c:if test="${!empty paramValues.sw[2]}">
	6 선택하신 SW: ${paramvalues.sw[2]}<br />
</c:if>
<hr />

<c:choose>
	<c:when test="${param.age > 19 }">
	7.${param.name}님은 성인으로 나이:${param.age }<br />
	</c:when>
	<c:when test="${param.age < 18 }">
	7.${param.name}님은 청소년으로 나이:${param.age }<br />
	</c:when>
	<c:otherwise>
	7.${param.name}님은 청소년? 성인? 으로 나이:${param.age}<br />
	</c:otherwise>
</c:choose> <c:if test="${!empty param.name && !empty param.age }">
	<c:choose>
		<c:when test="${param.age > 19 }">
	7.${param.name}님은 성인으로 나이:${param.age }<br />
		</c:when>
		<c:when test="${param.age < 18 }">
	7.${param.name}님은 청소년으로 나이:${param.age }<br />
		</c:when>
		<c:otherwise>
	7.${param.name}님은 청소년? 성인? 으로 나이:${param.age}<br />
		</c:otherwise>
	</c:choose>
</c:if>