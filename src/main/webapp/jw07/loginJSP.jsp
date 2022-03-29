<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("EUC-KR");
//    response.setContentType("text/html;charset=EUC-KR");
//    PrintWriter out = response.getWriter();	//만들어줘서 주석처리

    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    String fromDbId= null;
    String fromDbPwd = null;

    try {
        String dburl = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
        String dbuser = "scott";
        String dbpwd = "tiger";

        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection(dburl, dbuser, dbpwd);

        PreparedStatement pStmt = con.prepareStatement("SELECT id, pwd FROM users WHERE id=?");
        pStmt.setString(1,id);

        ResultSet rs = pStmt.executeQuery();

        if(rs.next()) {
            fromDbId = rs.getString("id");
            fromDbPwd = rs.getString("pwd");

            System.out.println("db에서 확인한 id, pwd == > :"+fromDbId+" : "+fromDbPwd);
        } else {
            System.out.println("db에서 client에서 입력한 "+id+"와 "+pwd+"가 없습니다.");
        }

        rs.close();
        pStmt.close();
        con.close();
    } catch (Exception e) {
        System.out.println("====> JDBC 관련 Exception이 발생");
        e.printStackTrace();
    }
%>

<html>
<head></head>
<body>
<h2>Login 화면</h2>
    <!-- //DBMS Data와 Client Form Data 비교 회원 유무 판단 -->
    <% if(fromDbId != null && fromDbPwd != null && fromDbId.equals(id) && fromDbPwd.equals(pwd)) { %>
        <%=id %> 님 환영합니다.
    <%} else { %>
        id, pwd를 확인하세요.
    <%} %>
<p/><p/><a href="/edu/jw07/loginJSP.html">뒤로</a>
</body>
</html>