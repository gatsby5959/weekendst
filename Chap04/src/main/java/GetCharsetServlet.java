

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetCharsetServlet
 */
@WebServlet("/GetCharsetServlet")
public class GetCharsetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCharsetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String nameOriginal = request.getParameter("name");
		String nameUTF8_1 = new String(nameOriginal.getBytes("ISO-8859-1"),"utf-8");
		String nameUTF8_2 = new String(nameOriginal.getBytes("8859_1"),"utf-8");
		String nameEUCKR_1 = new String(nameOriginal.getBytes("ISO-8859-1"),"euc-kr");
		String nameEUCKR_2 = new String(nameOriginal.getBytes("8859_1"),"euc-kr");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>get Servlet</title>");
		out.print("</head>");
		out.print("</body>");
		out.print("<h2>");
		
		out.print("name Original : ["+nameOriginal+"]<br/>");
		out.print("name UTF-8(8859_1) : ["+nameUTF8_1+"]<br/>");
		out.print("name UTF-8(ISO-8859_1) : ["+nameUTF8_2+"]<br/>");
		out.print("name ECU-KR(8859_1): ["+nameEUCKR_1+"]<br/>");
		out.print("name ECU-KR(ISO-8859_1) : ["+nameEUCKR_2+"]<br/>");
		
		
		out.print("</h2><br/>");
		out.print("</body>");
		out.print("</html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
