<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setAttribute("contextPath", request.getContextPath()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>회원검색</title>
<link rel="stylesheet" href="${contextPath}/css/fastselect.min.css"/>
</head>
<body>
	<jsp:include page="/WEB-INF/views/navbar-main.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/navbar-sub.jsp"></jsp:include>
	<script src="${contextPath}/js/fastselect.standalone.js"></script>
	<div class="main-container">
		<section id="section-profile-list">
			<div class="container">
				<h3 class="section-title">
					<img class="section-header-icon" src="${contextPath}/img/Alarm.png" alt=""> 검색
				</h3>
				<form id="form-search" class="form-horizontal form-filter">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">현지친구 및 여행자 검색</h3>
						</div>
						<div class="panel-body">
							<div class="tab-content">
								<div id="form-simple" class="tab-pane active">
									<div class="form-group">
										<label class="sr-only control-label" for="id_search">검색</label>
										<input class="form-control" id="id_search" name="search" placeholder="지역, 관심사, 직업, 이름, 닉네임 검색" title="" type="text" />
									</div>
									<div class="text-center">
										<a class="btn-collapse" data-toggle="tab" href="#form-detail">
											<i class="fa fa-chevron-down mr-5" aria-hidden="true"></i>조건 추가
										</a>
									</div>
								</div>
								<div id="form-detail" class="tab-pane">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="col-sm-3 control-label"
													for="id_traveler_type_0">검색 대상</label>
												<div class="col-sm-9">
													<div id="id_traveler_type">
														<div class="radio">
															<label for="id_traveler_type_0">
															<input class="" id="id_traveler_type_0" name="traveler_type" title="" type="radio" value="local" />현지친구
															</label>
														</div>
														<div class="radio">
															<label for="id_traveler_type_1">
															<input class="" id="id_traveler_type_1" name="traveler_type" title="" type="radio" value="traveler" />여행자
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_city">거주 도시</label>
												<div class="col-sm-9">
													<input type="text" multiple class="multipleInputDynamic" data-url="${contextPath}/json/city.json" name="city"/>
													<script>
														$('.multipleInputDynamic').fastselect();
													</script>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_languages">사용 언어</label>
												<div class="col-sm-9">
													<input type="text" multiple class="multipleInputDynamic" data-load-once="true" data-url="${contextPath}/json/language.json" name="language"/>
													<script>
														$('.multipleInputDynamic').fastselect();
													</script>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_tour_styles">여행 스타일</label>
												<div class="col-sm-9">
													<input type="text" multiple class="multipleInputDynamic" data-url="${contextPath}/json/tourstyles.json" name="language"/>
													<script>
														$('.multipleInputDynamic').fastselect();
													</script>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_search_name">이름 </label>
												<div class="col-sm-9">
													<input class="form-control" id="id_search_name" name="search_name" placeholder="이름" title="" type="text"/>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_gender">성별</label>
												<div class="col-sm-9">
													 <input type="text" multiple class="multipleInputDynamic" data-url="${contextPath}/json/gender.json"name="gender"/>
													 <script>
														 $('.multipleInputDynamic').fastselect();
													 </script>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_occupations">국가</label>
												<div class="col-sm-9">
													<input class="form-control" id="id_search_name" name="search_nation" placeholder="국가" title="" type="text"/>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_interests">관심</label>
												<div class="col-sm-9">
													 <input type="text" multiple class="multipleInputDynamic" data-url="${contextPath}/json/interest.json" name="interest"/>
													 <script>
														 $('.multipleInputDynamic').fastselect();
													 </script>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6 col-sm-offset-3 col-md-offset-4 col-md-4">
							<button class="btn btn-potluck btn-block">검색</button>
						</div>
					</div>
				</form>
			</div>
		</section>
	</div>
	<script src="${contextPath}/js/search-detail.js"></script>
</body>
</html>