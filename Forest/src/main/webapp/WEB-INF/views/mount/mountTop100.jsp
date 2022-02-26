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
    <div class="container py-4 py-lg-6 text-white overlay-content text-center">
      <h1 class="display-5 fw-bold text-shadow">명산 top100</h1>
      <p class="text-lg text-shadow">홈 - 명산 top100</p>
    </div>
  </section>
  <!-- 메인 -->
  <section class="py-6">
    <div class="container">
      <form action="#">
        <div class="row mb-4">
          <div class="col-xl-6 col-md-6 mt-1">
            <ul class="list-inline">
              <li class="list-inline-item">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="cuisine_1" name="cuisine[]">
                  <label class="form-check-label" for="cuisine_1">강원도</label>
                </div>
              </li>
              <li class="list-inline-item">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="cuisine_1" name="cuisine[]">
                  <label class="form-check-label" for="cuisine_1">경기도</label>
                </div>
              </li>
              <li class="list-inline-item">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="cuisine_1" name="cuisine[]">
                  <label class="form-check-label" for="cuisine_1">경상도</label>
                </div>
              </li>
              <li class="list-inline-item">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="cuisine_1" name="cuisine[]">
                  <label class="form-check-label" for="cuisine_1">전라도</label>
                </div>
              </li>
              <li class="list-inline-item">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="cuisine_1" name="cuisine[]">
                  <label class="form-check-label" for="cuisine_1">제주도</label>
                </div>
              </li>
              <li class="list-inline-item">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="cuisine_1" name="cuisine[]">
                  <label class="form-check-label" for="cuisine_1">충청도</label>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-xl-6 col-md-5">
            <div class=" float-lg-end ms-2">
              <button class="btn btn-primary" type="submit">검색</button>
            </div>
            <div class="input-label-absolute input-label-absolute-right float-lg-end">
              <div class="label-absolute"><i class="fa fa-search"></i></div>
              <input class="form-control pe-6" type="search" name="search" placeholder="산 이름을 입력해주세요" id="form_search">
            </div>
          </div>
        </div>
      </form>
      <div class="row">
        <!-- venue item-->
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="mountainDetail"></a><img class="bg-image" src="${path }/resources/img/top100/가리산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">가리산</h5>
                <p class="card-text text-sm">가리산은 강원도 춘천시와 홍천군에 걸쳐 있는 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/가리왕산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">가리왕산</h5>
                <p class="card-text text-sm">가리왕산은 강원도 정선군과 평창군에 걸쳐 있는 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/가지산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">가지산</h5>
                <p class="card-text text-sm">가지산은 울산광역시 울주군과 경남 밀양시, 경북 청도군의 경계에 있는 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/공작산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">공작산</h5>
                <p class="card-text text-sm">공작산은 강원도 홍천군에 있는 높이 887m의 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/계방산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">계방산</h5>
                <p class="card-text text-sm">계방산은 강원도 평창군과 홍천군 사이에 있는 높이 1,577m의 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/관악산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">관악산</h5>
                <p class="card-text text-sm">관악산은 서울특별시 관악구·금천구와 경기도 안양시·과천시의 경계에 있는 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/금산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">금산</h5>
                <p class="card-text text-sm">대전광역시와 접하고, 남쪽으로 전북 무주군, 진안군, 완주군과 도계를 이루는 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/남산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">남산</h5>
                <p class="card-text text-sm">남산은 서울특별시 중구와 용산구에 걸쳐 있는 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/깃대봉.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">깃대봉</h5>
                <p class="card-text text-sm">경춘선 청평역에서 서쪽으로 올려다 보이는 봉우리가 깃대봉</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/내연산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">내연산</h5>
                <p class="card-text text-sm">경상북도 포항시 송라면(松羅面)·죽장면 및 영덕군 남정면 경계에 있는 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/대둔산.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">대둔산</h5>
                <p class="card-text text-sm">노령산맥 줄기가 김제의 만경평야를 향하다 금산지역에서 독립된 산군을 이루며 절경을 이룬 산</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
          <div class="swiper-slide h-auto px-2">
            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
              <a class="tile-link" href="category.html"></a><img class="bg-image" src="${path }/resources/img/top100/대암산3.jpg"
                alt="Card image">
              <div class="card-body overlay-content">
                <h5 class="card-title text-shadow text-uppercase">대암산</h5>
                <p class="card-text text-sm">강원도 양구군 동면·해안면·남면과 인제군 인제읍·서화면·북면에 걸쳐 있는 산</p>
              </div>
            </div>
          </div>
        </div>
        <!-- Pagination -->
        <nav aria-label="Page navigation example">
          <ul class="pagination pagination-template d-flex justify-content-center">
            <li class="page-item">
              <a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item">
              <a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>