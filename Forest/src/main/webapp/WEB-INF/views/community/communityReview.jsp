<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

 <!-- 메인 -->
  <section class="position-relative py-6"><img class="bg-image" src="${path }/resources/img/community15.jpg" alt="">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="card">
            <div class="card-body p-5"><strong class="text-uppercase text-secondary d-inline-block mb-2 text-sm">Best
                Review</strong>
              <h2 class="mb-3">10월에 방문했던 지리산</h2>
              <p class="text-gray-500 text-sm my-2"><i class="far fa-clock me-2"></i>2021.11.01 <i class="me-4"></i><i
                  class="fas fa-user me-2"></i>gildong</p>
              <p class="text-muted">안녕하세요 올해 2021년 첫 지리산을 다녀왔습니다. 다른 산 등산하느라 올해는 자그마치 10월에 처음 다녀왔네요. 역시 명산은 명산인가 봅니다. 올해
                작은 산 큰 산 구분 지을거 없이 많이 다녔는데 멋있기가 정말 남다르네요.</p><a class="btn btn-link p-0" href="${path}/community/communityReviewPost">더보기 <i
                  class="fa fa-long-arrow-alt-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="pb-6 mt-5 ">
    <div class="container my-5">
      <div class="row">
        <div class="col-xl-3">
          <button class="btn btn-primary" type="submit" onclick="location.href='${path}/community/boardWrite';">글작성</button>
        </div>
        <form action="${path}/community/communityReview" method="get">
        <div class="col-xl-3">
          <select class="selectpicker form-control" name="category" id="category" data-style="btn-selectpicker"
            title=" ">
            <option style="display: none;" selected>카테고리</option>
            <option value="loadNMount_review">산 </option>
            <option value="forest_review">휴양림</option>
            <option value="loadNMount_review">둘레길</option>
            <option value="loadNMount_review">자전거길</option>
          </select>
        </div>
        <div class="col-xl-6">
          <div class="input-group">
            <input class="form-control" type="text" name="title" placeholder="검색어를 입력해주세요." id="form_search">
            <button class="btn btn-primary" style="float: right;" type="submit">검색</button>
          </div>
        </div>
        </form>
      </div>
    </div>
    <div class="container">
      <div class="row mb-5">
        <!-- blog item-->
        <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
          <div class="card shadow border-0 h-100">
            <!--<a href="post.html"><img class="img-fluid card-img-top" src="img/4윤정희/서울둘레길.png" alt="..." /></a>-->
            <a href="post.html"><img class="img-fluid card-img-top avatar-lg" src="${path }/resources/img/community.jpg" alt="..."
                style="width: 100%; height: 12rem; object-fit: cover;" /></a>
            <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">둘레길 </a>
              <h5 class="my-2"><a class="text-dark" href="post.html">서울둘레길 네 차례 완주한 코스별 후기 </a></h5>
              <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>2018.04.19 <i class="me-4"></i><i
                  class="fas fa-user me-2"></i>sunshine2</p>
              <p class="my-2 text-muted text-sm">서울둘레길을 네번째 완주하는데는 해를 두번 넘겼습니다. 2016년 9월 20일 화요일에 네 번째 서울 둘레길 걷기에 나서서
                2018년 ...</p><a class="btn btn-link ps-0" href="post.html">Read more<i
                  class="fa fa-long-arrow-alt-right ms-2"></i></a>
              <!--후기링크 https://blog.naver.com/hyeon2052/221256412319-->
            </div>
          </div>
        </div>
        <!-- blog item-->
        <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
          <div class="card shadow border-0 h-100">
            <a href="post.html"><img class="img-fluid card-img-to avatar-lg" src="${path }/resources/img/community11.png" alt="..."
                style="width: 100%; height: 12rem; object-fit: cover;" /></a>
            <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">산 </a>
              <h5 class="my-2"><a class="text-dark" href="post.html">[한라산 백록담]등산초보의 한라산 성판악코스 등반후기</a></h5>
              <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>2021.04.10 <i class="me-4"></i><i
                  class="fas fa-user me-2"></i>2jelly</p>
              <p class="my-2 text-muted text-sm">등산 초보가 추천하는 한라산 준비 언젠가 살면서 한라산 등반은 한번 해보고 싶었는데 올해 나이들고 체력이 떨어짐을 크게
                실감하고...</p><a class="btn btn-link ps-0" href="post.html">Read more<i
                  class="fa fa-long-arrow-alt-right ms-2"></i></a>
              <!--후기링크 https://blog.naver.com/1219yammy/222304977319-->
            </div>
          </div>
        </div>
        <!-- blog item-->
        <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
          <div class="card shadow border-0 h-100">
            <a href="post.html"><img class="img-fluid card-img-top" src="${path }/resources/img/4윤정희/달음산.jpg" alt="..." /></a>
            <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">휴양림 </a>
              <h5 class="my-2"><a class="text-dark" href="post.html">[부산] 국립 달음산 자연휴양림 1박 후기</a></h5>
              <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>2021.07.18 <i class="me-4"></i><i
                  class="fas fa-user me-2"></i>two-track</p>
              <p class="my-2 text-muted text-sm">지난달 국립 달음산 자연 휴양림에 산책을 다녀온 뒤 괜찮아 보여 1박을 하였다. 숙소 달음산 자연휴양림
                은도끼(2층)(29m^2)|기준5인 장점...</p><a class="btn btn-link ps-0" href="post.html">Read more<i
                  class="fa fa-long-arrow-alt-right ms-2"></i></a>
              <!--후기링크 https://yellowstation.tistory.com/129-->
            </div>
          </div>
        </div>
        <!-- blog item-->
        <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
          <div class="card shadow border-0 h-100">
            <a href="post.html"><img class="img-fluid card-img-top" src="${path }/resources/img/4윤정희/섬진강.png" alt="..." /></a>
            <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">자전거길 </a>
              <h5 class="my-2"><a class="text-dark" href="post.html">섬진강자전거길 1박2일 종주 후기 feat.2021시즌오프</a></h5>
              <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>2021.12.14 <i class="me-4"></i><i
                  class="fas fa-user me-2"></i>sTricky</p>
              <p class="my-2 text-muted text-sm">안녕하세요 오랜만에 로드 라이딩 포스팅을 합니다. 사실 낙동강 종주도 하고 왔습니다만, 최근에 다녀온 섬진강자전거길 종주
                후기부터 올리게...</p><a class="btn btn-link ps-0" href="post.html">Read more<i
                  class="fa fa-long-arrow-alt-right ms-2"></i></a>
              <!--후기링크 https://stricky.tistory.com/518-->
            </div>
          </div>
        </div>
      </div>
      <!-- Pagination -->
      <nav aria-label="Page navigation example">
			<ul
				class="pagination pagination-template d-flex justify-content-center">
				<li class="page-item"><a class="page-link" href="${path}/community/communityReview?page=${pageInfo.prvePage}"> <i
						class="fa fa-angle-left"></i></a></li>
				<li class="page-item active"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="${ path }/community/communityReview?page=${ pageInfo.nextPage }"> <i
						class="fa fa-angle-right"></i></a></li>
			</ul>
		</nav>
    </div>
  </section>
  <!-- 푸터 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>