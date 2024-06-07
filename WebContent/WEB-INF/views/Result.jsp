<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 출력 화면</title>
<link rel="icon" href="<%=request.getContextPath()%>/www/img/logo.png" type="image/x-icon">
<link href="<%=request.getContextPath()%>/www/lib/bootstrap@5.2.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%Object result = request.getAttribute("result");%>
<div class="container mt-3">
	<div class="d-grid gap-3">
		<a href="Form" class="btn btn-success btn-block">돌아가기</a>
	</div>
	<h1 class="text-center mt-3">입력한 결과</h1>
	<ol class="list-group list-group-numbered">
    	<li class="list-group-item">입력 받은 값이 없습니다</li>
	</ol>
</div>
</body>
</html>