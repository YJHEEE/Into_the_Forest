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
        <c:if test="${list!=null}">
        	<c:forEach var="mount" items="${list}">
		        <div class="col-sm-6 col-lg-3 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
		          <div class="swiper-slide h-auto px-2">
		            <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0">
		              <a class="tile-link" href="${path }/mount/mountDetail?name=${mount.name}"></a><img class="bg-image" src="${path }/resources/img/top100/가리산.jpg"
		                alt="Card image">
		              <div class="card-body overlay-content">
		                <h5 class="card-title text-shadow text-uppercase"><c:out value="${mount.name}"/></h5>
		                <p class="card-text text-sm"><c:out value="${mount.rs100}"/></p>
		              </div>
		            </div>
		          </div>
		        </div>
        	</c:forEach>
        </c:if>
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