<%@ page contentType="text/html;charset=EUC-KR" %>

<%@ page import="jw.service.user.vo.UserVO"%>
<%@page import="jw.service.user.dao.UserDao" %>

<%if(request.getMethod().equals("GET")) {%>
	<jsp:forward page="login.html"/>
<%}%>

<%
 	request.setCharacterEncoding("EUC_KR");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	UserVO userVO = new UserVO();
	userVO.setId(id);
	userVO.setPwd(pwd);

	UserDao userDAO = new UserDao();
	userDAO.getUser(userVO);

%>

<html>
<head></head>
<body>
<h2>Login ȭ��</h2>
	<%if(userVO.isActive()){ %>
		<%= id %> �� ȯ���մϴ�.
		<% session.setAttribute("userVO", userVO); %>
	<%} else{ %>
		id,pwd�� Ȯ���ϼ���.
		<%} %>
<p/><p/><a href='/edu/jw07/login.html'>�ڷ�</a>
</body>
</html>