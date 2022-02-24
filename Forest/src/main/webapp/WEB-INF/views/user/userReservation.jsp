<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <!-- 경로 -->
  <section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(<%= request.getContextPath() %>/resources/img/breadcrumbs_img.jpg)">
    <div class="container py-4 py-lg-6 text-white overlay-content text-center">
      <h1 class="display-5 fw-bold text-shadow">예약정보</h1>
      <p class="text-lg text-shadow">홈 - 마이페이지 - 예약정보</p>
    </div>
  </section>
  <!-- 메인 -->
<section class="py-5">
      <div class="container">
        <div class="row">
          <!-- 사이드 -->
          <div class="col-lg-3 me-lg-auto">
           <div class="card border-0 shadow mb-6 mb-lg-0 sticky-top" style="top: 5rem;">
              <div class="card-header bg-gray-100 mb-2 py-4 border-0 text-center">
                <a class="d-inline-block" href="${path}/user/user">
              	  <img class="d-inline-block avatar avatar-xxl p-2 mb-2" src="${path }/resources/img/user.png"></a>
                <h5>${loginMember.name} 님</h5>
            </div>
            <div class="card-body p-4">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-3">
                  <svg class="svg-icon theme-line-0 svg-icon-md">
                    <use xlink:href="#diploma-1"> </use>
                  </svg>
                </div>
                <div>
                  <p class="mb-0">스탬프<span style="float: right;">2</span></p>
                </div>
              </div>
              <hr>
              <a href="userInfo" class="text-black">
                <div class="d-flex align-items-center mb-3">
                  <div class="icon-rounded icon-rounded-sm bg-gray-200 flex-shrink-0 me-3">
                    <svg class="svg-icon theme-line-0 svg-icon-md">
                      <use xlink:href="#user-1"></use>
                    </svg>
                  </div>
                  <div>
                    <p class="mb-0">내 정보</p>
                  </div>
                </div>
              </a>
              <a href="userStamp" class="text-black">
                <div class="d-flex align-items-center mb-3">
                  <div class="icon-rounded icon-rounded-sm bg-gray-200 flex-shrink-0 me-3">
                    <svg class="svg-icon theme-line-0 svg-icon-md">
                      <use xlink:href="#mountain-1"></use>
                    </svg>
                  </div>
                  <div>
                    <p class="mb-0">스탬프</p>
                  </div>
                </div>
              </a>
              <a href="userReservation" class="text-black">
                <div class="d-flex align-items-center mb-3">
                  <div class="icon-rounded icon-rounded-sm bg-gray-200 flex-shrink-0 me-3">
                    <svg class="svg-icon theme-line-0 svg-icon-md">
                      <use xlink:href="#address-book-1"></use>
                    </svg>
                  </div>
                  <div>
                    <p class="mb-0">예약 정보</p>
                  </div>
                </div>
              </a>
              <a href="userReview" class="text-black">
                <div class="d-flex align-items-center mb-3">
                  <div class="icon-rounded icon-rounded-sm bg-gray-200 flex-shrink-0 me-3">
                    <svg class="svg-icon theme-line-1 svg-icon-md">
                      <use xlink:href="#edit-1"></use>
                    </svg>
                  </div>
                  <div>
                    <p class="mb-0">내가 쓴 글</p>
                  </div>
                </div>
              </a>
            </div>
          </div>
          </div>
          <!-- 메인 -->
          <div class="col-lg-9 ps-lg-5">              
            <div class="text-block">
              <h2 class="hero-heading mb-4">휴양림 예약 내역</h2>
              <h4 class="mb-5">방문 예정</h4> 
              
              <div class="row">
				 <c:if test="${book == null }">
					<h3>예약된 숙소가 없습니다. 다음 여행을 계획해보세요.</h3>
                </c:if>
                <c:if test="${book != null }">
	                <c:forEach var="book" items="${ book }">
		                <div class="list-group shadow mb-5 p-0">
		                  <a class="list-group-item list-group-item-action p-4" href="userReservationDetail.jsp">
		                    <div class="row">
		                      <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
		                        <div class="d-flex align-items-center mb-3 p-0">
		                          <h2 class="h4 mb-0"><c:out value="${ forest.forest_name }"/></h2>
		                        </div>
		                        <p class="text-sm text-muted"><c:out value="${ room.room_name }"/></p>
		                        <span class="badge badge-pill p-2 badge-success-light"><c:out value="${ book.check_in }"/> - <c:out value="${ book.check_out }"/></span>
		                      </div>
		                      <div class="col-lg-8">
		                        <div class="row">
		                          <div class="col-6 col-md-4 col-lg-4 py-3">
		                            <h6 class="label-heading">결제</h6>
		                            <p class="text-sm fw-bold"><c:out value="${ book.pay }"/></p>
		                            <h6 class="label-heading">휴양림 번호</h6>
		                            <p class="text-sm fw-bold mb-0"><c:out value="${ forest.forest_phone }"/></p>
		                          </div>
		                          <div class="col-6 col-md-4 col-lg-4 py-3">
		                            <h6 class="label-heading">예약자</h6>
		                            <p class="text-sm fw-bold"><c:out value="${ member.name }"/></p>
		                            <h6 class="label-heading">예약자 전화번호</h6>
		                            <p class="text-sm fw-bold mb-0"><c:out value="${ member.tell }"/></p>
		                          </div>
		                          <div class="col-12 col-lg-4 align-self-center">
		                            <span class="text-primary text-sm text-uppercase me-4 me-lg-0">
		                             <i class="fa fa-check fa-fw me-2"> </i>결제완료</span><br class="d-none d-lg-block">
		                            <span class="text-primary text-sm text-uppercase">
		                             <i class="fa fa-check fa-fw me-2"> </i>예약완료</span>
		                          </div>
		                        </div>
		                      </div>
		                    </div>
		                  </a> 
		                </div>
	     		   </c:forEach>
     		  </c:if>
              <!-- 방문 완료 (이전 예약 기록) -->
              <p class="mb-6"> <img class="img-fluid" src="${ path }/resources/img/illustration/undraw_trip_dv9f.svg" alt="" style="width: 400px;"></p>    
              <h4 class="mb-5">방문 완료</h4> 
              <div class="row">
                <!-- place item-->
                <div class="col-xl-3 col-md-4 col-sm-6 mb-5" data-marker-id="59c0c8e33b1527bfe2abaf92">
                  <div class="card hover-animate h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden"><a href="5user-reservation-detail.html"><img class="img-fluid" src="${ path }/resources/img/mountain/내장산1.jpg" alt="Modern, Well-Appointed Room"/></a></div>
                    <div class="card-body d-flex align-items-center">
                      <div class="w-100">
                        <p class="subtitle fw-normal text-sm mb-2">2019 3월</p>
                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="user-booking-detail.html">청태산 자연휴양림</a></h6>
                        <div class="d-flex card-subtitle">
                          <p class="flex-grow-1 mb-0 text-muted text-sm">소나무방</p>
                          <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> 
                <!-- place item-->
                <div class="col-xl-3 col-md-4 col-sm-6 mb-5" data-marker-id="59c0c8e33b1527bfe2abaf92">
                  <div class="card hover-animate h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden"><a href="5user-reservation-detail.html"><img class="img-fluid" src="${ path }/resources/img/mountain/내장산1.jpg" alt="Modern, Well-Appointed Room"/></a></div>
                    <div class="card-body d-flex align-items-center">
                      <div class="w-100">
                        <p class="subtitle fw-normal text-sm mb-2">2019 3월</p>
                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="user-booking-detail.html">청태산 자연휴양림</a></h6>
                        <div class="d-flex card-subtitle">
                          <p class="flex-grow-1 mb-0 text-muted text-sm">소나무방</p>
                          <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>                
                <!-- place item-->
                <div class="col-xl-3 col-md-4 col-sm-6 mb-5" data-marker-id="59c0c8e33b1527bfe2abaf92">
                  <div class="card hover-animate h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden"><a href="5user-reservation-detail.html"><img class="img-fluid" src="${ path }/resources/img/mountain/내장산1.jpg" alt="Modern, Well-Appointed Room"/></a></div>
                    <div class="card-body d-flex align-items-center">
                      <div class="w-100">
                        <p class="subtitle fw-normal text-sm mb-2">2019 3월</p>
                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="user-booking-detail.html">청태산 자연휴양림</a></h6>
                        <div class="d-flex card-subtitle">
                          <p class="flex-grow-1 mb-0 text-muted text-sm">소나무방</p>
                          <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> 
                <!-- place item-->
                <div class="col-xl-3 col-md-4 col-sm-6 mb-5" data-marker-id="59c0c8e33b1527bfe2abaf92">
                  <div class="card hover-animate h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden"><a href="5user-reservation-detail.html"><img class="img-fluid" src="${ path }/resources/img/mountain/내장산1.jpg" alt="Modern, Well-Appointed Room"/></a></div>
                    <div class="card-body d-flex align-items-center">
                      <div class="w-100">
                        <p class="subtitle fw-normal text-sm mb-2">2019 3월</p>
                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="user-booking-detail.html">청태산 자연휴양림</a></h6>
                        <div class="d-flex card-subtitle">
                          <p class="flex-grow-1 mb-0 text-muted text-sm">소나무방</p>
                          <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> 
                <!-- place item-->
                <div class="col-xl-3 col-md-4 col-sm-6 mb-5" data-marker-id="59c0c8e33b1527bfe2abaf92">
                  <div class="card hover-animate h-100 border-0 shadow">
                    <div class="card-img-top overflow-hidden"><a href="5user-reservation-detail.html"><img class="img-fluid" src="${ path }/resources/img/mountain/내장산1.jpg" alt="Modern, Well-Appointed Room"/></a></div>
                    <div class="card-body d-flex align-items-center">
                      <div class="w-100">
                        <p class="subtitle fw-normal text-sm mb-2">2019 3월</p>
                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="user-booking-detail.html">청태산 자연휴양림</a></h6>
                        <div class="d-flex card-subtitle">
                          <p class="flex-grow-1 mb-0 text-muted text-sm">소나무방</p>
                          <p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>                

              </div>       
            </div>
          </div>
        </div>
      </div>
    </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
      
    </script>
    <!-- jQuery-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="js/theme.js"></script>
  </body>
</html>