package jw04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginBeanDataSource extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("EUC_KR");

		res.setContentType("text/html;charset=EUC_KR");
		PrintWriter out = res.getWriter();
		String id = req.getParameter("id");
		String pwd = req.getParameter("passwd");

		UserVO userVO = new UserVO();
		userVO.setId(id);
		userVO.setPasswd(pwd);
		
		UserDataSourceDao userDataSourceDao = new UserDataSourceDao();
		userDataSourceDao.getUser(userVO);
		
		out.println("<html>");
		out.println("<head></head>");
		out.println("<body>");
		out.println("<h2>Login 화면</h2>");
		
		if(userVO.isActive()) {
			out.println(id+"님 환영합니다.");
		}else {
			out.print("id,pwd를 확인하세요");
		}
		
		out.println("<p><p><a href='/edu/jw04/loginBeanDataSource.html'>뒤로</a>");
		out.println("</body>");
		out.println("</html");
	}


}
