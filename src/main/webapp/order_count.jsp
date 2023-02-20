<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import = "java.io.PrintWriter, java.util.*, java.sql.*"%>
<%
	//사용자가 보낸 데이터를 한글을 사용할 수 있는 형식으로 변환
	request.setCharacterEncoding("UTF-8");

	Object getData = session.getAttribute("drinkName");
	Object getData2= session.getAttribute("drinkPrice");
	String drinkName = (String)getData;
	String drinkPrice = (String)getData2;
	
	System.out.println("order_count.jsp 진입");
	
	UserDAO userDAO = new UserDAO();
	userDAO.order(drinkName, drinkPrice, 1);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('장바구니에 "+drinkName+"을 추가했습니다.')");
	script.println("location.href='order_edit.mvc?data1=coffee';");
	script.println("</script>");
	script.close();
%>