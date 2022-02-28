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
      <h1 class="display-5 fw-bold text-shadow">자전거길</h1>
      <p class="text-lg text-shadow">홈 - 둘레길/자전거길 - 자전거길</p>
    </div>
  </section>
  <!-- 메인 -->
  <section class="py-5">
    <form class="container">
      <div class="row">
        <div class="col-lg-7 col-xl-6 px-4 pb-4 ps-xl-4 pe-xl-4">
          <div class="text-block">
            <div class="d-flex">
              <div class="col-xl-10 col-md-4 mb-5 me-2">
                <div class="input-label-absolute input-label-absolute-right">
                  <div class="label-absolute"><i class="fa fa-search"></i></div>
                  <input class="form-control pe-4" type="search" name="search" placeholder="등산로명을 입력해주세요"
                    id="form_search">
                </div>
              </div>
              <div class="float-end">
                <button class="btn btn-primary px-3" type="submit">검색</button>
              </div>
            </div>
            <div class="d-flex justify-content-between align-items-center flex-column flex-md-row">
              <div class="me-3">
                <p class=" mb-md-0"><strong>12</strong> results found</p>
              </div>
              <div class="me-2">
                <label class="form-label me-2" for="form_sort">Sort by</label>
                <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                  <option value="sortBy_0">오름차순 </option>
                  <option value="sortBy_1">리뷰 많은순 </option>
                  <option value="sortBy_2">내림차순 </option>
                </select>
              </div>
            </div>
          </div>
          <div class="offcanvas-body mt-3" style="overflow :auto; width:38rem; height: 50rem;">
            <div class="text-block pb-lg-4">
              <div class="row">
                <div class="d-flex d-sm-flex align-items-center">
                  <div class="flex-shrink-0 me-4 me-xl-4">
                    <a href="#">
                      <img class="avatar avatar-xl p-1 rounded-5" src="${path}/resources/img/top100/마니산2.jpg">
                    </a>
                  </div>
                  <div class="mx-xl-2">
                    <h5 class="mb-0">금평리 구간</h5><br>
                    <p class="text-muted">전라북도 남원시, 전라남도 구례군, 경상남도 하동군ㆍ산청군ㆍ함양군</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="text-muted text-sm">리뷰 : 21개</div>
                      <button class="btn btn-outline-primary me-1 text-xs py-2 px-2" style="float: right;" type="button"
                        data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false"
                        aria-controls="leaveReview"><i class="fa-pen fa ms-1"></i>리뷰</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="collapse mt-4" id="leaveReview">
                <form class="form" id="contact-form" method="get" action="#">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="rating">별점</label>
                        <select class="form-select focus-shadow-0" name="rating" id="rating">
                          <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                          <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                          <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                          <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                          <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="mb-4">
                    <label class="form-label" for="review">리뷰</label>
                    <textarea class="form-control" rows="4" name="review" id="review" placeholder="리뷰를 작성해주세요"
                      required="required"></textarea>
                  </div>
                  <button class="btn btn-primary" type="submit">등록하기</button>
                  <div class="d-flex d-block d-sm-flex review">
                    <div>
                      <h6 class="mt-2 mb-0">이동혁</h6>
                      <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i
                          class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i
                          class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
                      </div>
                      <p class="text-muted text-sm">생각보다 길이 어려워요 그치만 풍경이 보기 좋아요</p>
                    </div>
                  </div>
                  <div class="d-flex d-block d-sm-flex review">
                    <div>
                      <h6 class="mt-2 mb-0">이동수</h6>
                      <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i
                          class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i
                          class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
                      </div>
                      <p class="text-muted text-sm">둘레길이 관리가 참 잘되어있어서 편했어요</p>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="text-block py-lg-4">
              <div class="row">
                <div class="d-flex d-sm-flex align-items-center">
                  <div class="flex-shrink-0 me-4 me-xl-4">
                    <a href="#">
                      <img class="avatar avatar-xl p-1 rounded-5" src="${path}/resources/img/top100/가지산4.jpg">
                    </a>
                  </div>
                  <div class="mx-xl-2">
                    <h5 class="mb-0">금평리 구간</h5><br>
                    <p class="text-muted">전라북도 남원시, 전라남도 구례군, 경상남도 하동군ㆍ산청군ㆍ함양군</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="text-muted text-sm">리뷰 : 21개</div>
                      <button class="btn btn-outline-primary me-1 text-xs py-2 px-2" style="float: right;" type="button"
                        data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false"
                        aria-controls="leaveReview"><i class="fa-pen fa ms-1"></i>리뷰</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="text-block py-lg-4">
              <div class="row">
                <div class="d-flex d-sm-flex align-items-center">
                  <div class="flex-shrink-0 me-4 me-xl-4">
                    <a href="#">
                      <img class="avatar avatar-xl p-1 rounded-5" src="${path}/resources/img/top100/금오산2.jpg">
                    </a>
                  </div>
                  <div class="mx-xl-2">
                    <h5 class="mb-0">금평리 구간</h5><br>
                    <p class="text-muted">전라북도 남원시, 전라남도 구례군, 경상남도 하동군ㆍ산청군ㆍ함양군</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="text-muted text-sm">리뷰 : 21개</div>
                      <button class="btn btn-outline-primary me-1 text-xs py-2 px-2" style="float: right;" type="button"
                        data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview"><i
                          class="fa-pen fa ms-1"></i>리뷰</button>
                      </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="text-block py-lg-4">
              <div class="row">
                <div class="d-flex d-sm-flex align-items-center">
                  <div class="flex-shrink-0 me-4 me-xl-4">
                    <a href="#">
                      <img class="avatar avatar-xl p-1 rounded-5" src="${path}/resources/img/top100/내연산3.jpg">
                    </a>
                  </div>
                  <div class="mx-xl-2">
                    <h5 class="mb-0">금평리 구간</h5><br>
                    <p class="text-muted">전라북도 남원시, 전라남도 구례군, 경상남도 하동군ㆍ산청군ㆍ함양군</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="text-muted text-sm">리뷰 : 21개</div>
                      <button class="btn btn-outline-primary me-1 text-xs py-2 px-2" style="float: right;" type="button"
                        data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview"><i
                          class="fa-pen fa ms-1"></i>리뷰</button>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5 col-xl-6 px-lg-0">
          <div class="map-wrapper-450 h-100" id="detailSideMap"></div>
        </div>
      </div>
    </form>
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>