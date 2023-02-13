<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>�̸��Ϸ� ȸ������</title>
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
			<h2>ȸ������</h2>
		</div>
	</div>
	<form action="userJoinAction.jsp" method="post">
		<div class="signUpInput">

			<p>
				&nbsp;&nbsp;�̸�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
					name="userName" value="" class="textPadding"
					placeholder="�̸��� �Է����ּ���" required="required" />
			</p>
			<p>
				���̵�&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="userID"
					value="" class="textPadding" placeholder="���̵� �Է����ּ���"
					required="required" />
			</p>
			<p>
				��й�ȣ&nbsp; <input type="password" name="userPW" class="textPadding"
					value="" placeholder="��й�ȣ�� �Է����ּ���" required="required" />
			</p>
			<p>
				<label> <input type="checkbox" name="admit_terms"
					id="admit_terms" checked="checked"/> ������ �����ϴ� ���� ����� �����մϴ�.
				</label>
			</p>
			<div class="footerButtons">
				<p>
					<input type="submit" name="commit" class="button" value="ȸ������" />
					&nbsp;&nbsp;&nbsp;
					<button type="button" class="button"
						onclick="location.href='index.html'">���</button>
				</p>
			</div>
		</div>

	</form>
</body>
</html>