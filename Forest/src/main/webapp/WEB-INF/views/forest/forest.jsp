<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<section class="d-flex align-items-center dark-overlay bg-cover"
		style="background-image: url(<%=request.getContextPath()%>/resources/img/breadcrumbs_img.jpg);">
		<div
			class="container py-4 py-lg-6 text-white overlay-content text-center">
			<h1 class="display-5 fw-bold text-shadow">휴양림</h1>
			<p class="text-lg text-shadow">Home - 휴양림 검색</p>
		</div>
	</section>

  <section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-7 col-xl-6 px-4 ps-xl-4 pe-xl-4">
          <h1 class="text-serif mb-4">Forest Search</h1>
          <hr class="my-4" />
          <div class="">
            <div class="col-xl-12 col-md-6 mb-4">
              <!-- 필터 -->
               <form action="${path}/forest/forest" method="POST">
                <div class="row">
                  <!-- 검색 -->
                  <div class="col-xl-6 col-md-6 mb-4">
                    <label class="form-label" for="form_search">검색</label>
                    <div class="input-label-absolute input-label-absolute-right">
                      <div class="label-absolute"> <i class="fa fa-search"></i></div>
                      <input class="form-control pe-4" type="text" name="search" placeholder="휴양림 이름을 입력해주세요." id="form_search" />
                    </div>
                  </div>
                  <!-- 필터 드롭박스1 -->
                  <div class="col-xl-6 col-md-6 mb-4">
                    <label class="form-label" for="form_type">지역선택</label>
                    <select class="selectpicker form-control" name="locate" id="form_type" multiple data-style="btn-selectpicker">
                      <option value="type_0">전국</option>
                      <option value="type_1">강원도</option>
                      <option value="type_2">경기도</option>
                      <option value="type_3">경상도</option>
                      <option value="type_4">전라도</option>
                      <option value="type_5">제주도</option>
                      <option value="type_6">충정도</option>
                    </select>
                  </div>
                  <div class="row">
                    <!-- 운영주체 -->
                    <div class="col-xl-6 mb-4 mt-2">
                      <label class="form-label">운영주체</label>
                      <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="public" name="item" id="cuisine_0"/>
                            <label class="form-check-label" for="cuisine_0">공립</label>
                          </div>
                        </li>
                        <li class="list-inline-item">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="national" name="item" id="cuisine_1"/>
                            <label class="form-check-label" for="cuisine_1">국립</label>
                          </div>
                        </li>
                        <li class="list-inline-item">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="private" name="item" id="cuisine_2"/>
                            <label class="form-check-label" for="cuisine_2">사립</label>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <!-- 편의시설 -->
                    <div class="col-xl-6 mb-4 mt-2">
                      <label class="form-label">편의시설</label>
                      <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="meeting" name="item2" id="cuisine_3"/>
                            <label class="form-check-label" for="cuisine_3">회의실</label>
                          </div>
                        </li>
                        
                        <li class="list-inline-item">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="pool" name="item2" id="cuisine_4"/>
                            <label class="form-check-label" for="cuisine_4">물놀이장</label>
                          </div>
                        </li>
                        <li class="list-inline-item">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="bbq" name="item2" id="cuisine_5"/>
                            <label class="form-check-label" for="cuisine_5">바베큐</label>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="mt-2">
                    <button class="btn btn-primary" type="submit"><i class="fas fa-filter me-1"></i>Filter & Search</button>
                  </div>
                  <hr class="mt-4">
				  <div class="col-xl-6 col-md-6 mb-0 mt-4">
				  	<p class="mb-md-0 fs-5">
						<strong><c:out value="${fn.length(list)}"></c:out> OO</strong> results found</p>
				  </div>
<!-- 				  <div class="col-xl-6 col-md-6 mb-0">
                    <label class="form-label" for="form_type">Sort by</label>
                  		<select class="selectpicker form-control" name="sort" id="form_sort" data-style="btn-selectpicker" style="float: right;">
		                    <option value="sortBy_0">이름순 </option>
		                    <option value="sortBy_1">높이순 </option>
		                    <option value="sortBy_2">명산만 보기 </option>
		                    <option value="sortBy_3">명산 top 100 </option>
                  		</select>
                  </div> -->
                </div>
              </form>
            </div>
          </div>
          
<!-- 휴양림 목록1 -->
          <div class="pt-5" style="overflow: auto; width: 620px; height: 600px">
          <c:if test="${list == null }">
          	<h3 class="p-2 pt-3 text-center">검색 결과가 없습니다.</h3>
          </c:if>
          <c:if test="${list != null }">
          	<c:forEach var="forest" items="${ list }">
	            <div class="mb-5 px-1 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
	              <div class="p-4 pb-2 card h-100 border-0 shadow">
	                <div class="d-flex">
	                  <img class="avatar avatar-xl p-1 flex-shrink-0 me-4 mt-5" src="${path }/resources/img/logo/logo_image.jpg" alt="청태산" />
	                  <div class="col-7">
	                    <p>
	                      <span class="text-muted text-uppercase text-sm"><c:out value="${ forest.forest_oper }"/></span><br>
	                      <strong class="text-lg"><c:out value="${ forest.forest_name }"/></strong>
	                    </p>
	                    <table class="text-sm">
	                      <tr>
	                        <td style="width: 100px">이용시간</td>
	                        <td>[입/퇴실 시간] <c:out value="${ forest.check_in }"/> : 00 ~ <c:out value="${ forest.check_out }"/> : 00</td>
	                      </tr>
	                      <tr>
	                        <td style="width: 100px">인원</td>
	                        <td>[최대] <c:out value="${ forest.person }"/></td>
	                      </tr>
	                      <tr>
	                        <td style="width: 100px">편의시설</td>
	                        <td><c:out value="${ forest.amenities }"/></td>
	                      </tr>
	                      <tr>
	                        <td style="width: 100px">주소</td>
	                        <td><c:out value="${ forest.forest_addr }"/></td>
	                      </tr>
	                    </table>
	                    <p class="m-1">
	                      <a class="btn btn-link text-primary fs-6"
	                        href="${forest.url }/">
	                         <svg style="width: 20px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
	                          <path
	                            d="M218.3 8.486C230.6-2.829 249.4-2.829 261.7 8.486L469.7 200.5C476.4 206.7 480 215.2 480 224H336C316.9 224 299.7 232.4 288 245.7V208C288 199.2 280.8 192 272 192H208C199.2 192 192 199.2 192 208V272C192 280.8 199.2 288 208 288H271.1V416H112C85.49 416 64 394.5 64 368V256H32C18.83 256 6.996 247.9 2.198 235.7C-2.6 223.4 .6145 209.4 10.3 200.5L218.3 8.486zM336 256H560C577.7 256 592 270.3 592 288V448H624C632.8 448 640 455.2 640 464C640 490.5 618.5 512 592 512H303.1C277.5 512 255.1 490.5 255.1 464C255.1 455.2 263.2 448 271.1 448H303.1V288C303.1 270.3 318.3 256 336 256zM352 304V448H544V304H352z" />
	                        </svg><strong> 홈페이지 바로가기</strong>
	                      </a>
	                    </p>
	                  </div>
	                  <div class="col-3 row icon-rounded text-center mx-2 mt-5 shadow" style="width: 80px; height: 80px">
	                    <a class="btn btn-link text-primary mt-2" href="${path }/forest/forestDetail">
	                      <svg style="width: 25px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
	                        <path d="M216.1 408.1C207.6 418.3 192.4 418.3 183 408.1L119 344.1C109.7 335.6 109.7 320.4 119 311C128.4 301.7 143.6 301.7 152.1 311L200 358.1L295 263C304.4 253.7 319.6 253.7 328.1 263C338.3 272.4 338.3 287.6 328.1 296.1L216.1 408.1zM128 0C141.3 0 152 10.75 152 24V64H296V24C296 10.75 306.7 0 320 0C333.3 0 344 10.75 344 24V64H384C419.3 64 448 92.65 448 128V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V128C0 92.65 28.65 64 64 64H104V24C104 10.75 114.7 0 128 0zM400 192H48V448C48 456.8 55.16 464 64 464H384C392.8 464 400 456.8 400 448V192z" />
	                      </svg>
	                        예약하기
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
           </c:forEach>
          </c:if>
         </div>
		<!-- 휴양림 목록1 끝 -->
        </div>
<!-- 왼쪽 검색 페이지 끝 -->
 	<!--  지도 -->
        <div class="col-lg-5 col-xl-6 px-lg-3">
          <div class="map-wrapper-450 h-100" id="detailSideMap"></div>
        </div>
      </div>
    </div>
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
  
  <script>
    createDetailMap({
      mapId: 'detailSideMap',
      mapZoom: 18,
      mapCenter: [40.732346, -74.0014247],
      markerShow: true,
      markerPosition: [40.732346, -74.0014247],
      markerPath: 'img/marker.svg',
    })
  </script>
</body>

</html>