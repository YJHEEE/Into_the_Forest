<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <!-- 메인 -->
  <section>
    <!-- 사진 슬라이더 -->
    <div class="swiper-container detail-slider slider-gallery">
      <div class="swiper-wrapper">
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산.jpg" data-toggle="gallery-top" title="Our street"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산.jpg" alt="Our street" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산2.jpg" data-toggle="gallery-top" title="Outside"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산2.jpg" alt="Outside" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산3.jpg" data-toggle="gallery-top" title="Rear entrance"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산3.jpg" alt="Rear entrance" style="object-fit: fill;" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산4.jpg" data-toggle="gallery-top" title="Kitchen"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산4.jpg" alt="Kitchen" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산5.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산5.jpg" alt="Bedroom" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산6.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산6.jpg" alt="Bedroom" /></a>
        </div>
      </div>
      <div class="swiper-pagination swiper-pagination-white"></div>
      <div class="swiper-button-prev swiper-button-white"></div>
      <div class="swiper-button-next swiper-button-white"></div>
    </div>
  </section>

  <!-- Hero Section2-->
  <section class="py-6">
    <div class="container">
      <div class="row">
        <div class="col-xl-8 col-lg-10 mx-auto">
          <div class="text-content">
            <c:forEach var="mount" items="${list}">
            <p class="text-primary mb-1 ms-1"><i class="fa-mountain fa me-1"></i>해발고도 <c:out value="${mount.height}"/>m</p>
            <h1 class="mb-4 display-4 alert-link mt-0"><c:out value="${mount.name}"/></h1>
            
            <div class="mb-0">
              <h4 class="mb-2">100대 명산 선정 이유</h4>
              <p>
                <c:out value="${mount.rs100}"/>
              </p>
            </div>
            <div class="mb-6">
              <figure class="figure">
                <img class="figure-img img-fluid" src="${path }/resources/img/top100/덕숭산6.jpg" alt="Example blog post alt." />
                <figcaption class="figure-caption text-center">
                  <c:out value="${mount.name}"/>
                </figcaption>
              </figure>
            </div>
            <div class="mb-0">
              <h4 class="mb-4 ps-3" style="border-left: 5px solid rgb(54, 52, 52);">산행 Point</h4>
              <p class="mb-4">
                <c:out value="${mount.point}"/>
              </p>
            </div>
            <div class="mb-6">
              <h5 class="mb-4">등산로</h5>
              <div class="map-wrapper-300">
                <div class="h-100" id="detailMap">
                  <a href="#"></a>
                </div>
              </div>
            </div>
            <div class="mb-6">
              <h4 class="mb-4 ps-3" style="border-left: 5px solid rgb(54, 52, 52);">상세정보</h4>
              <p class="mb-5">
                <c:out value="${mount.information}"/>
              </p>
            </div>

            <div class="mb-6">
              <h4 class="mb-4 ps-3" style="border-left: 5px solid rgb(54, 52, 52);">교통정보</h4>
              <p>
                <c:out value="${mount.transport}"/>
              </p>
            </div>
            </c:forEach>
          </div>
          <div class="row gallery mb-3 ms-n1 me-n1">
            <h5 class="mb-4">주변 시설</h5>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community1.png" data-fancybox="gallery" title="Our street"><img
                  class="img-fluid" src="${path }/resources/img/community1.png" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community2.jpg" data-fancybox="gallery" title="Outside"><img
                  class="img-fluid" src="${path }/resources/img/community2.jpg" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/complete2.png" data-fancybox="gallery" title="Rear entrance"><img
              	 class="img-fluid" src="${path }/resources/img/complete2.png" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community3.jpg" data-fancybox="gallery" title="Kitchen"><img
                  class="img-fluid" src="${path }/resources/img/community3.jpg" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community1.png" data-fancybox="gallery" title="Bedroom"><img
                  class="img-fluid" src="${path }/resources/img/community1.png" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community2.jpg" data-fancybox="gallery" title="Bedroom"><img
                  class="img-fluid" src="${path }/resources/img/community2.jpg" alt="..." /></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>