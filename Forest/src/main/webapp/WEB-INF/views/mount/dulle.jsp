<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<!-- 경로 -->
<section class="d-flex align-items-center dark-overlay bg-cover"
	style="background-image: url(<%=request.getContextPath()%>/resources/img/breadcrumbs_img.jpg)">
	<div
		class="container py-4 py-lg-6 text-white overlay-content text-center">
		<h1 class="display-5 fw-bold text-shadow">둘레길</h1>
		<p class="text-lg text-shadow">홈 - 둘레길</p>
	</div>
</section>
<!-- 메인 -->
<section class="py-5">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-xl-6 px-4 pb-4 ps-xl-4 pe-xl-4">
				<div class="text-block row">
					<div class="col-xl-11 col-md-11 mb-4">
						<div class="input-label-absolute input-label-absolute-right">
							<div class="label-absolute">
								<i class="fa fa-search"></i>
							</div>
							<input class="form-control pe-4" type="search" name="search"
								placeholder="산 이름을 입력해주세요" id="form_search" />
						</div>
					</div>
					<div class="d-flex align-items-center justify-content-between mb-4">
						<div class="col-xl-8 col-md-8 ms-1">
							<label class="form-label">높이 설정</label>
							<div class="text-primary" id="slider-snap"></div>
							<div class="nouislider-values">
								<div class="min">
									<span id="slider-snap-value-from"></span>km
								</div>
								<div class="max">
									<span id="slider-snap-value-to"></span>km
								</div>
							</div>
							<input type="hidden" name="pricefrom" id="slider-snap-input-from"
								value="0" /> <input type="hidden" name="priceto"
								id="slider-snap-input-to" value="500" />
						</div>
						<div class="mt-2 me-5">
							<button class="btn btn-primary" type="submit">
								<i class="fas fa-search me-1"></i>검색
							</button>
						</div>
					</div>
				</div>
				<div
					class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-3 mt-3">
					<div class="me-3">
						<p class="mb-3 mb-md-0">
							<strong>12</strong> results found
						</p>
					</div>
					<div>
						<label class="form-label me-2" for="form_sort">Sort by</label> <select
							class="selectpicker" name="sort" id="form_sort"
							data-style="btn-selectpicker" title="">
							<option value="sortBy_0">오름차순</option>
							<option value="sortBy_1">리뷰 많은순</option>
							<option value="sortBy_2">내림차순</option>
						</select>
					</div>
				</div>
				<div class="row offcanvas-body p-2"
					style="overflow: scroll; width: 625px; height: 600px">
					<div class="text-block">
						<div class="row">
							<div class="col-sm">
								<h6>광나루 둘레길</h6>
								<p class="text-muted">전라남도 구례군 광의면 온당리 난동마을과 구례군 토지면 오미리를 잇는
									지리산둘레길로 7시간정도 소요됩니다.</p>
								<button class="btn btn-outline-primary me-2"
									style="float: right" type="button" data-bs-toggle="collapse"
									data-bs-target="#leaveReview" aria-expanded="false"
									aria-controls="leaveReview">리뷰</button>
								<p class="text-muted">거리 : 18.6km</p>
								<div class="collapse mt-4" id="leaveReview">
									<form class="form" id="contact-form" method="get" action="#">
										<div class="row">
											<div class="col-sm-6">
												<div class="mb-4">
													<label class="form-label" for="rating">별점</label> <select
														class="form-select focus-shadow-0" name="rating"
														id="rating">
														<option value="5">
															&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
														<option value="4">
															&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
														<option value="3">
															&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
														<option value="2">
															&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
														<option value="1">
															&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
													</select>
												</div>
											</div>
										</div>
										<div class="mb-4">
											<label class="form-label" for="review">리뷰 작성</label>
											<textarea class="form-control" rows="4" name="review"
												id="review" placeholder="후기를 작성해주세요" required="required"></textarea>
										</div>
										<button class="btn btn-primary" type="submit">등록하기</button>
										<div class="d-flex d-block d-sm-flex review">
											<div>
												<h6 class="mt-2 mb-1">이동혁</h6>
												<div class="mb-2">
													<i class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i>
												</div>
												<p class="text-muted text-sm">생각보다 길이 어려워요 그치만 풍경이 보기
													좋아요</p>
											</div>
										</div>
										<div class="d-flex d-block d-sm-flex review">
											<div>
												<h6 class="mt-2 mb-1">이동수</h6>
												<div class="mb-2">
													<i class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i>
												</div>
												<p class="text-muted text-sm">둘레길이 관리가 참 잘되어있어서 편했어요</p>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="text-block">
						<div class="row">
							<div class="col-sm">
								<h6>광나루 둘레길</h6>
								<p class="text-muted">전라남도 구례군 광의면 온당리 난동마을과 구례군 토지면 오미리를 잇는
									지리산둘레길로 7시간정도 소요됩니다.</p>
								<button class="btn btn-outline-primary me-2"
									style="float: right" type="button" data-bs-toggle="collapse"
									data-bs-target="#leaveReview1" aria-expanded="false"
									aria-controls="leaveReview1">리뷰</button>
								<p class="text-muted">거리 : 18.6km</p>
								<div class="collapse mt-4" id="leaveReview1">
									<form class="form" id="contact-form" method="get" action="#">
										<div class="row">
											<div class="col-sm-6">
												<div class="mb-4">
													<label class="form-label" for="rating">별점</label> <select
														class="form-select focus-shadow-0" name="rating"
														id="rating">
														<option value="5">
															&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
														<option value="4">
															&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
														<option value="3">
															&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
														<option value="2">
															&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
														<option value="1">
															&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
													</select>
												</div>
											</div>
										</div>
										<div class="mb-4">
											<label class="form-label" for="review">리뷰 작성</label>
											<textarea class="form-control" rows="4" name="review"
												id="review" placeholder="후기를 작성해주세요" required="required"></textarea>
										</div>
										<button class="btn btn-primary" type="submit">등록하기</button>
										<div class="d-flex d-block d-sm-flex review">
											<div>
												<h6 class="mt-2 mb-1">이동혁</h6>
												<div class="mb-2">
													<i class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i>
												</div>
												<p class="text-muted text-sm">생각보다 길이 어려워요 그치만 풍경이 보기
													좋아요</p>
											</div>
										</div>
										<div class="d-flex d-block d-sm-flex review">
											<div>
												<h6 class="mt-2 mb-1">이동수</h6>
												<div class="mb-2">
													<i class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i><i
														class="fa fa-xs fa-star text-primary"></i>
												</div>
												<p class="text-muted text-sm">둘레길이 관리가 참 잘되어있어서 편했어요</p>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 지도 영역 시작 -->
			<div class="col-lg-5 col-xl-6 px-lg-0">
				<div class="map-wrapper-450 h-100" id="detailSideMap"></div>
			</div>
			<!-- 지도 영역 끝 -->
		</div>
	</div>
</section>
<!-- 푸터 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<!-- Map-->
<!-- 
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
 -->
<!-- Available tile layers-->
<!-- 
<script src="${ path }/resources/js/map-layers.js"></script>
<script src="${ path }/resources/js/map-detail.js"></script>
<script>
	createDetailMap({
		mapId : 'detailSideMap',
		mapZoom : 20,
		mapCenter : [40.732346, -74.0014247],
		markerShow : true,
		markerPosition : [ 40.732346, -74.0014247 ],
		markerPath : '${path}/resources/img/marker.svg',
	})
</script>
 -->
<!-- Daterange picker-->
<script	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"></script>
<script src="${ path }/resources/js/datepicker-category.js"></script>
<!-- Price Slider-->
<script src="${ path }/resources/vendor/nouislider/nouislider.min.js"></script>
<script>
	var snapSlider = document.getElementById('slider-snap')

	noUiSlider.create(snapSlider, {
		start : [ 0, 500 ],
		snap : false,
		connect : true,
		step : 1,
		range : {
			min : 0,
			max : 500,
		},
	})
	var snapValues = [ document.getElementById('slider-snap-value-from'),
			document.getElementById('slider-snap-value-to'), ]
	var inputValues = [ document.getElementById('slider-snap-input-from'),
			document.getElementById('slider-snap-input-to'), ]
	snapSlider.noUiSlider.on('update', function(values, handle) {
		snapValues[handle].innerHTML = values[handle]
		inputValues[handle].value = values[handle]
	})
</script>
</body>

</html>