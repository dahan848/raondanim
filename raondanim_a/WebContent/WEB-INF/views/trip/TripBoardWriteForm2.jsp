<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	height: 150px;
	border: 1px ;
}

#dd {
	height: 900px;
	border: 1px solid ;
}

#ee {
	height: 784px;
	border: 1px solid ;
}

#ff {
	height: 784px;
	border: 1px solid ;
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

/*지도  */
#map {
	height: 90%;
	/* position: relative;
	z-index: 1; */
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#card {
	position: relative;
	 left: 30px;
  
}


</style>
<script type="text/javascript">

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
					<div class="col-lg-4" >유저</div>
				</div>
				<div class="row">
					<div class="col-lg-4" id="ee">일정</div>
					<div class="col-lg-8" id="ff">결정도시표시</div>
				</div>
			</div>
			<button class="btn btn-primary" type="button" data-toggle="collapse"
					data-target="#collapseExample" aria-expanded="false"
					aria-controls="collapseExample">data</button>
			<div class="col-lg-8" id="dd">
				<!-- 콜렙스  -->

				
				<div class="collapse" id="collapseExample"
					style="float: left; z-index: 1;">
					<div class="card card-body" id="card" style="width: 500px; background-color: red; height: 500px; left: -50px;">
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

				<div id="map" style="z-index: 0"></div>
				<!-- 지도  -->

				<!-- <script>
					var map;
					function initMap() {
						map = new google.maps.Map(document
								.getElementById('map'), {
							center : {
								lat : -34.397,
								lng : 150.644
							},
							zoom : 8
						});
					}
				</script>
				<script
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAK7HNKK_tIyPeV3pVUZKvX3f_arONYrzc
&callback=initMap"
					async defer></script> -->



			</div>


		</div>

	</div>




	
<!--바디 끝  -->	
<!--푸터  -->	
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	
</body>
</html>