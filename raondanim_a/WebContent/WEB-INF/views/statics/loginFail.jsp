<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<%	request.setAttribute("contextPath", request.getContextPath()); %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 실패화면<br>
	에러 내용 : ${errormsgname} <br>
	<a class="navbar-brand hidden-xs" href="${contextPath}/statics/home">
    		홈으로
	</a>
</body>
</html>