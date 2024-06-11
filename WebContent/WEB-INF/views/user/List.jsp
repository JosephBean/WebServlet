<%@page import="user.UserDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>사용자 목록</title>
<link rel="icon" href="../../img/logo.png" type="image/x-icon">
<!-- <link href="../../lib/bootstrap@5.2.3/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
	.cursor-pointer {cursor: pointer;}
</style>
</head>
<%
	
Object obj = request.getAttribute("list");
List<UserDTO> list = null;
if(obj != null) {
	list = (List<UserDTO>) obj;
}

%>
<body>
	<div class="container mt-3">
	  <h1 class="display-1 text-center">사용자 목록</h1>
	  <div class="btn-group">
	    <a href="Create" class="btn btn-primary">사용자 추가</a>
	  </div>
	  <table class="table table-hover mt-3">
	    <thead class="table-dark">
	      <tr>
	      	<th>이름</th>
	        <th>이메일</th>
	        <th>가입날짜</th>
	      </tr>
	    </thead>
	    <tbody>
<% 
	for(UserDTO dto : list) { 
%>
	      <tr class="cursor-pointer" onclick="location.href = 'Select?no=<%=dto.getNo()%>';">
	        <td><%=dto.getName() %></td>
	        <td><%=dto.getEmail() %></td>
	        <td><%=dto.getRegDate() %></td>
	      </tr>
<%
	}
%>
	    </tbody>
	  </table>
	</div>
</body>
</html>
