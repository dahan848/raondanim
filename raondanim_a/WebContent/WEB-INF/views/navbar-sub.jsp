<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setAttribute("contextPath", request.getContextPath()); %>
<!-- navbar-sub -->
<div class="navbar navbar-inverse navbar-sub hidden-xs">
    <div class="container">
        <ul class="nav navbar-nav">
	         <li><a href="myp.jsp">나의 정보</a></li>
	         <li><a href="#">회원 검색</a></li>
	         <li><a href="${contextPath}/trip/list">여행</a></li>
	         <li><a href="#">숙박</a></li>
	         <li><a href="#">후기</a></li>
        </ul>
    </div>
</div>
<!-- navbar-sub END-->
