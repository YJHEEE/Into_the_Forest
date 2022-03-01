<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Main Page" name="title"/>
</jsp:include>

  <!-- 경로 -->
  <section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(${path }/resources/img/community2.jpg)">
    <div class="container py-4 py-lg-6 text-white overlay-content text-center">
      <h1 class="display-5 fw-bold text-shadow">숲속으로</h1>
      <p class="text-lg text-shadow">숲 힐링 강아지 고양이 거북이</p>
    </div>
  </section>
  <!-- 메인 -->
    <div class="container">
      <div class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20">
        <form action="${path}/mount/mount?sort=ASC&min=0.00" method="POST">
          <div class="row">
            <div class="col-lg-4 d-flex align-items-center form-group">
              <input class="form-control border-0 shadow-0" type="search" name="name" placeholder="산이름을 입력하세요">
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group">
              <div class="input-label-absolute input-label-absolute-right w-100">
                <label class="label-absolute" for="location"><i class="fa fa-crosshairs"></i>
                  <div class="sr-only">City</div>
                </label>
                <input class="form-control border-0 shadow-0" type="text" name="areaArray" placeholder="지역" id="location">
              </div>
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
              <select class="selectpicker" title="산높이" data-style="btn-form-control" name="max">
                <option value="499.00">499m 이하</option>
                <option value="999.00">500m ~ 999m </option>
                <option value="1499.00">1000m ~ 1499m </option>
                <option value="5000.00">1500m 이상</option>
              </select>
            </div>
            <div class="col-lg-2 form-group mb-0">
              <button class="btn btn-primary btn-block h-100" type="submit">&nbsp&nbsp&nbsp검&nbsp&nbsp&nbsp색&nbsp&nbsp</button>
            </div>
          </div>
        </form>
      </div>
    </div>

    <!-- 메인 -->
    <section class="py-6">
      <div class="container">
        <!-- 100대 명산-->
        <div class="row mb-3">
          <div class="col-md-8">
            <p class="subtitle text-primary">한국의 100대 명산</p>
            <h2>100대 명산</h2>
          </div>
          <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="${path }/mountain/mountainTop100">더보기 <i class="fas fa-angle-double-right ml-2"></i></a></div>
        </div>
        <div class="row">
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-8">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path }/resources/img/mountain/내장산4.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="mountain/mountainDetail"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">내장산</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path }/resources/img/mountain/덕유산4.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">덕유산</h3>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-6">
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path }/resources/img/mountain/백암산2.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">백암산</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path }/resources/img/mountain/설악산4.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">설악산</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path }/resources/img/mountain/지리산3.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">지리산</h3>
              </div>
            </div>
          </div>
        </div>
        <!-- 1 2 3 텍스트 -->
        <div class="row">
          <div class="col-lg-4 px-5 position-relative">
            <p class="advantage-number">1</p>
            <div class="ps-lg-5">
              <h6 class="text-uppercase">healing</h6>
              <p class="text-muted text-sm mb-5 mb-lg-0">잠시나마 코로나를 벗어나 한적한 숲 속에서 자연경관을 즐기며 지친 마음과 몸을 힐링하기 위한 정보를 제공하기 위해 선정하였습니다.</p>
            </div>
          </div>
          <div class="col-lg-4 px-5 position-relative">
            <p class="advantage-number">2</p>
            <div class="ps-lg-5">
              <h6 class="text-uppercase">healthy</h6>
              <p class="text-muted text-sm mb-5 mb-lg-0">일상생활에서 쌓인 스트레스를 풀고 건강한 몸을 유지해보세요. 정상에 올랐을 때 성취감과 전경은 지친 몸과 마음을 위로해줍니다.</p>
            </div>
          </div>
          <div class="col-lg-4 px-5 position-relative">
            <p class="advantage-number">3</p>
            <div class="ps-lg-5">
              <h6 class="text-uppercase">together</h6>
              <p class="text-muted text-sm mb-5 mb-lg-0">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세</p>
            </div>
          </div>
        </div>        
      </div> <!-- container -->
    </section>
    <!-- 테마가 있는 자연 휴양림-->
    <section class="py-6 bg-gray-100"> 
      <div class="container">
        <div class="text-center pb-lg-4">
          <p class="subtitle text-secondary">Try something new today</p>
          <h2 class="mb-5">테마가 있는 자연휴양림</h2>
        </div>
      </div>
      <div class="container-fluid">
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-3">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <!-- 축령산 -->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(${path }/resources/img/mountain/내장산1.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">축령산<br>자연휴양림</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">휴양림</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3">경기도 남양주시 수동면 외방리에 소재한 축령산자연휴양림은 서울에서 약 1시간 거리에 있습니다. 주요 시설물로는 숲속의집 7동, 산림휴양관 1동 18실, 축령관 1동, 야영장 30개, 공중화장실 2동을 갖추고...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">숲속으로</a></p>
                    <p class="text-sm mb-0"><a class="mr-1" href="#">#축령산</a><a class="mr-1" href="#">&nbsp;&nbsp;#휴양림</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- 횡성 -->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(${path }/resources/img/mountain/내장산3.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">횡성<br>자연휴양림</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">휴양림</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3">횡성자연휴양림은 산세가 깊고 인적이 드문 청정지역에 위치하고 있습니다. 사계절 흐르는 계곡을 따라 숲속의 집 및 산책로가 조성되어 있습니다. 꽃이 피는 나무, 단풍이 멋있는 나무, 사철나무 등을 고르게...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">숲속으로</a></p>
                    <p class="text-sm mb-0"><a class="mr-1" href="#">#횡성</a><a class="mr-1" href="#">&nbsp;&nbsp;#휴양림</a><a class="mr-1" href="#">&nbsp;&nbsp;#한우</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- 흥부골 -->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(${path }/resources/img/mountain/덕유산3.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">흥부골<br>자연휴양림</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">휴양림</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3">많은 등산객과 관광객들이 찾는 지리산 둘레길은 지리산 둘레를 연결하는 장거리 도보길로, 지리산 주변의 옛길, 숲길, 논둑길 등을 연결해 만들어졌으며, 가능한 원형을 그대로 보존하면서 도보여행에...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">숲속으로</a></p>
                    <p class="text-sm mb-0"><a class="mr-1" href="#">#흥부골</a><a class="mr-1" href="#">&nbsp;&nbsp;#휴양림</a><a class="mr-1" href="#">&nbsp;&nbsp;#지리산</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- 청태산 -->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(${path }/resources/img/mountain/내장산4.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">청태산<br>자연휴양림</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i><i class="fa fa-star text-gray-300">                    </i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">휴양림</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> 해발 1,200m의 청태산을 주봉으로 하여 인공림과 천연림이 잘 조화된 울창한 산림을 바탕으로 한 국유림경영 시범단지로서 숲속에는 노루, 멧돼지, 토끼 등 각종 야생동물과 식물이 고루 서식하고 있어 자연박...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">숲속으로</a></p>
                    <p class="text-sm mb-0"><a class="mr-1" href="#">#청태산</a><a class="mr-1" href="#">&nbsp;&nbsp;#휴양림</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- 지리산 -->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(${path }/resources/img/mountain/백암산2.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">지리산<br>자연휴양림</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">휴양림</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3">지리산 자연휴양림은 행정구역상 경상남도 함양군 마천면 삼정리 음정에 속하며, 마천면은 하동군 화개면, 산청군 심장면, 함양군의 함양읍과 휴천면, 남원군의 산내면을 경계로 하고 있다. 휴양림의 남쪽에는 ...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">숲속으로</a></p>
                    <p class="text-sm mb-0"><a class="mr-1" href="#">#지리산</a><a class="mr-1" href="#">&nbsp;&nbsp;#휴양림</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
        <div class="text-center mt-5"><a class="btn btn-outline-primary" href="${path }/forest/forest">더보기</a></div>
      </div>
    </section>

    <!-- 커뮤니티-->
    <section class="pt-5">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-8">
            <h2>커뮤니티</h2>
            <p class="text-muted mb-0">방문후기게시판, 자유게시판, 1 : 1문의 게시판, 명산 스탬프 순위 등을 볼 수 있습니다<br>바로가기 버톤을 통해 지금 바로 함께 해보세요.</p>
          </div>
        </div>
      </div>
    </section>
    <!-- Divider Section-->
    <section class="py-6 py-lg-6 position-relative dark-overlay"><img class="bg-image" src="${path}/resources/img/community2.jpg" alt="커뮤니티"><!-- 11 13 15-->
      <div class="container">
        <div class="overlay-content text-white py-lg-5 text-center">
          <h1 class="display-4 font-weight-bold text-shadow mb-4">커뮤니티</h1>
          <p class="lead text-shadow mb-5">방문 후기 게시판과 자유게시판에서 사람들과 경험을 나누고<br>명산 스탬프로 등산의 재미를 더욱 느껴보세요.</p>
          <a class="btn btn-light" href="${path }/community/communityReview">바로가기</a>
        </div>
      </div>
    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>