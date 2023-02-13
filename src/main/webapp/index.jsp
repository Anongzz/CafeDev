<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>이메일로 회원가입</title>
</head>
<style>
.signUpHeadLine {
	position: relative;
	border: 1px solid black;
	width: 360px;
}

.signUpInput {
	position: relative;
	border: 1px solid red;
	width: 340px;
	padding: 10px;
	height: 220px;
}

.footerButtons {
	position: relative;
	border: 1px solid green;
	width: 360px;
	height: 100px;
	left: -11px;
}

.button {
	position: relative;
	background-color: gray;
	border: 1px;
	border-radius: 5px;
	color: white;
	padding: 15px 32px;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	left: 40px;
}

.textPadding {
	padding: 12px;
	font-size: 15px;
	border-radius: 5px;
}

.leftButton {
	left: 20px;
}

.rightButton {
	right: 20px;
}
</style>
<body>
	<div class="signUpHeadLine">
		<div align="center">
			<h2>회원가입</h2>
		</div>
	</div>
	<form action="userJoinAction.jsp" method="post">
		<div class="signUpInput">

			<p>
				&nbsp;&nbsp;이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
					name="userName" value="" class="textPadding"
					placeholder="이름을 입력해주세요" required="required" />
			</p>
			<p>
				아이디&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="userID"
					value="" class="textPadding" placeholder="아이디를 입력해주세요"
					required="required" />
			</p>
			<p>
				비밀번호&nbsp; <input type="password" name="userPW" class="textPadding"
					value="" placeholder="비밀번호를 입력해주세요" required="required" />
			</p>
			<p>
				<label> <input type="checkbox" name="admit_terms"
					id="admit_terms" checked="checked"/> ㅇㅇ가 제공하는 서비스 약관에 동의합니다.
				</label>
			</p>
			<div class="footerButtons">
				<p>
					<input type="submit" name="commit" class="button" value="회원가입" />
					&nbsp;&nbsp;&nbsp;
					<button type="button" class="button"
						onclick="location.href='index.html'">취소</button>
				</p>
			</div>
		</div>

	</form>
</body>
</html>