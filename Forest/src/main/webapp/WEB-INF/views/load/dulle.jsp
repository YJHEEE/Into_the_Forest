<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

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
				<h1 class="text-serif mb-4">Dullegil Infomation Search</h1>
				<hr class="my-4" />
				<div class="text-block">
					<div class="col-xl-12 col-md-6">
						<!-- 필터 -->
						<form action="${path}/load/dulle" method="POST">
							<div class="row">
								<!-- 검색 -->
								<div class="col-xl-6 col-md-6 mb-4">
									<label class="form-label" for="form_search">검색</label>
									<div class="input-label-absolute input-label-absolute-right">
										<div class="label-absolute">
											<i class="fa fa-search"></i>
										</div>
										<input class="form-control pe-4" type="search" name="name"
											placeholder="휴양림 이름을 입력해주세요." id="form_search" />
									</div>
								</div>
								<!-- 높이 -->
								<div class="col-xl-6 col-md-6 mb-4 px-4">
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
									<input type="hidden" name="min" id="slider-snap-input-from" value="0"> 
									<input type="hidden" name="max" id="slider-snap-input-to" value="1000">
								</div>
								<!-- 검색 버튼 -->
								<div class="mt-2">
									<button class="btn btn-primary" type="submit">
										<i class="fas fa-filter me-1"></i>Filter & Search
									</button>
								</div>
								<hr class="mt-4">
								<div class="col-xl-6 col-md-6 mb-0 mt-4">
									<p class="mb-md-0 fs-5">
										<strong><c:out value="${fn.length(list)}"></c:out> OO</strong>
										results found
									</p>
								</div>
								<div class="col-xl-6 col-md-6 mb-0">
									<label class="form-label" for="form_type">Sort by</label> <select
										class="selectpicker form-control" name="sort" id="form_sort"
										data-style="btn-selectpicker" style="float: right;">
										<option value="sortBy_0">이름순</option>
										<option value="sortBy_1">오름차순</option>
									</select>
								</div>
							</div>
							<!-- row 끝 -->
						</form>
					</div>
					<!-- col-xl-12 끝 -->
				</div>
				<!-- text-block 끝 -->
				<div class="row offcanvas-body p-2"
					style="overflow: scroll; width: 625px; height: 600px">

					<c:if test="${list == null }">
						<h3 class="p-2 pt-3 text-center">검색 결과가 없습니다.</h3>
					</c:if>
					<c:if test="${list != null }">
						<c:forEach var="load" items="${ list }">
							<div class="text-block ">
								<div class="row">
									<!-- 둘레길 목록 -->
									<div class="col-sm mt-3 p-3 shadow-sm">
										<h6>
											<c:out value="${load.name }"></c:out>
										</h6>
										<p class="text-muted">
											<c:out value="${load.intro }"></c:out>
										</p>
										<button class="btn btn-outline-primary me-2"
											style="float: right" type="button" data-bs-toggle="collapse"
											data-bs-target="#leaveReview" aria-expanded="false"
											aria-controls="leaveReview">리뷰</button>
										<p class="text-muted">
											<c:out value="${load.address }"></c:out>
										</p>


										<%-- <c:if test="${list == null }">
											<h3 class="p-2 pt-3 text-center">검색 결과가 없습니다.</h3>
										</c:if>
										<c:if test="${list != null }">
											<c:forEach var="load" items="${ list }"> --%>
												<!-- 리뷰 -->
												<div class="collapse mt-4" id="leaveReview">
													<form class="form" id="contact-form" method="get"
														action="#">
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
																<p class="text-muted text-sm">생각보다 길이 어려워요 그치만 풍경이
																	보기 좋아요</p>
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
											<%-- </c:forEach>
										</c:if> --%>
												<!-- 리뷰 끝 -->

									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"></script>
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