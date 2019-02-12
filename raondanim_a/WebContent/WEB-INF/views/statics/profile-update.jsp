<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 인클루드 심플 헤더 -->
	<jsp:include page="/WEB-INF/views/navbar-main.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/navbar-sub.jsp"></jsp:include>
	<!-- 인클루드 심플 헤더 END -->

	<!-- 서브 네브바 -->
	<div
		class="navbar navbar-inverse navbar-sub navbar-sub-light hidden-xs">
		<div class="container">
			<ul class="nav navbar-nav navbar-core">
				<li><a href="/accounts/profiles/update/">프로필 수정</a></li>
				<li><a href="/accounts/profiles/update/personal/">계정설정</a></li>
				<li><a href="/accounts/profiles/update/gallery/">갤러리</a></li>
			</ul>
		</div>
	</div>
	<!-- 서브 네브바 END -->

	<div class="main-container">
		<section id="section-profile-update" class="bg-gray">
			<div class="container">
				<h3 class="section-title">
					<img class="section-header-icon" src="../img/Profile.png" alt="">
					1단계: 기본 정보 입력하기
				</h3>
				<div class="progress">
					<div class="progress-bar" role="progressbar"
						aria-valuenow="14.2857142857" aria-valuemin="0"
						aria-valuemax="100" style="width: 33.333%;"></div>
				</div>
				<form id="form-profile-update" method="post" class="form-horizontal"
					enctype="multipart/form-data" novalidate>
					<input type='hidden' name='csrfmiddlewaretoken'
						value='6YMPKj9OJbc16XbGIT2w2NRVvrFoTN3WNXfcRsGvrtnkV4DBgpJqoPLFMxRAE9Q2' />
					<input type="hidden" name="step" value="1">
					<div class="row">
						<div class="col-sm-4">
							<div class="border-box border-box-tips">
								<h4>
									<i class="fa fa-lightbulb-o"></i> <span>Tips</span>
								</h4>
								<ul>
									<li>닉네임은 영어로 입력하세요.</li>
									<li>* 닉네임이 아닌 실제 이름은 친구로 맺어진 회원에게만 노출 됩니다.</li>
								</ul>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="panel panel-default">
								<div class="panel-body pt-30">
									<div class="form-group">
										<label class="col-sm-3 control-label" for="id_nickname">닉네임</label>
										<div class="col-sm-9">
											<input class="form-control" id="id_nickname" maxlength="200"
												name="nickname" placeholder="닉네임" title="" type="text"
												value="manzza" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="id_gender_0">성별</label>
										<div class="col-sm-9">
											<div id="id_gender">
												<div class="radio">
													<label for="id_gender_0"><input checked="checked"
														class="" id="id_gender_0" name="gender" title=""
														type="radio" value="1" required /> 남</label>
												</div>
												<div class="radio">
													<label for="id_gender_1"><input class=""
														id="id_gender_1" name="gender" title="" type="radio"
														value="2" required /> 여</label>
												</div>
												<div class="radio">
													<label for="id_gender_2"><input class=""
														id="id_gender_2" name="gender" title="" type="radio"
														value="3" required /> 기타</label>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="id_nationality">국적</label>
										<div class="col-sm-9">
											<select
												class="form-control django-select2 django-select2-heavy"
												id="id_nationality" name="nationality" title="">
												<option></option>
												<option value="122" selected="selected">South Korea</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="id_languages">사용가능
											언어</label>
										<div class="col-sm-9">
											<select multiple="multiple"
												class="form-control django-select2 django-select2-heavy"
												id="id_languages" name="languages" title="">
												<option value="1" selected="selected">한국어</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">전화번호</label>
										<div class="col-sm-4">
											<div class="input-group">
												<input class="form-control" value="">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="id_refer_code">추천코드</label>
										<div class="col-sm-9">
											<input class="form-control" id="id_refer_code" maxlength="20"
												name="refer_code" placeholder="추천코드" title="" type="text" />
										</div>
									</div>
								</div>
							</div>
							<div class="btn-group-form-submit">
								<button class="btn btn-potluck btn-submit" data-step="1">다음</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
	</div>
	<!-- 인클루드-푸터 -->
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	<!-- 인클루드-푸터 END -->
</body>
</html>