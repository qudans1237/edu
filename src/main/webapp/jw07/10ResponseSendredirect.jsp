<%@ page contentType="text/html;charset=EUC-KR" %>
<html>
<body>
:: 10ResponseSendredirect.jsp ���� <br/>

<% request.setAttribute("aaa", new String("�����")); %>

<%response.sendRedirect("09JSPActionForward.jsp"); %>
:: 10ResponseSendredirect.jsp �� <br/>

</body>
</html>