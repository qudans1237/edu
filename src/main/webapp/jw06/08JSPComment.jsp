<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
</head>
<body>

1. 주석문 연습입니다. <br/>

<%
String str1 = "주석1";
String str2 = "주석2";
%>

<!-- 
<%= str1 %>
나는 html 주석입니다.
 -->

<!-- 
<%= str2 %>
나는 html 주석입니다.
 -->

<%--
	나는 JSP 주석입니다.
 --%>


<%
//주석처리만 했음
// 개행처리라 하음
%>


<h1>홍 html</h1> -(jsp 넘어가는중)-> .java -(java compile중)-> .class -(was run)-> view(Browser)에서 안보임 -(소스보기)-> 보여짐<br/>
<!-- 홍 -->  -(jsp 넘어가는중)-> .java -(java compile중)-> .class -(was run)-> view(Browser)에서 안보임 -(소스보기)-> 보여짐<br/>
<%//홍 %> -(jsp 넘어가는중)-> .java -(java compile중)-> 자바 주석은 컴파일 안댐<br/>
<%--홍 --%> -(jsp 넘어가는중)-> jsp주석은 .java로도 못넘어감<br/>






</body>
</html>