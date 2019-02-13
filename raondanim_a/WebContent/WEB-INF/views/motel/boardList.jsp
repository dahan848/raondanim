<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>




<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->

<!-- 부트스트랩 -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- 부트스트랩 END -->
<!-- CSS -->
<link href="${contextPath}/css/commonness.css" rel="stylesheet">
<!-- 공통 스타일 CSS -->
<link href="${contextPath}/css/bootstrap-social.css" rel="stylesheet">
<!-- 부트스트랩 소셜 -->
<link href="${contextPath}/css/font-awesome.css" rel="stylesheet">
<!-- 폰트어썸 -->
<script type="text/javascript">
var count = 1;
var n = 0;
$(function(){
	$("#con").css("height","1000px");
	createList();
	
	
});
$(window).on("scroll",function(){
	var scrollHeight = $(document).height();
	var scrollPosition = $(window).height()+$(window).scrollTop();
	
	
	if(scrollPosition > scrollHeight - 500){
		createList();
		count++;
	}
})

function getOriginFilename(fileName){
	//fileName에서 uuid를 제외한 원래 파일명을 반환
	if(fileName == null){
		return;
	}
	var idx = fileName.indexOf("_")+1;
	return fileName.substr(idx);
}

function createList(){
	//회원 목록을 그려주는 역할을 하는 함수
	//회원 목록을 그리기 위해서는
	//회원 목록을 서버에 요청해서 받아와야 한다 : ajax
	var table = $("#listTable");
	var conHeight = $("#con").height();
	//listTable 요소 중 하위요소인 0보다 큰 tr을 선택하여 remove
	
	$.ajax({
		url:"${contextPath}/motel/test?page="+count,
		//data:{"command":"memberList"},
		type:"post",
		dataType:"json",
		error : function(){
			alert("실패");
		},
		success:function(data){
			for(var i in data.board.boardList){
				//listTable 요소에 tr 만들어 내용 채우기
				
				var fileName = getOriginFilename(data.board.boardList[i].FILENAME);			
					if(fileName){
						
						/* $("#con").append('<div class="card" id="card" style=" float:left;width:30%; height:300px; margin:-20px; background-image:url(\'${contextPath}/image?fileName='+data.board.boardList[i].FILENAME+'\');">'); */
						/* $("#box").append('<div class="card" id="card" style="border-radius:50%; width:30%; height:300px; margin:-20px; background-image:url(${contextPath}/img/people.jpg);)">'); */
						
						
						$("#con").append('<div class="card" id="card'+n+'" style="width:20%; margin:10px; height:300px; border:1px solid black; float:left;">');
						
						var id = "#card"+n;
						$(id).append('<div class="card-body" id="card-body'+n+'" style="padding:0; padding-top:20px;">');
						var cardid = "#card-body"+n;
						
						$(cardid).append('<div id="backimg" class="backimg" style="z-index:1; width:100%; height:150px; margin:-20px; background-image:url(\'${contextPath}/motel/image?fileName='+data.board.boardList[i].FILENAME+'\');">');
						
						$(cardid).append('<div id="userimg" class="userimg" style="background-image:url(${contextPath}/img/people.jpg); margin:0 auto; margin-top:-58px; z-index:99999; width:100px; height:100px;">');
						$(cardid).append('<a href="${contextPath}/board/view?num='+data.board.boardList[i].NUM+'"><p style="align:center;"> 제목 : '+data.board.boardList[i].TITLE+'</p></a>');
						$(cardid).append('<p>작성자 : '+data.board.boardList[i].NAME+'</p>');	
						$("#con").css("height",conHeight+"400px");
						conHeight=$("#con").height();
						n++;
					}else{
						
						/* $("#con").append('<div id="card" style="float:left"><a href="${contextPath}/board/view?num='+data.board.boardList[i].NUM+'"><img src="${contextPath}/img/no.png" width="100%" height="100%"></a><p align="center">'+data.board.boardList[i].TITLE+'</p></div>'); */
						$("#con").append('<div class="card" id="card'+n+'" style="width:20%; margin:10px; height:300px; border:1px solid black; float:left;">');
						var id = "#card"+n;
						$(id).append('<div class="card-body" id="card-body'+n+'" style="padding:0; padding-top:20px;">');
						var cardid = "#card-body"+n;
						$(cardid).append('<div id="backimg" class="backimg" style="z-index:1;  width:100%; height:150px; margin:-20px; background-image:url(${contextPath}/img/no.png);">');
						$(cardid).append('<div id="userimg" class="userimg" style="margin:0 auto; margin-top:-58px; z-index:99999; width:100px; height:100px; background-image:url(${contextPath}/img/people.jpg);">');
						$(cardid).append('<a href="${contextPath}/board/view?num='+data.board.boardList[i].NUM+'"><p style="align:center;"> 제목 : '+data.board.boardList[i].TITLE+'</p></a>');
						$(cardid).append('<p>작성자 : '+data.board.boardList[i].NAME+'</p>');
						n++;
					}
					
			}
		}
	});
};
</script>
<style type="text/css">
#con {
	width: 70%;
	margin: auto;
}

/* #content{
	width: 30%;
	
} */
/* #item{
	width: 30%;
	height: 60%;
	position: relative;
	background-color: gray;
} */
#card {
	/* 	width: 300px;
	height: 500px;
	float: left;
	margin: 10px; */
	
}

#backimg {
	background-repeat: no-repeat;
	background-position: left;
	background-size: cover;
	border: 1px solid black;
	z-index: 1;
}

#userimg {
	background-repeat: no-repeat;
	background-position: bottom;
	background-size: cover;
	border-radius: 50%;
	border: 1px solid red;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/navbar-main.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/navbar-sub.jsp"></jsp:include>
	<header>
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" id="navbar-mobile"
						class="navbar-left navbar-toggle collapsed">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<span class="nav-tooltip">Login or Join</span> <a
						class="navbar-brand hidden-xs" href="${contextPath}/statics/home">
						<img src="${contextPath}/img/logo-raon.png">
					</a>
				</div>
				<!-- 로그인 유/무에 따른 설정 정의 하어야함 -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${contextPath}/statics/login">로그인</a></li>
						<li><span class="vertical-separator"></span><a
							href="${contextPath}/statics/join">회원가입</a></li>
						<li class="dropdown"><span class="vertical-separator"></span>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">한국어
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" data-language="ko">한국어</a></li>
								<li><a href="#" data-language="en">English</a></li>
								<li><a href="#" data-language="ja">日本語</a></li>
								<li><a href="#" data-language="zh-hans">简体中文</a></li>
								<li><a href="#" data-language="zh-hant">繁體中文</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- ajax로 화면 그리기 위한 박스 -->
	<div  id="con" align="center"></div>

	<footer class="hidden-xs">
		<div class="container">
			<div class="col-sm-3"></div>
			<div class="col-sm-3">
				<ul>
					<li><h5>사이트</h5></li>
					<li><a href="#">소개</a></li>
				</ul>
			</div>
			<div class="col-sm-3">
				<ul>
					<li><h5>약관안내</h5></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">이용약관</a></li>
				</ul>
			</div>
			<div class="col-sm-3">
				<ul>
					<li><h5>고객센터</h5></li>
					<li><a href="#" target="_blank">문의하기</a></li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>