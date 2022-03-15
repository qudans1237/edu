import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class GetData extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
		
		//아래의 두실행문은 servlet 에서 client 로 html을 전송시 필수 코딩
		res.setContentType("text/html;charset=EUC_KR");
		PrintWriter out = res.getWriter();
		
		//client form data(QueryString :: name=vlaue)처리(API 확인)
		String clientName = req.getParameter("name");
		String clientAddr = req.getParameter("addr");
		
		//client form data출력(출력은??)
		System.out.println(clientName+":"+clientAddr);
		
		out.println("<html>");
		out.println("<head><title>GetData.java</title></head>");
		out.println("<body>");
		
		out.println("<h2>Get Test</h2>");
		out.println("<li> 이름 : "+clientName);
		out.println("<li> 주소 : "+clientAddr);
		
		out.println("<p><p><a href='/edu/getData.html'>뒤로</a>");
		
		out.println("</body>");
		out.println("</html>");
	}

}
