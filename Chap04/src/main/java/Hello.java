

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */
@WebServlet("/Hello")
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print(" <title>Hello, Servlet!</title>");
		out.print("</head>");
		out.print("<body>");
		out.print(" <h2>Hello Servlet!</h2><br/>");
		out.print(" <h3>Message from doGet method!</h3>");
		out.print("</body>");
		out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print(" <title>Hello, Servlet!</title>");
		out.print("</head>");
		out.print("<body>");
		out.print(" <h2>Hello Servlet!</h2><br/>");
		out.print(" <h3>Message from doPost method!</h3>");
		out.print("</body>");
		out.print("</html>");
	}

}
