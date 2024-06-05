<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 화면</title>
<link rel="icon" href="<%=request.getContextPath()%>/www/img/logo.png" type="image/x-icon">
<link href="<%=request.getContextPath()%>/www/lib/bootstrap@5.2.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-3">
	<h1 class="text-center">데이터를 입력하세요</h1>
	<form action="/WebServlet/ResultPage" method="post">
		<div class="mb-3 mt-3">
			<label for="cnt" class="form-label">회전수 :</label>
			<input type="number" class="form-control" id="cnt" name="cnt" value="0">
		</div>
		<div class="mb-3 mt-3">
			<label for="txt" class="form-label">내용 :</label>
			<input type="text" class="form-control" id="txt" name="txt" placeholder="내용을 입력하세요." required="required" autocomplete="off">
		</div>
		<div class="d-grid gap-3">
			<input type="submit" value="전송" class="btn btn-primary btn-block">
		</div>
	</form>
</div>
</body>
</html>