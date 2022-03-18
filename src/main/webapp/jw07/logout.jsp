<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="jw.service.user.vo.UserVO"%>

<%
	UserVO userVO = (UserVO) session.getAttribute("userVO");
	if (userVO == null) {
	userVO = new UserVO();
	}
%>

<%if (!userVO.isActive()) {%>
	<jspLinclude page="../jw07/login.html" />
	<br/><br/>
	<a href="/edu/jw07/addUser.html">회원가입....</a>
<%} else {%>
	<%=userVO.getId()%>님 로그인 하셨습니다.
	<br/><br/>
	<form method="post" action="<%=request.getRequestURL()%>">
		URL :<%=request.getRequestURL()%><br/>
		URI :<%=request.getRequestURI()%><br/> 
		<input type="submit" value="Logout" />
	</form>
	<br/><br/>
<%}%>


<%
	if (request.getMethod().equals("POST")) {
		//session.invalidate();
		//sessiong.removeAttribute("userVO");
		//userVO.setActive(false)
		response.sendRedirect("/edu/jw08/logout.jsp");
	}
%>