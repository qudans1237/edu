<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.util.*" %>

<h3>4.색인(.,[])연산자 사용</h3>

<%
	pageContext.setAttribute("abc",new String("page Object Scope 저장 문자열"));
 	
	request.setAttribute("abc", new String("request ObjectScope 저장 문자열"));
	
	session.setAttribute("abc", new ArrayList());
	
	ArrayList arrayList = new ArrayList();
	arrayList.add(new String("ArrayList 저장 문자열"));
	session.setAttribute("def", arrayList);
	
	HashMap hashMap = new HashMap();
	hashMap.put("zzz",new String("HashMap 저장 문자열"));
	application.setAttribute("abc", hashMap);
%>

<!-- 
   	:: EL : 자체 연산자 . 와 [] 연사자를 제공
   	:: EL : ObjectScope 을 사용 할 수 있는 자체적으로 implicit Object 제공 
		page				==>pageScope,
		request			==>requestScope
		session			==> sessionScope
		application	==>applicationScop
-->
<h5>1. page ObjectScope 접근 </h5>
    ${pageScope.abc}  =  ${pageScope["abc"]}


<h5> 2. request ObjectScope 접근 </h5>
	${requestScope.abc} = ${requestScope["abc"]}


<h5>3.  session ObjectScope 접근 : 저장된 ArrayList empty 유무</h5> 
	
<h5>4.1  session n ObjectScope 접근 : 저장된 ArrayList empty 유무</h5> 
	 ㅇ false = false

<h5>4.2  session ObjectScope 접근</h5>
	 ㅇ ArrayList  저장된 문자열  =  ArrayList  저장된 문자열


<h5>5.1 application ObjectScope 접근 : 저장된 HashMap empty 유무</h5>
	 ㅇ false =  false

<h5>5.2  application ObjectScope 접근</h5>
	 ㅇ HashMap 저장된 문자열 = HashMap 저장된 문자열 <br/><hr/><br/>


<h3>Object Scope의 영역을 지정하지 않고 EL을 사용 abc 접근시<br/>
		  어떤 ObjectScope값이 추출되는 지 확인하자.<br/><br/>
	  	  어떤 Object Scope의 내용인가 :  page ObjectScope 저장된 문자열 </h3>