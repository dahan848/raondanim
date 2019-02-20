<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<style type="text/css">
#bb {
	height: 45px;
	background-color: red;
}

#cc {
	height: 100px;
	border: 1px;
	margin-top: 20px;
}

#dd {
	height: 900px;
	padding: 0px;
}

#ee {
	height: 750px;
	border: 1px dotted;
}

#ff {
	height: 750px;
	border: 1px dotted;
}

/* 콜렙스 css  */
#demo {
	-webkit-transition: width 0.5s ease;
	-moz-transition: width 0.5s ease;
	-o-transition: width 0.5s ease;
	transition: width 0.5s ease;
	display: inline-block;
	overflow: hidden;
	white-space: nowrap;
	background: yellow;
	vertical-align: middle;
	line-height: 20px;
	height: 300px;
	width: 0px;
}

#demo.in {
	width: 220px;
}

html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#card {
	position: relative;
	left: 30px;
}
/* Set the size of the div element that contains the map */
#map {
	height: 100%;
	width: 100%;
	padding: 0px;
}

#map1 {
	height: 100%;
	width: 100%;
	padding: 0px;
}
</style>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAK7HNKK_tIyPeV3pVUZKvX3f_arONYrzc&libraries=places"></script>
<script
	src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
	
</script>
<script>
	var cityLat;
	var cityLng;
	var cityName;
	var placeId;
	var locations = [];
	var cityNames = [];

	
	function initialize() {
		var input = document.getElementById('searchTextField');
		//애가 요소 찝어서 자동완성하게 해주는거
		var autocomplete = new google.maps.places.Autocomplete(input);
		google.maps.event
				.addListener(
						autocomplete,
						'place_changed',
						function() {
							var place = autocomplete.getPlace();
							// autocomplete.getPlace(); 이 객체에 속한게 검색한 장소의 이름 위도 경도 를 구할수 있는듯
							document.getElementById('cityName').value = place.name;
							document.getElementById('cityLat').value = place.geometry.location
									.lat();
							document.getElementById('cityLng').value = place.geometry.location
									.lng();
							document.getElementById('placeId').value = place.place_id;
							//document.getElementById('formatted_address').value = place.reviews;
							
						});
	}
	//윈도우 onload시 실행
	google.maps.event.addDomListener(window, 'load', initialize);

	
	
	function cityBlur() {
		
		//자동완성된 값을 불러와서 initMap함수 실행
		cityLat = document.getElementById("cityLat").value;
		cityLng = document.getElementById("cityLng").value;
		cityName = document.getElementById("cityName").value;
		placeId = document.getElementById("placeId").value;
		
		//페이지 실행시 전체지도 를 보이다 이 함수 실행시 전체지도div없애고  검색 지도의 display를 block로 바꿔서 보이게 한다 
		var location = {
			lat : parseFloat(cityLat),
			lng : parseFloat(cityLng)
		};
		locations.push(location);
		
		var cities = {
				cityName:cityName,
				lat : parseFloat(cityLat),
				lng : parseFloat(cityLng),
				placeId : placeId
			};
		cityNames.push(cities);
		
// 		cityNames.push(cityName);
// 		cities.push(new City(cityNames,locations));
		alert(cityName+" 선택되었습니다.");
		
		
		//맵그려지고 리스트 그려지는 부분
		var map1 = document.getElementById("map1");
		map1.style.display = "none";
		var map = document.getElementById("map");
		map.style.display = "block";
		initMap();
		drawCity(cityLat);


	}

	
	
	function initMap() {
		// 검색한 후 지도
		var labels = '123456789';

		var uluru = {
			lat : parseFloat(cityLat),
			lng : parseFloat(cityLng)
		};
		
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 5,
			center : uluru
		});
		
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

		var flightPath = new google.maps.Polyline({
			path : locations,
			geodesic : true,
			strokeColor : '#4286f4',
			strokeOpacity : 1.0,
			strokeWeight : 2
		});

		flightPath.setMap(map);

	}

	function initMap2() {
		// 페이지 실행시 뜰 세계 지도 줌 아웃 최대
		var uluru = {
			lat : -25.344,
			lng : 131.036
		};

		var map = new google.maps.Map(document.getElementById('map1'), {
			zoom : 2,
			center : uluru
		});

	}


	
	function drawCity() {
	//리스트 그리는 함수 
		var ff = $("#ff");
		var j = 1;
		ff.html("");
		for(var i in cityNames){
		
			var row = $("<div class='row' style='border: 1px dotted grey;' >");	
			var col = $("<div class='col-sm-12'>");
			var table = $("<table class='table'>");
			var tr = $("<tr>");
			var deleteBtn = $("<input type'button'>")
			$("<th>").text(j+"번").appendTo(tr);
			$("<th>").text(cityNames[i].cityName).appendTo(tr);
			$("<th>").html("<input type='button' value='삭제' data-index='"+i+"' class='btn btn-primary btn-sm' onclick='deleteMaker("+i+")' id='deleteBtn"+i+"'>").appendTo(tr);
			$("<th>").html("<input type='hidden' value='"+cityNames[i].lat+"' class='btn btn-primary btn-sm' id='deleteLat"+i+"'>").appendTo(tr);
			tr.appendTo(table);
			table.appendTo(col);
			col.appendTo(row);
			row.appendTo(ff);
			j++;
			
		}

	}
	
	function deleteMaker(i) {
		//리스트 삭제하면서 마커도 삭제
		//alert($("#deleteLat"+i+"").val());
		var deletelat = $("#deleteBtn"+i+"").attr("data-index");
		locations.splice(i, 1);
		cityNames.splice(i, 1);
		initMap();
		drawCity();
		
		
		
	}
	
	
	window.onload = function() {
		var map = document.getElementById("map");
		map.style.display = "none";
		initMap2();
		
		
		$("#sendWrite").on("submit", function() {
			//JSON.stringify 배열을 json데이터로 변환해주는 뇨속
			var arrToJson = JSON.stringify(cityNames);
			alert(arrToJson);
			
			$("#boardWrite2").val(arrToJson);
			
			
		})
		
		
	}
	
	
	
</script>

</head>
<body>

	<!--헤더  -->
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
	<!--바디시작  -->

	<div class="container-fluid">

		<div class="row" id="r2">
			<div class="col-lg-4" id="cc">
				<div class="row" id="cc">
					<div class="col-lg-8">
<!-- 					<input type="text" id="formatted_address"> -->
						<input id="searchTextField" type="text" size="50"
							placeholder="도시를 입력하세요" autocomplete="on" runat="server" class="form-control" /> 
							<input type="hidden" id="cityName"
							name="cityName" /> 
							<input type="hidden" id="cityLat"
							name="cityLat" /> 
							<input type="hidden" id="cityLng"
							name="cityLng" /> 
							<input type="hidden" id="placeId"
							name="placeId">

					</div>
					<div class="col-lg-4">
						<input type="button" id="btn" onclick="cityBlur()" value="검색" class="btn btn-info"> 
					</div>




				</div>
				<div class="row">
					<div class="col-lg-4" id="ee">
						<div class="row">
							<div class="col-sm-12">
								<h5>출발일</h5>
								<p>yy-mm-dd</p>
								<input type="button" value="출발일 변경"
									class="btn btn-primary btn-sm">
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-12">
								<h5>종료일</h5>
								<p>yy-mm-dd</p>
								<input type="button" value="종료일 변경"
									class="btn btn-primary btn-sm">
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-12">
								<br>
								<br> <br>
								<br> <br>
								<br> <br>
								<br> <br>
								<br> <br>
								<br> <br>
								<br> <br>
								<br> <br>
								<br> <br>
								<br> <br>

							</div>
						</div>

						<div class="row">
							<div class="col-sm-12">
								<input type="button" value="뒤로가기" class="btn btn-primary btn-sm">		
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-12">
								
									<form action="write3" id="sendWrite">
									<input type="hidden" id="boardWrite1" value="${tripBoard.user_Num}" name="user_Num">
									<input type="hidden" id="boardWrite1" value="${tripBoard.trip_Board_Title}" name="trip_Board_Title">
									<input type="hidden" id="boardWrite1" value="${tripBoard.trip_Board_Start}" name="trip_Board_Start">
									<input type="hidden" id="boardWrite1" value="${tripBoard.trip_Board_End}" name="trip_Board_End">
									<input type="hidden" id="boardWrite1" value="${tripBoard.trip_Board_Content}" name="trip_Board_Content">
									<input type="hidden" id="boardWrite2" value="" name="tripCity">
									<input type="submit" value="작성완료" class="btn btn-primary btn-sm">
								</form>
								
							</div>
						</div>




					</div>
					<div class="col-lg-8" id="ff">
						<div class="row" style="border: 1px dotted grey;">
							<div class="col-sm-12">
								<table class="table">
									<tr>
										<th>번호</th>
										<th>도시이름</th>
										<th>삭제</th>
									</tr>
								</table>
							</div>
						</div>







					</div>
				</div>
			</div>

			<!-- 		<button class="btn btn-primary" type="button" data-toggle="collapse" -->
			<!-- 				data-target="#collapseExample" aria-expanded="false" -->
			<!-- 				aria-controls="collapseExample">>></button> -->
			<div class="col-lg-8" id="dd">
				<!-- 콜렙스  -->


				<div class="collapse" id="collapseExample"
					style="float: left; z-index: 1;">
					<div class="card card-body" id="card"
						style="width: 500px; background-color: blue; height: 500px; left: -50px;">
						<table>
							<thead>
								<tr>
									<th>1</th>
									<th>2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>3</td>
									<td>4</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 콜렙스 끝  -->
				<div id="map"></div>
				<div id="map1"></div>

			</div>
		</div>
	</div>

	<!--바디 끝  -->
	<!--푸터  -->
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>