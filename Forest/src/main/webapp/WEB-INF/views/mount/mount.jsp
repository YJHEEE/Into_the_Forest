<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
    
  <!-- 경로 -->
  <section class="d-flex align-items-center dark-overlay bg-cover"
    style="background-image: url(<%=request.getContextPath()%>/resources/img/breadcrumbs_img.jpg)">
    <div class="container py-4 py-lg-6 text-white overlay-content text-center">
      <h1 class="display-5 fw-bold text-shadow">산정보</h1>
      <p class="text-lg text-shadow">홈 - 산림</p>
    </div>
  </section>
  <!-- 메인 -->
  <section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-xl-6 px-3">
          <h1 class="text-serif mb-4"> Mountain Infomation Search</h1>
          <hr class="my-4" />
          <div class="text-block">
            <div class="col-xl-12 col-md-6">
<!-- 필터 -->
<form action="${path}/mount/mount" method="POST">
                <div class="row">
                  <!-- 검색 -->
                  <div class="col-xl-12 col-md-6 mb-4">
                    <label class="form-label" for="form_search">검색</label>
                    <div class="input-label-absolute input-label-absolute-right">
                      <div class="label-absolute">
                        <i class="fa fa-search"></i>
                      </div>
                      <input class="form-control pe-4" type="search" name="name" placeholder="휴양림 이름을 입력해주세요."
                        id="form_search" />
                    </div>
                  </div>
                  
                  <div class="col-lg-6 mb-3">
					<label class="form-label" for="form_type">지역선택</label>
                    <select class="selectpicker form-control" name="areaArray" id="form_type" multiple  data-style="btn-selectpicker">
                      <option value="전국">전국</option>
                      <option value="강원도">강원도</option>
                      <option value="경기도">경기도</option>
                      <option value="경상도">경상도</option>
                      <option value="전라도">전라도</option>
                      <option value="제주도">제주도</option>
                      <option value="충정도">충정도</option>
                    </select>
                  </div>
                  
                  <div class="col-xl-6 col-md-6 mb-4 px-4">
                    <label class="form-label">높이 설정</label>
                    <div class="text-primary" id="slider-snap"></div>
                    <div class="nouislider-values">
                      <div class="min"><span id="slider-snap-value-from"></span>km</div>
                      <div class="max"><span id="slider-snap-value-to"></span>km</div>
                    </div>
                    <input type="hidden" name="min" id="slider-snap-input-from" value="0">
                    <input type="hidden" name="max" id="slider-snap-input-to" value="1000">
                  </div>
                  
                  <div class="mt-2">
                    <button class="btn btn-primary" type="submit"><i class="fas fa-filter me-1"></i>Filter & Search</button>
                  </div>
                  <hr class="mt-4">
				  <div class="col-xl-6 col-md-6 mb-0 mt-4">
				  	<p class="mb-md-0 fs-5">
						<strong><c:out value="${fn.length(list)}"></c:out> OO</strong> results found</p>
				  </div>
				  <div class="col-xl-6 col-md-6 mb-0">
                    <label class="form-label" for="form_type">Sort by</label>
                  		<select class="selectpicker form-control" name="sort" id="form_sort" data-style="btn-selectpicker" style="float: right;">
		                    <option value="sortBy_0">이름순 </option>
		                    <option value="sortBy_1">높이순 </option>
		                    <option value="sortBy_2">명산만 보기 </option>
		                    <option value="sortBy_3">명산 top 100 </option>
                  		</select>
                  </div>
                </div> <!-- row 끝 -->
			  </form>
            </div> <!-- col-xl-12 끝 -->
          </div> <!-- text-block 끝 -->
          <div class="row offcanvas-body" style="overflow: scroll; width: 625px; height: 700px">
            <c:if test="${list == null }">
            	<h3 class="p-2 pt-3 text-center">검색 결과가 없습니다.</h3>
            </c:if>
            <c:if test="${list != null }">
	           <c:forEach var="mount" items="${ list }">
	            <!-- 카드 -->
	            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92" style="height: 20rem;">
	              <div class="card h-100 border-0 shadow">
	                <div class="card-img-top overflow-hidden gradient-overlay" style="height: 10rem;"> 
	                  <img class="img-fluid" src="${ path }/resources/img/top100/강천산2.jpg" alt="Modern, Well-Appointed Room" />
	                  <!-- 클릭시 해당 산 상세페이지로 넘어가는 곳 a link -->
	                  <a class="tile-link" href="${path }/mount/mountDetail"></a>
	                  <div class="card-img-overlay-bottom z-index-20">
	                    <div>
	                      <h5 style="color:white;"><c:out value="${mount.name}"></c:out></h5>
	                    </div>
	                  </div>
	                </div>
	                <div class="card-body d-flex align-items-center" >
	                  <div class="w-100">
	                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="mountain-detail"><c:out value="${mount.area }"></c:out></a></h6>
	                    <div class="d-flex card-subtitle mb-3">
	                      <p class="flex-grow-1 mb-0 text-muted text-sm"><c:out value="${mount.information }"></c:out></p>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	           </c:forEach>
            </c:if>
          
          </div>
        </div>
        <div class="col-lg-6 col-xl-6 p-0">
          <div class="map-wrapper-450 h-100" id="detailSideMap"></div>
        </div>
      </div> <!-- row -->
    </div> <!-- container -->
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
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