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
      <h1 class="display-5 fw-bold text-shadow">내가쓴글</h1>
      <p class="text-lg text-shadow">홈 - 마이페이지 - 내가쓴글</p>
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
            <div class="mb-4">
              <a href="boardWrite.jsp">
                <div class="d-grid gap-2">
                  <button class="btn btn-lg btn-primary" type="submit"><i class="fas fa-plus me-3"></i>게시물 작성</button>
                </div>
              </a>    
            </div>
            <div class="offcanvas-body" style="overflow: scroll; height: 60rem;">
              
              <div class="card border-light"> 
                <div class="row no-gutters align-items-center">
                  <div class="col-12 col-lg-5 col-xl-4 m-0">
                    <a href="#">
                      <img src="${ path }/resources/img/mountain/내장산1.jpg" alt="" class="card-img p-3 rounded-xl" style="height: 11rem; object-fit: cover;">
                    </a>
                  </div>
                  <div class="col-12 col-lg-7 col-xl-8">
                    <div class="card-body py-lg-0 ms-1">
                      <div class="d-flex no-gutters justify-content-between">    
                        <ul class="list-group">
                          <li class="list-unstyled small p-0"><span class="fas fa-medal me-2"></span>방문후기</li>
                        </ul>
                        <div class="dropdown">
                          <a class="" id="" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fas fa-ellipsis-h"></span></a>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>수정</a>
                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"aria-hidden="true"></span>삭제</a>        
                          </div>
                        </div>
                      </div>
                      <a href="#">
                        <h2 class="h4">내장산으로 단풍 구경 다녀왔어요</h2>
                        <div class="col d-flex pl-0">
                          <span class="text-muted font-small me-4 ms-1"><span class="fas fa-eye me-2"></span>1</span>
                          <span class="text-muted font-small"><span class="fas fa-comment me-2"></span>1</span>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="m-0">

              <div class="card border-light"> 
                <div class="row no-gutters align-items-center">
                  <div class="col-12 col-lg-5 col-xl-4 m-0">
                    <a href="#">
                      <img src="${ path }/resources/img/none-img.png" alt="" class="card-img p-3 rounded-xl" style="height: 11rem; object-fit: contain;">
                    </a>
                  </div>
                  <div class="col-12 col-lg-7 col-xl-8">
                    <div class="card-body py-lg-0 ms-1">
                      <div class="d-flex no-gutters justify-content-between">    
                        <ul class="list-group">
                          <li class="list-unstyled small p-0"><span class="fas fa-medal me-2"></span>1 : 1 문의</li>
                        </ul>
                        <div class="dropdown">
                          <a class="" id="" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fas fa-ellipsis-h"></span></a>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>수정</a>
                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"aria-hidden="true"></span>삭제</a>        
                          </div>
                        </div>
                      </div>
                      <a href="#">
                        <h2 class="h4">휴양림 예약 취소 가능한가요?</h2>
                        <div class="col d-flex pl-0">
                          <span class="text-muted font-small me-4 ms-1"><span class="fas fa-eye me-2"></span>1</span>
                          <span class="text-muted font-small"><span class="fas fa-comment me-2"></span>1</span>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="m-0">

              <div class="card border-light"> 
                <div class="row no-gutters align-items-center">
                  <div class="col-12 col-lg-5 col-xl-4 m-0">
                    <a href="#">
                      <img src="${ path }/resources/img/none-img.png" alt="" class="card-img p-3 rounded-xl" style="height: 11rem; object-fit: contain;">
                    </a>
                  </div>
                  <div class="col-12 col-lg-7 col-xl-8">
                    <div class="card-body py-lg-0 ms-1">
                      <div class="d-flex no-gutters justify-content-between">    
                        <ul class="list-group">
                          <li class="list-unstyled small p-0"><span class="fas fa-medal me-2"></span>자유게시판</li>
                        </ul>
                        <div class="dropdown">
                          <a class="" id="" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fas fa-ellipsis-h"></span></a>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>수정</a>
                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"aria-hidden="true"></span>삭제</a>        
                          </div>
                        </div>
                      </div>
                      <a href="#">
                        <h2 class="h4">서울 근처 낮은 산 추천해주실 분</h2>
                        <div class="col d-flex pl-0">
                          <span class="text-muted font-small me-4 ms-1"><span class="fas fa-eye me-2"></span>1</span>
                          <span class="text-muted font-small"><span class="fas fa-comment me-2"></span>1</span>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="m-0">

              <div class="card border-light"> 
                <div class="row no-gutters align-items-center">
                  <div class="col-12 col-lg-5 col-xl-4 m-0">
                    <a href="#">
                      <img src="${ path }/resources/img/mountain/백암산2.jpg" alt="" class="card-img p-3 rounded-xl" style="height: 11rem; object-fit: cover;">
                    </a>
                  </div>
                  <div class="col-12 col-lg-7 col-xl-8">
                    <div class="card-body py-lg-0 ms-1">
                      <div class="d-flex no-gutters justify-content-between">    
                        <ul class="list-group">
                          <li class="list-unstyled small p-0"><span class="fas fa-medal me-2"></span>방문후기</li>
                        </ul>
                        <div class="dropdown">
                          <a class="" id="" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fas fa-ellipsis-h"></span></a>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>수정</a>
                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"aria-hidden="true"></span>삭제</a>        
                          </div>
                        </div>
                      </div>
                      <a href="#">
                        <h2 class="h4">주말에 백암산 다녀왔어요! 근처 맛집 추천까지</h2>
                        <div class="col d-flex pl-0">
                          <span class="text-muted font-small me-4 ms-1"><span class="fas fa-eye me-2"></span>1</span>
                          <span class="text-muted font-small"><span class="fas fa-comment me-2"></span>1</span>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="m-0">

              <div class="card border-light"> 
                <div class="row no-gutters align-items-center">
                  <div class="col-12 col-lg-5 col-xl-4 m-0">
                    <a href="#">
                      <img src="${ path }/resources/img/top100/도봉산4.jpg" alt="" class="card-img p-3 rounded-xl" style="height: 11rem; object-fit: cover;">
                    </a>
                  </div>
                  <div class="col-12 col-lg-7 col-xl-8">
                    <div class="card-body py-lg-0 ms-1">
                      <div class="d-flex no-gutters justify-content-between">    
                        <ul class="list-group">
                          <li class="list-unstyled small p-0"><span class="fas fa-medal me-2"></span>방문후기</li>
                        </ul>
                        <div class="dropdown">
                          <a class="" id="" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fas fa-ellipsis-h"></span></a>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>수정</a>
                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"aria-hidden="true"></span>삭제</a>        
                          </div>
                        </div>
                      </div>
                      <a href="#">
                        <h2 class="h4">100대 명산 도봉산 다녀왔어요</h2>
                        <div class="col d-flex pl-0">
                          <span class="text-muted font-small me-4 ms-1"><span class="fas fa-eye me-2"></span>1</span>
                          <span class="text-muted font-small"><span class="fas fa-comment me-2"></span>1</span>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="m-0">

              <div class="card border-light"> 
                <div class="row no-gutters align-items-center">
                  <div class="col-12 col-lg-5 col-xl-4 m-0">
                    <a href="#">
                      <img src="${ path }/resources/img/mountain/덕유산1.jpg" alt="" class="card-img p-3 rounded-xl" style="height: 11rem; object-fit: cover;">
                    </a>
                  </div>
                  <div class="col-12 col-lg-7 col-xl-8">
                    <div class="card-body py-lg-0 ms-1">
                      <div class="d-flex no-gutters justify-content-between">    
                        <ul class="list-group">
                          <li class="list-unstyled small p-0"><span class="fas fa-medal me-2"></span>자유게시판</li>
                        </ul>
                        <div class="dropdown">
                          <a class="" id="" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fas fa-ellipsis-h"></span></a>
                          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>수정</a>
                            <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"aria-hidden="true"></span>삭제</a>        
                          </div>
                        </div>
                      </div>
                      <a href="#">
                        <h2 class="h4">사진 속 산 어딘지 아시는분 계신가요?</h2>
                        <div class="col d-flex pl-0">
                          <span class="text-muted font-small me-4 ms-1"><span class="fas fa-eye me-2"></span>1</span>
                          <span class="text-muted font-small"><span class="fas fa-comment me-2"></span>1</span>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <hr class="m-0">

            </div> <!-- offcanvas -->
          </div> <!-- col9 -->
        </div> <!-- row -->
      </div> <!-- container -->
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