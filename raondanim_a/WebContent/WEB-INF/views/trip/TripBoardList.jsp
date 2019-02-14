<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#con1 {
	height: 10%;
	width: 100%;
	margin-bottom: 30px;
	padding: 0;
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

	<!--바디 시작  -->
	<div class="container" id="con1">
		<img src="${contextPath}/img/TripImg2.jpg"
			style="width: 100%; height: 100%;">
	</div>
	<div class="container">
		<h1>동행친구 리스트</h1>
		<!--맵자리 시작  -->
		<div style="height: 500px; border: 1px solid black;"></div>
		<!--맵자리 끝  -->
		<div class="container">
			<h2>Contextual Classes</h2>
			<p>Contextual classes can be used to color table rows or table
				cells. The classes that can be used are: .active, .success, .info,
				.warning, and .danger.</p>
			<input type="button" value="검색">
			<table class="table">
				<thead>
					<tr>
						<th>여행자</th>
						<th>제목</th>
						<th>여행기간</th>
						<th>관심사</th>
						<th>여행스타일</th>
						<th>동행하는인수</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Default</td>
						<td>Defaultson</td>
						<td>def@somemail.com</td>
					</tr>

				</tbody>
			</table>
		</div>





	</div>

	<!--바디끝  -->

	<!-- 푸터 끝 -->
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	<!-- 푸터 끝 -->


</body>
</html>