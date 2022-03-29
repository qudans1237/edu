<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.util.*" %>

<h3>4.����(.,[])������ ���</h3>

<%
	pageContext.setAttribute("abc",new String("page Object Scope ���� ���ڿ�"));
 	
	request.setAttribute("abc", new String("request ObjectScope ���� ���ڿ�"));
	
	session.setAttribute("abc", new ArrayList());
	
	ArrayList arrayList = new ArrayList();
	arrayList.add(new String("ArrayList ���� ���ڿ�"));
	session.setAttribute("def", arrayList);
	
	HashMap hashMap = new HashMap();
	hashMap.put("zzz",new String("HashMap ���� ���ڿ�"));
	application.setAttribute("abc", hashMap);
%>

<!-- 
   	:: EL : ��ü ������ . �� [] �����ڸ� ����
   	:: EL : ObjectScope �� ��� �� �� �ִ� ��ü������ implicit Object ���� 
		page				==>pageScope,
		request			==>requestScope
		session			==> sessionScope
		application	==>applicationScop
-->
<h5>1. page ObjectScope ���� </h5>
    ${pageScope.abc}  =  ${pageScope["abc"]}


<h5> 2. request ObjectScope ���� </h5>
	${requestScope.abc} = ${requestScope["abc"]}


<h5>3.  session ObjectScope ���� : ����� ArrayList empty ����</h5> 
	
<h5>4.1  session n ObjectScope ���� : ����� ArrayList empty ����</h5> 
	 �� false = false

<h5>4.2  session ObjectScope ����</h5>
	 �� ArrayList  ����� ���ڿ�  =  ArrayList  ����� ���ڿ�


<h5>5.1 application ObjectScope ���� : ����� HashMap empty ����</h5>
	 �� false =  false

<h5>5.2  application ObjectScope ����</h5>
	 �� HashMap ����� ���ڿ� = HashMap ����� ���ڿ� <br/><hr/><br/>


<h3>Object Scope�� ������ �������� �ʰ� EL�� ��� abc ���ٽ�<br/>
		  � ObjectScope���� ����Ǵ� �� Ȯ������.<br/><br/>
	  	  � Object Scope�� �����ΰ� :  page ObjectScope ����� ���ڿ� </h3>