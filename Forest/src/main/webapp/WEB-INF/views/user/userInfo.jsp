<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <!-- 경로 -->
  <section class="d-flex align-items-center dark-overlay bg-cover"
    style="background-image: url(${path}/resources/img/breadcrumbs_img.jpg)">
    <div class="container py-4 py-lg-6 text-white overlay-content text-center">
      <h1 class="display-5 fw-bold text-shadow">내정보</h1>
      <p class="text-lg text-shadow">홈 - 마이페이지 - 내정보</p>
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
          <div class="text-block mb-5 border-0">
	        <ol class="breadcrumb ps-0  justify-content-start">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item"><a href="user-account.html">My Page</a></li>
	          <li class="breadcrumb-item active">내 정보 수정</li>
	        </ol>
	        <h1 class="hero-heading m-1 mb-2">내 정보 수정</h1>
	        <p class="text-muted mb-3">내 정보를 최신 정보로 관리해 주세요.</p>          
           <form action="${path}/user/userInfo" method="POST">
              <div class="row pt-3">
                <div class="mb-4 col-md-6">
                  <label class="form-label" for="name">이름</label>
                  <input class="form-control" type="text" name="name" id="name" value="${loginMember.name}" readonly="readonly">
                </div>
                <div class="mb-4 col-md-6">
                  <label class="form-label" for="phone">번호</label>
                  <input class="form-control" type="text" name="phone" id="phone" value="${loginMember.phone}">
                </div>
                <div class="mb-4 col-md-6">
                  <label class="form-label" for="pass1">새로운 비밀번호</label>
                  <input class="form-control" type="password" name="pass1" id="pass1">
                </div>
                <div class="mb-4 col-md-6">
                  <label class="form-label" for="pass2">비밀번호 확인</label>
                  <input class="form-control" type="password" name="pass2" id="pass2">
                </div>
                <div class="mb-0 mt-1 col-md-6">
                	<label class="form-label mb-1" for="file">첨부파일</label><br>
                	<input type="file" name="upfile">
			    </div>
              </div>
             <button class="btn btn-primary my-4 pe-2 float-end" type="submit" id="updateSubmit"onclick="return validate();">개인정보 변경</button>
            </form>
          </div>
        </div> <!-- col -->
      </div> <!-- row -->
    </div> <!-- container-->
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
  <script>
		$(document).ready(() => {
			$("#updateSubmit").on("click", (e) => {
				let pass1 = $("#pass1").val();			
				let pass2 = $("#pass2").val();
				
				if(pass1.trim() != pass2.trim()) {
					alert("비밀번호가 일치하지 않습니다.");
					
					$("#pass1").val("");
					$("#pass2").val("");
					$("#pass1").focus();
					
					return false;
				}		
			});
		});
	</script>
  <!-- Dropzone.js-->
  <script src="${ path }/resources/vendor/dropzone/dropzone.js"></script>
  <!-- Dropzone Init-->
</body>

</html>