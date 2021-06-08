<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
	fieldset{
		width: 300px; margin: auto;
	}
	div{
		text-align: center; margin: 100px; auto;
	}
	table th, td{
		padding: 10px 5px;
	}
	input{
		padding: 10px;
	}
</style>
</head>
<body>
	<div>
		<form action="join_ok.jsp" method="post">
			<fieldset>
				<legend>회원가입</legend>
				<table>
					<tbody>
						<tr>
							<th>**ID</th><td><input type="text" name ="id" placeholder="id입력" required></td>
						</tr>
						<tr>
							<th>**PW</th><td><input type="password" name ="password" placeholder="pw입력" required></td>
						</tr>
						<tr>
							<th>**Name</th><td><input type="text" name ="name" placeholder="이름 입력" required></td>
						</tr>
						<tr>
							<th>Age</th><td><input type="number" name ="age"></td>
						</tr>
						<tr>
							<th>Addr</th><td><input type="text" name ="addr"></td>
						</tr>
						<tfoot>
							<tr><td colspan="2"><input type="submit" value="회원가입"></td></tr>
						</tfoot>
					</tbody>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>