<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import = "java.io.PrintWriter"%>
<%
	//����ڰ� ���� �����͸� �ѱ��� ����� �� �ִ� �������� ��ȯ
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPW = null;

	if (request.getParameter("userID") != null) {
		userID = (String) request.getParameter("userID");
	}

	if (request.getParameter("userPW") != null) {
		userPW = (String) request.getParameter("userPW");
	}
	if (userID == null || userPW == null ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('���̵�� ��й�ȣ�� �Է����ּ���.')");
		script.println("</script>");
		script.close();
		return;
	}

	UserDAO userDAO = new UserDAO();
	int result = userDAO.login2(userID, userPW);
	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α��� ����')");
		script.println("location.href='index_login.jsp';");
		script.println("</script>");
		script.close();
		HttpSession session1 = request.getSession();
		session1.setAttribute("id", userID);
		return;
	}
	else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('���̵� Ȥ�� ��й�ȣ�� Ȯ�����ּ���.')");
		script.println("location.href='email_login.html';");
		script.println("</script>");
	}
%>