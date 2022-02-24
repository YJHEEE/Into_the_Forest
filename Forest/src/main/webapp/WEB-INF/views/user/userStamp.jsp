<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <!-- 경로 -->
  <section class="d-flex align-items-center dark-overlay bg-cover"
    style="background-image: url(<%= request.getContextPath() %>/resources/img/breadcrumbs_img.jpg)">
    <div class="container py-4 py-lg-6 text-white overlay-content text-center">
      <h1 class="display-5 fw-bold text-shadow">스탬프</h1>
      <p class="text-lg text-shadow">홈 - 마이페이지 - 스탬프</p>
    </div>
  </section>
  <!-- 메인 -->
  <section class="py-5">
    <div class="container">
      <div class="row">
        <!-- 사이드 -->
        <aside class="col-lg-3 me-lg-auto">
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
        </aside>
        <!-- 메인 -->
        <div class="col-lg-9 ps-lg-5">
          <div class="text-block mb-0">
            <p class="subtitle text-sm text-primary">stamp</p>
            <h5 class="mb-4">스탬프 적립</h5>
            <div class="row">
              <div claszs="col-lg-10 col-xl-11 mx-auto text-center">
                <ul class="list-unstyled d-flex justify-content-between">  
	                <c:if test="${stamp_post == null }">
	                    <li><div class="col-auto text-center text-sm"><img class="avatar avatar-xl avatar-border-white mx-2 mb-2" src="${ path }/resources/img/stamp/stamp_grey2.png" alt=""><br>${ tamp_post.stamp_100name }</div></a></li>
	                    <li><div class="col-auto text-center text-sm"><img class="avatar avatar-xl avatar-border-white mx-2 mb-2" src="${ path }/resources/img/stamp/stamp_grey2.png" alt=""><br>${ tamp_post.stamp_100name }</div></a></li>
	                    <li><div class="col-auto text-center text-sm"><img class="avatar avatar-xl avatar-border-white mx-2 mb-2" src="${ path }/resources/img/stamp/stamp_grey2.png" alt=""><br>${ tamp_post.stamp_100name }</div></a></li>
	                    <li><div class="col-auto text-center text-sm"><img class="avatar avatar-xl avatar-border-white mx-2 mb-2" src="${ path }/resources/img/stamp/stamp_grey2.png" alt=""><br>${ tamp_post.stamp_100name }</div></a></li>
	                    <li><div class="col-auto text-center text-sm"><img class="avatar avatar-xl avatar-border-white mx-2 mb-2" src="${ path }/resources/img/stamp/stamp_grey2.png" alt=""><br>${ tamp_post.stamp_100name }</div></a></li>
	                </c:if>
	                <c:if test="${Stamp_Post != null }">
	                    <li>
	                    	<a href="${path }/community/communityStamp"><div class="col-auto text-center text-sm"><img class="avatar avatar-xl avatar-border-white hover-animate mx-2 mb-2" src="${ path }/resources/img/stamp/stamp_green2.png" alt="">
	                    	<br>${ tamp_post.stamp_100name }</div></a>
                    	</li>
	                </c:if>
                  </ul>
              </div>
              <button class="btn btn-link ps-0 text-primary collapsed" type="button" data-bs-toggle="collapse"
                data-bs-target="#personalDetails" aria-expanded="false" aria-controls="personalDetails">더보기</button>
            </div>
          </div>
          <div class="mb-3">
            <a href="${path }/community/boardWrite">
              <div class="d-grid gap-2">
                <button class="btn btn-lg btn-primary" type="submit"><i class="fas fa-plus me-4"></i>게시물 작성</button>
              </div>
            </a>
          </div>
          <div class="offcanvas-body" style="overflow: scroll; height: 60rem;">
	        <c:if test="${stamp_key == null}">
	           <h3 class="p-2 text-center">스탬프 인증 기록이 없습니다.</h3>
	        </c:if>
          	<c:if test="${stamp_key > 1}">
	           <c:forEach var="stamp" items="${ stamp_post }">
	            <div class="card border-light mb-4">
	              <div class="row no-gutters align-items-center">
	                <div class="col-12 col-lg-6 col-xl-4">
	                  <a href="#">
	                    <img src="${ path }/resources/img/community2.jpg" class="card-img p-2 rounded-xl">
	                  </a>
	                </div>
	                <div class="col-12 col-lg-6 col-xl-8">
	                  <div class="card-body py-lg-0">
	                    <div class="d-flex no-gutters mb-3 justify-content-between">
	                      <ul class="list-group mb-0">
	                        <li class="list-unstyled small p-0"><span class="fas fa-medal"></span>스탬프인증게시판</li>
	                      </ul>
	                      <div class="dropdown">
	                        <a class="" id="" href="#" data-bs-toggle="dropdown" aria-haspopup="true"
	                          aria-expanded="false"><span class="fas fa-ellipsis-h"></span></a>
	                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
	                          <a class="dropdown-item" href="#"><span class="fas fa-edit mr-2"></span>수정</a>
	                          <a class="dropdown-item text-danger" href="#"><span class="fa fa-trash mr-2"
	                              aria-hidden="true"></span>삭제</a>
	                        </div>
	                      </div>
	                    </div>
	                    <a href="#">
	                      <h2 class="h5">한라산 스탬프 인증해주세요</h2>
	                      <div class="col d-flex pl-0">
		                      <c:if test="${stamp_yesno == 1}">
		                        <span class="text-dark font-small me-3"><span class="fas fa-exclamation-triangle me-2"></span>인증대기</span>
		                      </c:if>
		                      <c:if test="${stamp_yesno == 2}">
		                        <span class="text-success font-small me-3"><span class="fas fa-check-circle me-2"></span>인증완료</span>
		                      </c:if>
		                      <c:if test="${stamp_yesno == 3}">
		                        <span class="text-danger font-small me-3"><span class="fas fa-times-circle me-2"></span>인증거부</span>
		                      </c:if>
	                      </div>
	                    </a>
	                  </div>
	                </div>
	              </div>
	             <hr>
	            </div>
			   </c:forEach>
           </c:if>
          </div> <!-- offcanvas -->
        </div> <!-- col9 -->
      </div> <!-- row -->
    </div> <!-- container -->
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>