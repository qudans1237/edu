<%@ page contentType="text/html;charset=EUC-KR" %>
<html>
<body>

::06JSPActionIncludeParam.jsp ���� <br/>

<% 
String value = "local variable";

request.setAttribute("aaa", value);
session.setAttribute("bbb", new String("session ObjectScope ����� ���ڿ�"));
application.setAttribute("ccc", new String("application ObjectScope ����� ���ڿ�"));
%>

<jsp:include page="07JSPActionIncludeParam.jsp">
	<jsp:param value="str" name="<%=value%>"/>
</jsp:include>

::06JSPActionIncludeParam.jsp �� <br/>

</body>
</html>