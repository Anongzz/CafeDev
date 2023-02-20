<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*, java.util.*, java.io.*"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
.mainArea{
	position: relative;
	border: 1px solid black;
	width: 500px;
	height: 850px;
}
.mainArea p {
	border-bottom: 1px solid silver;
	align-content: center;
	text-align: center;
	font-size: 20pt;
	padding-bottom: 30px;
}
.orderContent{
	position: absolute;
	/* border: 1px solid blue; */
	width: 480px;
	height: 460px;
	left: 20px;
	top: 165px;
	overflow: scroll;
}
.orderSummit{
	position: absolute;
	/* border: 1px solid red; */
	width: 300px;
	height: 50px;
	left: 100px;
	top:635px;
}
.categoryArea{
	position: absolute;
	/* border: 1px solid green; */
	width: 480px;
	height: 50px;
	left: 20px;
}
.categoryArea input{
	width: 110px;
	height: 45px;
	
}
.coffeeItems{
	position: absolute;

}
.drinkList{
	
	margin: 10px 10px;
	display: inline-flex;
	padding: 10px 10px;
}

.drinkList:hover{
	border: 2px solid red;
	border-radius: 20%;
}

input[type="submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
}
input[type="submit"]:hover{
  border-color: #2691d9;
  transition: .5s;
}
</style>
</head>
<body>
<%
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://127.0.0.1:3306/exampledb";
        
Class.forName(driver);

Connection conn = DriverManager.getConnection(url,"root","1234");


Object getData = session.getAttribute("drinkType");

String ObjToStringValue = (String) getData;



String sql = "SELECT drinkName, drinkPrice, drinkIMG FROM cafemenutable WHERE drinkType='"+ObjToStringValue+"'";

PreparedStatement pstmt = conn.prepareStatement(sql);

ResultSet rs = pstmt.executeQuery();

%>
<h1>주문페이지</h1>
<div class="mainArea">
	
	<p><b>상품 목록</b></p>
	<div class="categoryArea">
			<input type="button" value="커피" onclick="location.href='order_edit.mvc?data1=coffee'">
			<input type="button" value="에이드" onclick="location.href='order_edit.mvc?data1=ade'">
			<input type="button" value="라떼" onclick="location.href='order_edit.mvc?data1=smoothie'">
			<input type="button" value="스무디" onclick="location.href='order_edit.mvc?data1=latte'">
	</div>
	<div class="orderContent">
		
		<%while(rs.next()){ 
				String drinkName = rs.getString("drinkName");
				String drinkPrice = String.valueOf(rs.getString("drinkPrice"));
				String drinkIMG = rs.getString("drinkIMG");
				 
			%>
		<div class="drinkList">
		<div style="text-align: center; cursor: pointer;">
			<img id<%=drinkName %> alt="add_building" src="images/<%=drinkIMG %>" width="100" height="100" 
			onclick="(function(){if(confirm('<%=drinkName%>를 장바구니에 추가하시겠습니까?')){location.href='order_count.mvc?data1=<%=drinkName%>&data2=<%=drinkPrice %>';}else{}})();">
		<br><b><%=drinkName %></b>
		<br><b><%=drinkPrice %>원</b>
		</div>
		
		</div>
		<%} %>
	</div>
	<div>
	
	</div>
	<div class="orderSummit">
	<b>↓주문 제품↓</b> <br>
<% 
	String sql2 = "SELECT orderName, sum(orderPrice), sum(orderCount) FROM orderlist GROUP BY orderName";
	pstmt= conn.prepareStatement(sql2);
	rs = pstmt.executeQuery();
	String orderlist ="";
	while(rs.next()){
		String orderName = rs.getString("orderName");
		String orderPrice = rs.getString("sum(orderPrice)");
		String orderCount = rs.getString("sum(orderCount)");
		orderlist = orderName +", 가격: "+orderPrice+", 개수: "+orderCount;
	%>
	
	<%=orderlist %><br>
	
	<%} %>
	<input type="submit" value="주문하기" onclick="(function(){if(confirm('주문 하시겠습니까?')){location.href='order_summit.jsp';}else{}})();" ><br><br>
	<a href="index_login.jsp" style="position:absolute; left: 40%;">뒤로가기</a>
	</div>
	
	
	
	<!-- <div style="position: absolute; width: 200px; height: 200px; background-color: yellow; left:10%; top: 25%;">
		<div style="position: relative; width: 30px; height: 30px; background-color: red; ">
		
		</div>
	</div> -->
</div>

</body>
</html>