<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
</head>
<body>

1. �ּ��� �����Դϴ�. <br/>

<%
String str1 = "�ּ�1";
String str2 = "�ּ�2";
%>

<!-- 
<%= str1 %>
���� html �ּ��Դϴ�.
 -->

<!-- 
<%= str2 %>
���� html �ּ��Դϴ�.
 -->

<%--
	���� JSP �ּ��Դϴ�.
 --%>


<%
//�ּ�ó���� ����
// ����ó���� ����
%>


<h1>ȫ html</h1> -(jsp �Ѿ����)-> .java -(java compile��)-> .class -(was run)-> view(Browser)���� �Ⱥ��� -(�ҽ�����)-> ������<br/>
<!-- ȫ -->  -(jsp �Ѿ����)-> .java -(java compile��)-> .class -(was run)-> view(Browser)���� �Ⱥ��� -(�ҽ�����)-> ������<br/>
<%//ȫ %> -(jsp �Ѿ����)-> .java -(java compile��)-> �ڹ� �ּ��� ������ �ȴ�<br/>
<%--ȫ --%> -(jsp �Ѿ����)-> jsp�ּ��� .java�ε� ���Ѿ<br/>






</body>
</html>