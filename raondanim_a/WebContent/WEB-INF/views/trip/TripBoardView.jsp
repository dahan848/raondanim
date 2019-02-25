<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAK7HNKK_tIyPeV3pVUZKvX3f_arONYrzc&libraries=places"></script>
<script
	src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">	
</script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script type="text/javascript">
var locations = [];

function initMap() {
	// 검색한 지도
	var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

	var uluru = {
		lat : 37.566535,
		lng : 126.97796919999996
	};
	// The map, centered at Uluru
	var map = new google.maps.Map(document.getElementById('map'), {
		zoom : 3,
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

function toggleDisplay() {
	var leftDiv1 = $("#leftDiv-1");
	var leftDiv2 = $("#leftDiv-2");
	//var leftDiv2Attr = $("leftDiv-2").attr("display");
	leftDiv2.toggle();
	
}


window.onload = function() {

	
	initMap();
	
}



</script>
<style type="text/css">
#con1 {
	height: 1000px;
}

#leftDiv {
	min-height: 1000px;
	max-height: 1000px;
	overflow: auto;
	border-right: 1px dotted;
	padding: 0px;
}
#leftDiv-1{
	min-height: 1000px;
	max-height: 1000px;
	height:100%;
	width: 50%;
	border: 1px solid red;
	overflow: auto;
	display: inline-block;
}
#leftDiv-2{
	min-height: 1000px;
	max-height: 1000px;
	height:100%;
	width: 50%;
	border: 1px solid green;
	overflow: auto;
	display: block;
}

#rightDiv {
	min-height: 1000px;
	max-height: 1000px;
	padding: 1px;
}
#rightRow1{
	min-height: 800px;
	max-height: 800px;
	width:100%;
	margin: 0px;
}
#rightRow2{
	min-height: 200px;
	max-height: 200px;
	width:100%;
	border-top:1px dotted;
	margin: 0px;
}
#map{
	height:	800px;
	width: 100%;

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
				<li><a href="write1">여행일정</a></li>
				<li><a href="list">여행리스트</a></li>
			</ul>
		</div>
	</div>
	<!-- 헤더 끝 -->
	
	
	
	<div class="container-fluid" id="con1">
		<div class="row" id="mainRow">
			<!--왼쪽 사이드 div  -->
			<div class="col-lg-4" id="leftDiv">
				<div class="col-lg-6" id="leftDiv-1">
				 	<input type="button" onclick="toggleDisplay()" value="토글">
				</div>
				<div class="col-lg-6" id="leftDiv-2">
				 2
				</div>
			</div>
			<!--지도 들어갈 div  -->
			<div class="col-lg-8" id="rightDiv">
				<div class="row" id="rightRow1">
					<div id="map">지도</div> 
				</div>
				<div class="row" id="rightRow2">
					 <div id="boardContent">내용11</div> 
				</div>
			</div>
		
		
		
		
		</div>
	</div>
	
	
	
	<!-- 푸터 끝 -->

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

	<!-- 푸터 끝 -->

</body>
</html>