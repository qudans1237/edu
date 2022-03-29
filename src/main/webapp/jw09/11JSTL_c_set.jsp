<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="num1" value="100" scope="page"/>
<c:set var="num2"/>

<%
String abc =(String)pageContext.getAttribute("nume2");
System.out.println("_"+abc+"_");
%>

num 1: ${empty pageScope.num1} num1 = ${pageScope.num1}<br/>
num2 : ${empty num2} nume2 = _${num2}_<br/>
num1+num2: ${num1+num2}

<c:out value="${num1+num2}"/><br/>

<c:set var="num1" value="${num1+100}"/>
num1: ${num1}<br/><hr/>

<c:remove var="num1" scope="page"/>

num1 : ${empty num1} num1 = _${num1}_<br/>
nume : ${empty num2} num2 = _${num2}_