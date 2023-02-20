<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import = "java.io.PrintWriter, java.util.*, java.sql.*"%>
<%
	//사용자가 보낸 데이터를 한글을 사용할 수 있는 형식으로 변환
	request.setCharacterEncoding("UTF-8");
	
	UserDAO userDAO = new UserDAO();
	userDAO.summitDrink();
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('주문이 접수되었습니다.')");
	script.println("location.href='index_login.jsp';");
	script.println("</script>");
	script.close();
%>