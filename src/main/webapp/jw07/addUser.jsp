<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="jw.service.user.vo.UserVO" %>
    <%@page import="jw.service.user.dao.UserDao" %>
    
<%
	if(request.getMethod().equals("GET")){
		response.sendRedirect("../addUser.html");
		return;
	}

request.setCharacterEncoding("euc_kr");

String id= request.getParameter("id");
String pwd = request.getParameter("pwd");
int no = Integer.parseInt(request.getParameter("no"));

UserVO userVO = new UserVO();
userVO.setId(id);
userVO.setPwd(pwd);
userVO.setNo(no);

UserDao userDao = new UserDao();
%>

<% if(userDao.addUser(userVO)){ %>
<%=userVO.getId() %>ȸ������ �����մϴ�.
<%}else{ %>
�ٽ� ���Կ��<br/> <hr/>
<jsp:include page="/jw07/addUser.html"/>
<%} %>
