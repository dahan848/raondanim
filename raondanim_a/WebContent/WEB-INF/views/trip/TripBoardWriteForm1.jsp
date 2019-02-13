<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	request.setAttribute("contextPath", request.getContextPath()); %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#con {
	height: 700px;
	
	
}
#con1{
	height: 10%;
	width: 100%;
	margin-bottom: 50px;
	padding: 0;
}
th{
	width: 300px;
}
</style>
</head>
<body>
	<!-- 헤더 시작 -->
	<jsp:include page="/WEB-INF/views/navbar-main.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/navbar-sub.jsp"></jsp:include>
	<div
		class="navbar navbar-inverse navbar-sub navbar-sub-light hidden-xs">
		<div class="container">
			<ul class="nav navbar-nav navbar-core">
				<li><a href="/accounts/profiles/update/">여행일정</a></li>
				<li><a href="/accounts/profiles/update/personal/">여행리스트</a></li>
			</ul>
		</div>
	</div>
	<!-- 헤더 끝 -->

	<!-- 바디 시작 -->


	<div class="container" id="con1">
		<img src="${contextPath}/img/TripImg1.jpg" style="width:100%; height: 100%;"> 
	</div>
	
	<div class="container" id="con">
	<h3><b>여행만들기</b></h3><br>
	<p style="color: red;"><input type="button" disabled="disabled" value="중요" class="btn btn-danger" height="20px;" width="20px;"> 여행사의 여행상품, 패키지 상품 등 기타 상업적인 목적의 이용은 금지사항 입니다 </p><br>
	<form action="#">
		<table class="table" id="ta">

			<tr>
				<th style="padding: 20px;">제목</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			<tr>
				<th style="padding: 20px;">나의 관심사</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			<tr>
				<th style="padding: 20px;">나의 여행희망도시</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			<tr>
				<th style="padding: 20px;">나의 여행 스타일</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			<tr>
				<th style="padding: 20px;">여행출발일</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			<tr>
				<th style="padding: 20px;">여행 종료일</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			<tr>
				<th style="padding: 20px;">여행 동행모집</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			<tr>
				<th style="padding: 20px;">여행 소개</th>
				<td style="padding: 20px;">Default</td>
			</tr>
			

		</table>
		
		<input type="submit" value="다음 단계로" class="btn btn-success">
		</form>
		
	</div>



	<!-- 바디 끝 -->



	<!-- 푸터 끝 -->
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->



</body>
</html>