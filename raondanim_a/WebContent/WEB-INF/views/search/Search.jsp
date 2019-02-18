<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>회원검색</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- CSS -->
<link rel="stylesheet" href="${contextPath}/css/bootstrap-social.css">
<link rel="stylesheet" href="${contextPath}/css/commonness.css">
<link rel="stylesheet" href="${contextPath}/css/font-awesome.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/navbar-main.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/navbar-sub.jsp"></jsp:include>
	<div class="main-container">

		<section id="section-profile-list">
			<div class="container">
				<h3 class="section-title">
					<img class="section-header-icon"
						src="/static/potluck/img/icon/Alarm.png" alt=""> 검색
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
										<label class="sr-only control-label" for="id_search">검색</label><input
											class="form-control" id="id_search" name="search"
											placeholder="지역, 관심사, 직업, 이름, 닉네임 검색" title="" type="text" />
									</div>
									<div class="text-center">
										<a class="btn-collapse" data-toggle="tab" href="#form-detail"><i
											class="fa fa-chevron-down mr-5" aria-hidden="true"></i>조건 추가</a>
									</div>
								</div>
								<div id="form-detail" class="tab-pane ">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="col-sm-3 control-label"
													for="id_traveler_type_0">검색 대상</label>
												<div class="col-sm-9">
													<div id="id_traveler_type">
														<div class="radio">
															<label for="id_traveler_type_0"><input class=""
																id="id_traveler_type_0" name="traveler_type" title=""
																type="radio" value="local" /> 현지친구</label>
														</div>
														<div class="radio">
															<label for="id_traveler_type_1"><input class=""
																id="id_traveler_type_1" name="traveler_type" title=""
																type="radio" value="traveler" /> 여행자</label>
														</div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_city">거주
													도시</label>
												<div class="col-sm-9">
													<select
														class="form-control django-select2 django-select2-heavy"
														data-ajax--cache="true" data-ajax--type="GET"
														data-ajax--url="/select2/fields/auto.json"
														data-allow-clear="true"
														data-field_id="MTM5NzE4OTQwMzQ3MzQ0:1gve7B:j7qgMg8hBEiUEjoElY0qRpdiBBI"
														data-minimum-input-length="0" data-placeholder="선택"
														id="id_city" name="city" title="">
														<option></option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_languages">사용
													언어</label>
												<div class="col-sm-9">
													<select multiple="multiple"
														class="form-control django-select2 django-select2-heavy"
														data-ajax--cache="true" data-ajax--type="GET"
														data-ajax--url="/select2/fields/auto.json"
														data-allow-clear="true"
														data-field_id="MTM5NzE4OTQwODY0MTQ0:1gve7B:m9L9tPAS3wt2xk8_9lur_5hVbmE"
														data-minimum-input-length="0" data-placeholder="선택"
														id="id_languages" name="languages" title="">
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_tour_styles">여행
													스타일</label>
												<div class="col-sm-9">
													<select multiple="multiple"
														class="form-control django-select2 django-select2-heavy"
														data-ajax--cache="true" data-ajax--type="GET"
														data-ajax--url="/select2/fields/auto.json"
														data-allow-clear="true"
														data-field_id="MTM5NzE4OTI5MjM4NTQ0:1gve7B:i17MCrHx4F_A2Kk8KsNMS78OTmI"
														data-minimum-input-length="0" data-placeholder="선택"
														id="id_tour_styles" name="tour_styles" title="">
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_search_name">이름
													또는 국적</label>
												<div class="col-sm-9">
													<input class="form-control" id="id_search_name"
														name="search_name" placeholder="이름 또는 국적" title=""
														type="text" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_gender">성별</label>
												<div class="col-sm-9">
													<select class="form-control django-select2"
														data-allow-clear="true" data-minimum-input-length="0"
														data-placeholder="성별" id="id_gender" name="gender"
														title="">
														<option></option>
														<option value="" selected="selected">--------</option>
														<option value="">---------</option>
														<option value="1">남</option>
														<option value="2">여</option>
														<option value="3">기타</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_occupations">직업</label>
												<div class="col-sm-9">
													<select multiple="multiple"
														class="form-control django-select2 django-select2-heavy"
														data-ajax--cache="true" data-ajax--type="GET"
														data-ajax--url="/select2/fields/auto.json"
														data-allow-clear="true"
														data-field_id="MTM5NzE4OTQwODYxNjQ4:1gve7B:p3u7MnkswOnasq5SHP-cH60AUeY"
														data-minimum-input-length="0" data-placeholder="선택"
														id="id_occupations" name="occupations" title="">
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label" for="id_interests">관심</label>
												<div class="col-sm-9">
													<select multiple="multiple"
														class="form-control django-select2 django-select2-heavy"
														data-ajax--cache="true" data-ajax--type="GET"
														data-ajax--url="/select2/fields/auto.json"
														data-allow-clear="true"
														data-field_id="MTM5NzE4OTQwODYxNDU2:1gve7B:lX9vwosfyXfgSq_NcXlqjWcAr08"
														data-minimum-input-length="0" data-placeholder="선택"
														id="id_interests" name="interests" title="">
													</select>
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

				<div class="row">

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_4.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/75" class="img-circle img-avatar">
									<img
									src="/media/profile/87ab4211-b00e-4f23-8d18-662987aaeb8d.jpg.300x300_q85_box-0%2C0%2C150%2C150_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/AR.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Nacho</h4>
							<p class="profile-city">거주도시: Río Ceballos</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">여행</span> <span
									class="label label-default">자전거</span> <span
									class="label label-default">휘트니스</span> <span
									class="label label-default">요리</span> <span
									class="label label-default">등산</span> <span
									class="label label-default">체스</span>

							</div>
							<div class="cover-tags cover-tags-certification">

								<span class="label">Seoul</span>

							</div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/media/covers/7c70a4af-3c34-4672-9955-e99455865ca9.jpg.600x300_q85_crop-50%2C%2050_detail_upscale.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/131" class="img-circle img-avatar">
									<img
									src="/media/profile/3b726338-52d9-4b42-ac52-8fd5aba3ecb4.jpg.300x300_q85_box-0%2C0%2C337%2C337_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/TW.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Ken</h4>
							<p class="profile-city">거주도시: Shanghai</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">여행</span> <span
									class="label label-default">재즈</span> <span
									class="label label-default">산책</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_5.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/796" class="img-circle img-avatar">
									<img
									src="/media/profile/118673d1-6113-434f-8ee6-449eca7149b0.jpg.300x300_q85_box-148%2C37%2C600%2C489_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/RU.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">KeyReal</h4>
							<p class="profile-city">거주도시: Linyi</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">신비한것</span> <span
									class="label label-default">음악</span> <span
									class="label label-default">역사</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_2.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/137" class="img-circle img-avatar">
									<img
									src="/media/profile/8ba91d0f-3059-428e-9b23-9ce36b3063af.jpg.300x300_q85_box-100%2C0%2C500%2C400_crop.jpg"
									class="img-profile">

								</a>
							</div>
							<h4 class="profile-name">YY-pcy</h4>
							<p class="profile-city">거주도시: Chengdu</p>


							<hr>
							<div class="cover-tags cover-tags-properties"></div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/media/covers/779a4779-de89-4035-b13d-b4c263942e6a.jpg.600x300_q85_crop-50%2C%2050_detail_upscale.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/1291" class="img-circle img-avatar">
									<img
									src="/media/profile/5da87bd6-343a-4e7e-ba72-361784a43a5b.jpg.300x300_q85_box-0%2C0%2C436%2C436_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/CN.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Sean</h4>
							<p class="profile-city">거주도시: Beijing</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">강아지</span> <span
									class="label label-default">해변</span> <span
									class="label label-default">먹기</span> <span
									class="label label-default">고양이</span> <span
									class="label label-default">소설</span> <span
									class="label label-default">인스타그램</span> <span
									class="label label-default">야외 활동</span> <span
									class="label label-default">박물관</span> <span
									class="label label-default">글쓰기</span> <span
									class="label label-default">농구</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_2.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/129" class="img-circle img-avatar">
									<img
									src="/media/profile/599193d8-b977-40e1-8ff9-a3db8714b51e.jpg.300x300_q85_box-0%2C60%2C480%2C540_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/VN.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Chipchip Thu</h4>
							<p class="profile-city">거주도시: Wiesbaden</p>


							<hr>
							<div class="cover-tags cover-tags-properties"></div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_4.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/1227" class="img-circle img-avatar">
									<img src="/static/potluck/img/defaults/profile_4.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ES.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Cristianjx</h4>
							<p class="profile-city">거주도시: Frankfurt (Oder)</p>


							<hr>
							<div class="cover-tags cover-tags-properties"></div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/media/profile/cover/34081c00-ef95-4da4-a2e7-d487a6a3d6d6.jpgohd82dd6dc6c2b00950236d57e0f44679doe5ae2429c.600x300_q85_crop-50%2C%2050_detail_upscale.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/503" class="img-circle img-avatar">
									<img
									src="/media/profile/196ae7f4-0569-4935-ba41-532b0f08d360.jpg.300x300_q85_box-0%2C0%2C320%2C320_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/KR.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Namomy</h4>
							<p class="profile-city">거주도시: Aachen</p>


							<hr>
							<div class="cover-tags cover-tags-properties"></div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_7.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/1702" class="img-circle img-avatar">
									<img src="/static/potluck/img/defaults/profile_11.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/KR.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">hyeongom</h4>
							<p class="profile-city">거주도시: Aachen</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">우쿨렐레</span> <span
									class="label label-default">서예</span> <span
									class="label label-default">원반던지기</span> <span
									class="label label-default">범선</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/media/covers/4cc8d408-23dc-4ea3-92ad-6e6af195aa3f.jpg.600x300_q85_crop-50%2C%2050_detail_upscale.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/73" class="img-circle img-avatar">
									<img src="/static/potluck/img/defaults/profile_2.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/CF.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Mouchoux</h4>
							<p class="profile-city">거주도시: Paris</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">여행</span> <span
									class="label label-default">음악</span> <span
									class="label label-default">콘서트</span> <span
									class="label label-default">스포츠</span> <span
									class="label label-default">유투브</span> <span
									class="label label-default">공부</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/media/covers/90331d8b-4ea4-4d45-9993-3175ff90f9b8.jpg.600x300_q85_crop-50%2C%2050_detail_upscale.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/170" class="img-circle img-avatar">
									<img
									src="/media/profile/b4909cf8-95c3-4649-bb02-642da558b097.jpg.300x300_q85_box-75%2C0%2C525%2C450_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/FR.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">CatherineKevin</h4>
							<p class="profile-city">거주도시: Paris</p>


							<hr>
							<div class="cover-tags cover-tags-properties"></div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_7.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/534" class="img-circle img-avatar">
									<img src="/static/potluck/img/defaults/profile_7.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Hamzah</h4>
							<p class="profile-city">거주도시: Yogyakarta</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">여행</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_2.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/1353" class="img-circle img-avatar">
									<img src="/static/potluck/img/defaults/profile_10.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Jae</h4>
							<p class="profile-city">거주도시: Samarinda</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">한국 드라마</span> <span
									class="label label-default">요리</span> <span
									class="label label-default">소설</span> <span
									class="label label-default">영화 보기</span> <span
									class="label label-default">캠핑</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_2.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/249" class="img-circle img-avatar">
									<img
									src="/media/profile/48c0d953-51d3-4953-868b-9836b3ccfa66.jpg.300x300_q85_box-75%2C0%2C525%2C450_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Saesars</h4>
							<p class="profile-city">거주도시: Parepare</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">배드민턴</span> <span
									class="label label-default">문화</span> <span
									class="label label-default">언어</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_3.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/74" class="img-circle img-avatar">
									<img
									src="/media/profile/9b215acd-bcc8-49da-a4cc-a0201672d834.jpg.300x300_q85_box-0%2C0%2C150%2C150_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">zha</h4>
							<p class="profile-city">거주도시: Jakarta</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">여행</span> <span
									class="label label-default">사진</span> <span
									class="label label-default">영화</span> <span
									class="label label-default">요리</span> <span
									class="label label-default">쇼핑</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_4.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/363" class="img-circle img-avatar">
									<img src="/static/potluck/img/defaults/profile_4.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Anton</h4>
							<p class="profile-city">거주도시: Jakarta</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">관광</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_2.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/1129" class="img-circle img-avatar">
									<img
									src="/media/profile/85686157-3469-4322-a3d9-2ef2d97a934b.jpg.300x300_q85_box-141%2C40%2C459%2C358_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Abay</h4>
							<p class="profile-city">거주도시: Denpasar</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">관광</span> <span
									class="label label-default">요리</span> <span
									class="label label-default">영화 보기</span> <span
									class="label label-default">할류</span> <span
									class="label label-default">여행</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_3.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/274" class="img-circle img-avatar">
									<img
									src="/media/profile/210347d8-630e-41fe-9568-af8b9bc8245e.jpg.300x300_q85_box-0%2C0%2C600%2C600_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Rendy</h4>
							<p class="profile-city">거주도시: Denpasar</p>


							<hr>
							<div class="cover-tags cover-tags-properties"></div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_5.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/908" class="img-circle img-avatar">
									<img
									src="/media/profile/c1033685-f098-4941-93eb-80940378acfc.jpg.300x300_q85_box-120%2C45%2C480%2C405_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Erry_1992</h4>
							<p class="profile-city">거주도시: Bekasi</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">한국 드라마</span> <span
									class="label label-default">영화</span> <span
									class="label label-default">먹기</span> <span
									class="label label-default">인스타그램</span> <span
									class="label label-default">영화</span>

							</div>
							<div class="cover-tags cover-tags-certification">

								<span class="label">Seoul</span>

							</div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_3.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/138" class="img-circle img-avatar">
									<img src="/static/potluck/img/defaults/profile_7.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/ID.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">didywan</h4>
							<p class="profile-city">거주도시: Banjarmasin</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">마사지</span> <span
									class="label label-default">산책</span> <span
									class="label label-default">가이드</span> <span
									class="label label-default">음식</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_7.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/766" class="img-circle img-avatar">
									<img
									src="/media/profile/b0df045a-8ff2-4154-9983-6dcb99b9eb34.jpg.300x300_q85_box-0%2C0%2C316%2C316_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/IT.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Wolfgang</h4>
							<p class="profile-city">거주도시: Turin</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">관광</span> <span
									class="label label-default">비디오게임</span> <span
									class="label label-default">고양이</span> <span
									class="label label-default">먹기</span> <span
									class="label label-default">술 마시기</span> <span
									class="label label-default">과학</span> <span
									class="label label-default">만화</span> <span
									class="label label-default">축구</span> <span
									class="label label-default">농구</span> <span
									class="label label-default">포토그래피</span> <span
									class="label label-default">교류경험</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/media/covers/0707dd71-3e89-403c-ba47-8beb73e379d2.jpg.600x300_q85_crop-50%2C%2050_detail_upscale.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/305" class="img-circle img-avatar">
									<img
									src="/media/profile/30caa45d-a5af-4428-be9a-762e878b97ff.jpg.300x300_q85_box-0%2C42%2C510%2C552_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/TR.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Ajizu</h4>
							<p class="profile-city">거주도시: Tokyo</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">관광</span> <span
									class="label label-default">먹기</span> <span
									class="label label-default">잠자기</span> <span
									class="label label-default">독서</span> <span
									class="label label-default">여행</span> <span
									class="label label-default">음악</span> <span
									class="label label-default">영화</span> <span
									class="label label-default">스포츠</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/media/covers/0707dd71-3e89-403c-ba47-8beb73e379d2.jpg.600x300_q85_crop-50%2C%2050_detail_upscale.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/24" class="img-circle img-avatar">
									<img
									src="/media/profile/54eaea95-4784-4227-8ab4-b3ed1a4ab488.jpg.300x300_q85_box-0%2C0%2C150%2C150_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/JP.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Charlie</h4>
							<p class="profile-city">거주도시: Tokyo</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">음악</span> <span
									class="label label-default">영화</span> <span
									class="label label-default">축구</span> <span
									class="label label-default">농구</span> <span
									class="label label-default">드라마</span> <span
									class="label label-default">여행</span>

							</div>
							<div class="cover-tags cover-tags-certification">

								<span class="label">Seoul</span>

							</div>

						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="item-cover item-cover-sm">



							<div class="cover-background"
								style="background-image: url(/static/potluck/img/defaults/profile_cover_4.jpg)"></div>
							<div class="cover-profile-image">
								<a href="/accounts/users/387" class="img-circle img-avatar">
									<img
									src="/media/profile/4ba5abca-48d5-4224-8443-9335e220312b.jpg.300x300_q85_box-75%2C0%2C525%2C450_crop.jpg"
									class="img-profile"> <img class="img-flag"
									src="/static/potluck/img/flags/TR.png" alt="">

								</a>
							</div>
							<h4 class="profile-name">Onur</h4>
							<p class="profile-city">거주도시: Tsukuba</p>


							<hr>
							<div class="cover-tags cover-tags-properties">

								<span class="label label-default">관광</span> <span
									class="label label-default">먹기</span> <span
									class="label label-default">독서</span> <span
									class="label label-default">여행</span> <span
									class="label label-default">사진</span> <span
									class="label label-default">음악</span> <span
									class="label label-default">축구</span> <span
									class="label label-default">재즈</span> <span
									class="label label-default">휘트니스</span> <span
									class="label label-default">포토그래피</span>

							</div>
							<div class="cover-tags cover-tags-certification"></div>

						</div>
					</div>

				</div>





				<div class="text-center">

					<ul class="pagination">


						<li class="prev disabled"><a>&laquo;</a></li>






						<li class="active"><a>1</a></li>



						<li><a href="?page=2">2</a></li>



						<li><a href="?page=3">3</a></li>



						<li><a href="?page=4">4</a></li>



						<li><a href="?page=5">5</a></li>



						<li><a href="?page=6">6</a></li>



						<li><a href="?page=7">7</a></li>



						<li><a href="?page=8">8</a></li>



						<li><a href="?page=9">9</a></li>



						<li><a href="?page=10">10</a></li>



						<li><a href="?page=11">11</a></li>



						<li><a href="?page=12">12</a></li>




						<li><a href="?page=17">&hellip;</a></li>



						<li class="last"><a href="?page=51">&raquo;</a></li>


					</ul>

				</div>
			</div>
		</section>

	</div>


	<footer class="hidden-xs">
		<div class="container">
			<div class="col-sm-3">
				<img src="/static/potluck/img/icon/potlucktrip.png">
			</div>
			<div class="col-sm-3">
				<ul>
					<li><h5>Service</h5></li>
					<li><a href="/policies/privacy/">Privacy</a></li>
					<li><a href="/policies/terms/">Terms</a></li>
				</ul>
			</div>
			<div class="col-sm-3">
				<ul>
					<li><h5>Company</h5></li>

					<li><a href="/about/about-us/">About us</a></li>

					<li><a href="/about/partners/">Partners</a></li>

					<li><a href="/inquiry/create/">Contact us</a></li>
				</ul>
			</div>
			<div class="col-sm-3">
				<ul>
					<li><h5>Social Media</h5></li>
					<li><a href="//blog.potlucktrip.com" target="_blank">Blog</a></li>
					<li><a href="https://www.facebook.com/potlucktrip"
						target="_blank">Facebook</a></li>
				</ul>
			</div>








		</div>
</body>
</html>