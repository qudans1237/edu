<%@ page contentType="text/html;charset=EUC-KR" %>
<%

request.setCharacterEncoding("EUC_KR");
response.setContentType("text/html;charset=EUC_KR");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

jw04.UserVO userVO = (jw04.UserVO)session.getAttribute("userVO");
System.out.println("session�� ����� USERVO ���� Ȯ��:"+userVO);

if(!(id==null||id.equals(""))){
	userVO = new jw04.UserVO();
	userVO.setId(id);
	userVO.setPasswd(pwd);
	
	jw04.UserDataSourceDao userDataSourceDao =new jw04.UserDataSourceDao();
	userDataSourceDao.getUser(userVO);
}

%>
<html>
<head>
</head>
<body>
<h2> Login ȭ��</h2>
<% if(userVO != null && userVO.isActive()) { %>
 <%= userVO.getId() %> �� ȯ���մϴ�.
 <%
 session.setAttribute("userVO", userVO);%>
 <%}else{ %>
 	Login ���� id,pwd�� Ȯ���ϼ���.
 	<%} %>

<p></p><a href='edu/jw07/loginBeanDataSourceSessionJSP.html'>�ڷ�</a>
</body>
</html>