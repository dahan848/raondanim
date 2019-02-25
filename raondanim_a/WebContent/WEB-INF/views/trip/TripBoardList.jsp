<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAK7HNKK_tIyPeV3pVUZKvX3f_arONYrzc
&callback=initMap">
    </script>
   <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#con {
	height: 1500px;
}

#con1 {
	height: 10%;
	width: 100%;
	margin-bottom: 30px;
	padding: 0;
}

#con2 {
	height: 90%;
	width: 100%;
	margin-bottom: 30px;
	padding: 0;
}

</style>

<script type="text/javascript">

	var locations = ${tripLatLng};

	function initMap() {
		// 검색한 지도
		var labels = '123456789';

		var uluru = {
			lat : 37.566535,
			lng : 126.97796919999996
		};
		// The map, centered at Uluru
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 2,
			center : uluru
		});
		// The marker, positioned at Uluru
		var markers = locations.map(function(location, i) {
			return new google.maps.Marker({
				position : location,
				label : labels[i % labels.length],
				animation : google.maps.Animation.DROP
			});
		});
		var markerCluster = new MarkerClusterer(
				map,
				markers,
				{
					imagePath : 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
				});
		
	}
	window.onload = function() {
	
		
		initMap();
		
	}
</script>
</head>
<body>
	<!-- 헤더 시작 -->
	<jsp:include page="/WEB-INF/views/navbar-main.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/navbar-sub.jsp"></jsp:include>
	<div
		class="navbar navbar-inverse navbar-sub navbar-sub-light hidden-xs">
		<div class="container">
			<ul class="nav navbar-nav navbar-core">
				<li><a href="write1">여행일정</a></li>
				<li><a href="list">여행리스트</a></li>
			</ul>
		</div>
	</div>
	<!-- 헤더 끝 -->

	<!--바디 시작  -->
	<div class="container" id="con1">
		<img src="${contextPath}/img/TripImg2.jpg"
			style="width: 100%; height: 100%;">
	</div>


	<div class="container" id="con">


		<div class="container" id="con2">
		
			<h1><small><b>여행자들이 선택한 나라들</b></small></h1>

			<!--맵자리 시작  -->
			<div style="height: 500px; border: 1px solid black;" id="map"></div>
			<!--맵자리 끝  -->


			<input type="button" value="검색" style="width: 100%;"
				class="btn btn-success" data-toggle="collapse" data-target="#search">
			<div id="search" class="collapse" style="border: 1px solid;">
				<div class="container" style="height: 100px;">
					<form class="form-inline" action="list" method="get">
						<br> <br> <select class="form-control" name="type"
							style="width: 80px;">
							<option value="0">검색</option>
							<option value="1">제목</option>
							<option value="2">출발일</option>
							<option value="3">종료일</option>
							<option value="4">여행자</option>
						</select>

						<div class="form-group" st>
							<input type="text" class="form-control" id="keyword"
								placeholder="검색어를 입력하세요" name="keyword" style="width: 700px;">
						</div>

						<button type="submit" class="btn btn-default">검색</button>
					</form>
				</div>
			</div>

			<table class="table">
				<thead>
					<tr class="warning">
						<th><h5>
								<b></b>
							</h5></th>
						<th><h5>
								<b>여행자</b>
							</h5></th>
						<th><h5>
								<b>제목</b>
							</h5></th>
						<th><h5>
								<b>여행기간</b>
							</h5></th>
						<th><h5>
								<b>관심사</b>
							</h5></th>
						<th><h5>
								<b>여행스타일</b>
							</h5></th>
						<th><h5>
								<b>동행하는인수</b>
							</h5></th>
						<th><h5>
								<b>조회수</b>
							</h5></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${tripData.tripBoardList}" var="list">
						<tr>
							<td><c:if test="${list.USER_PROFILE_PIC==0}">
									<img alt="" src="${contextPath}/img/Profile.png">
								</c:if></td>
							<td>${list.USER_NICK}</td>
							<td>
								<a href="view?boardKey=${list.TRIP_BOARD_KEY}&userNum=${list.USER_NUM}">${list.TRIP_BOARD_TITLE}</a>
							</td>



							<td><f:formatDate value="${list.TRIP_BOARD_START}"
									pattern="yyyy-MM-dd" /> &nbsp;<strong>~</strong>&nbsp; <f:formatDate
									value="${list.TRIP_BOARD_END}" pattern="yyyy-MM-dd" /></td>



							<td>default</td>
							<td>default</td>
							<td>${list.TRIP_BOARD_TOGETHER}</td>
							<td>${list.TRIP_BOARD_READCOUNT}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<div class="container">
				<ul class="pager">
					<c:if test="${tripData.page!=1}">
						<li><a
							href="list?pageNum=${param.pageNum-1}&type=${param.type}&keyword=${param.keyword}">Previous</a></li>
					</c:if>
					<c:forEach var="pageNum" begin="${tripData.start}"
						end="${tripData.end < tripData.total ? tripData.end: tripData.total}">
						<a
							href="list?pageNum=${pageNum}&type=${param.type}&keyword=${param.keyword}">${pageNum}&nbsp;&nbsp;&nbsp;</a>
					</c:forEach>
					<c:if test="${tripData.page!=tripData.total}">
						<li><a
							href="list?pageNum=${param.pageNum+1}&type=${param.type}&keyword=${param.keyword}">Next</a></li>
					</c:if>
				</ul>
			</div>
		</div>


	</div>


	<!--바디끝  -->

	<!-- 푸터 끝 -->

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

	<!-- 푸터 끝 -->


</body>
</html>