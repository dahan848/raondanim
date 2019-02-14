<!-- Header -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- contextPath 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	request.setAttribute("contextPath", request.getContextPath()); %>	
<!-- 부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- 부트스트랩 END -->
<!-- CSS -->
<link href="${contextPath}/css/commonness.css" rel="stylesheet"> <!-- 공통 스타일 CSS -->
<link href="${contextPath}/css/bootstrap-social.css" rel="stylesheet"> <!-- 부트스트랩 소셜 -->
<link href="${contextPath}/css/font-awesome.css" rel="stylesheet"> <!-- 폰트어썸 -->

<!--jquery ui datepicker 달력 뽑는 cdn 각 페이지 에 붙이면 부트스트랩 충돌나서 제대로 안돌아감  -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>




<!-- CSS END -->  
<!-- navbar-main -->
<header>
	<nav class="navbar navbar-default">
    	<div class="container">
        	<div class="navbar-header">
	            <button type="button" id="navbar-mobile" class="navbar-left navbar-toggle collapsed">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	                <span class="nav-tooltip">Login or Join</span>
	           			<a class="navbar-brand hidden-xs" href="${contextPath}/statics/home">
	                		<img src="${contextPath}/img/logo-raon.png">
	            		</a>
	        </div>
	        <!-- 로그인 유/무에 따른 설정 정의 하어야함 -->
	        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	            <ul class="nav navbar-nav navbar-right">
                	<li><a href="${contextPath}/statics/login">로그인</a></li>
					<li><span class="vertical-separator"></span><a
	                            href="${contextPath}/statics/join">회원가입</a></li>
	                <li class="dropdown">
	                	<span class="vertical-separator"></span>
	                    	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
	                       aria-expanded="false">한국어 <span class="caret"></span>
	                       </a>
	                    <ul class="dropdown-menu">
	                        <li><a href="#" data-language="ko">한국어</a></li>
	                        <li><a href="#" data-language="en">English</a></li>
	                        <li><a href="#" data-language="ja">日本語</a></li>
	                        <li><a href="#" data-language="zh-hans">简体中文</a></li>
	                        <li><a href="#" data-language="zh-hant">繁體中文</a></li>
	                    </ul>
	                </li>
	            </ul>
	        </div>
	    </div>
	</nav>
</header>
<!-- navbar-main END -->