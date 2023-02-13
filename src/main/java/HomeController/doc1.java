package HomeController;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class doc1
 */
@WebServlet("*.mvc")
public class doc1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doc1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청한 주소를 가져온다.
		String url = request.getRequestURI();
		//View 로 사용할 JSP 지정
		String viewName = null;
		
		if(url.contains("order.mvc")) {
			//System.out.println("main.mvc 가 요청함");
			viewName = "order.jsp";
		}else if(url.contains("order_edit.mvc")) {
			//System.out.println("userIndependentBuilding.mvc 가 요청함");
			String str1 = request.getParameter("data1");
			
			String result = str1;
			HttpSession session1 = request.getSession();
			session1.setAttribute("drinkType", result);
			request.setAttribute("result", result);
			viewName = "order_edit.jsp";
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(viewName);
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
