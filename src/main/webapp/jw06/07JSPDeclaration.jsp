<%@ page contentType="text/html;charset=euc-kr" %>

<!-- Declaration Tag : method, Field(member variable)선언 -->
<%!
	///Field
	int count=0;
	///Method
	public int gugudan(int i,int j){
		return i*j;
	}
%>

<html>
<head></head>

<body>
<h2>1. 구구단을 출력합니다.</h2><br/>

<% for(int i=1;i<10;i++){	%>
		<%= i+" 단을 출력합니다. 이건 static 코딩 이렇게 하면 안대" %><br/>
	<%for(int j=1;j<10;j++) {  %>
			<%= i+" X "+j+ " = "+ i*j %><br/>
	<%} %>
<% }%>											


<% for(int i=1;i<10;i++){	%>
		<%= i%>단을 출력합니다. 이건 dynamic한 코딩 글자도 html임 dynamic한 자바객체만 묶어야해<br/>
	<%for(int j=1;j<10;j++) {  %>
			<%= i%> X <%=j%>= <%=i*j %><br/>
	<%} %>
<% }%>	
<!-- 위의 Scriptlet , Expression tag 사용한 것과 아래의 coding 비교 -->

	<% 
		for(int i=1;i<10;i++){	
			out.println ( i+" 단을 출력합니다. <br/>");
			for(int j=1;j<10;j++) {
				out.println( i+" X "+j+ " = "+ i*j+"<br/>" );
			} 
		}
	%>


<hr/><hr/>

<h2>2. gugudan() method  사용 구구단 출력.</h2><br/>

<% for(int i=1;i<10;i++){	%>
		<%= i+" 단을 출력합니다." %><br/>
		<%	for(int j=1;j<10;j++) {  %>
			<%= this.gugudan(i,j) %><br/>
		<%} %>		
<% }%>	

</body>
</html>