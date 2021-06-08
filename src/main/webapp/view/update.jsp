<%@page import="com.ict.db.VO"%>
<%@page import="com.ict.db.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<%
	request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	VO vo = DAO.getInstance().getDetail(idx);
	pageContext.setAttribute("vo", vo);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	text-align: center;
	margin: 100px;
	auto;
}

table th, td {
	padding: 10px 5px;
	border: 1px solid black;
	border-collapse: collapse;
	width: 500px;
	margin: auto;
}

input {
	padding: 10px;
}
</style>
<script type="text/javascript">
	function list_go(f) {
		f.action = "list.jsp";
		f.submit();
	}
	function update_go(f) {
		if("${param.pw}"==f.pw.value){
			f.action="update_ok.jsp";
			f.submit();
		}else{
			alert{"비밀번호 틀림"};
			f.pw.value="";
			f.pw.focus();
			return;
		}
	}
</script>
</head>
<body>
	<div>
		<h2>개인 정보 보기</h2>
		<form method="post">
			<table>
				<tbody>
					<tr>
						<th style="width: 40%">IDX</th>
						<td><input type="text" name="idx" value="${vo.idx}"readonly></td>
					</tr>
					<tr>
						<th>ID</th>
						<td><input type="text" name="id" value="${vo.id}"readonly></td>
					</tr>
					<tr>
						<th>PW</th>
						<td><input type="text" name="pw" value="${vo.pw}"></td>
					</tr>
					<tr>
						<th>Name</th>
						<td><input type="text" name="name" value="${vo.name}"></td>
					</tr>
					<tr>
						<th>Age</th>
						<td><input type="text" name="age" value="${vo.age}"></td>
					</tr>
					<tr>
						<th>Addr</th>
						<td><input type="text" name="addr" value="${vo.addr}"></td>
					</tr>
					<tr>
						<th>Reg</th>
						<td><input type="text" name="reg" value="${vo.reg.substring(0,10)}"readonly></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
						<input type="button" value="전체보기"	onclick="list_go(this.form)">
						<input type="button" value="수정하기" onclick="update_go(this.form)">
						
				</tfoot>
				
			</table>
		</form>
	</div>
</body>
</html>