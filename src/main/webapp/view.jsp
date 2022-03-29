<%-- <%@ page contentType="text/html; charset=euc-kr" %>
<%@ pageEncoding="euc-kr""%>
<%@ page import="spring.servive.domain.User' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
</head>
<body>
1.Servlet Reuest ObjectScope save information print.<br/>

<% User user01 = (User)request.getAttribute("user01"); %>
<% if(user01 != null){ %>
	ID : <%=user01.getUserId()%><br/>
	pwd : <%=user01.getUserPasswd() %><br/>
<% }else{ %>
	Request ObjectScope not save information
<%}%>

<hr/><hr/>
2.Servlet Session ObjectScope save information print.<br/>

<% User user02 = (User)session.getAttribute("user02"); %>
<% if(user02 != null){ %>
	ID : <%=user01.getUserId()%><br/>
	pwd : <%=user01.getUserPasswd() %><br/>
<% }else{ %>
	Session ObjectScope not save information
<%}%>
<hr/><hr/>

3.Servlet Application ObjectScope print save information.<br/>
<% User user03 = (User)application.getAttribute("user03"); %>
<% if(user03 != null){ %>
	ID : <%=user01.getUserId()%><br/>
	pwd : <%=user01.getUserPasswd() %><br/>
<% }else{ %>
	Application ObjectScope not save information
<%}%>

</body>
</html>
--%>