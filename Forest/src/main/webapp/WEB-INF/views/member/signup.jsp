<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>


<body style="padding-top: 50px;">
  <!-- 메인 -->
  <div class="container-fluid px-6">
    <div class="row min-vh-100 justify-content-center">
      <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
        <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
          <div class="mb-4"><img class="img-fluid mb-4" src="${path}/resources/img/logo/logo_name.png" alt="..."
              style="max-width: 10rem;">
            <p class="text-muted">회원가입을 통해 더욱 다양한 기능을 이용해보세요. 저희 페이지는 산, 둘레길 정보 외에도 다양한 커뮤니티 활동을 제공하고 있습니다.</p>
          </div>
          
          <form class="form-validate" name="memberEnrollFrm" action="${ path }/member/signup" method="POST">
             <div class="mb-4">
			   <label class="form-label" for="id">아이디</label>
			   <input class="form-control" name="id" id="id" type="text" placeholder="아이디" autocomplete="off" required data-msg="아이디를 입력해주세요." style="float: left;">
			   <input class="form-control" type="button" name="checkDuplicate1" id="checkDuplicate1" value="중복검사" style="float: right;">
			</div>
            <div class="mb-4">
            <label class="form-label" for="pass">비밀번호</label>
              <input class="form-control" name="pass" id="pass" type="password" placeholder="비밀번호" type="password"
                required data-msg="비밀번호를 입력해주세요.">
            </div>
            <div class="mb-4">
	            <label class="form-label" for="pass2">비밀번호 확인</label>
	            <input class="form-control" name="pass2" id="pass2" type="password" placeholder="비밀번호 확인"
	              type="password" required data-msg="비밀번호를 입력해주세요.">
            </div>
            <div class="mb-4">
	            <label class="form-label" for="name">이름</label>
	            <input class="form-control" name="name" id="name" type="name" placeholder="이름"
	             required data-msg="이름을 입력해주세요.">
            </div>
            <div class="mb-4">
	            <label class="form-label" for="phone">전화번호</label>
	            <input class="form-control" name="phone" id="phone" type="tel" maxlength="11" placeholder="(-없이)숫자만 입력해주세요."
	              required data-msg="전화번호를 입력해주세요.">
            </div>
            <div class="d-grid gap-2">
            	<input type="submit" id="enrollSubmit" value="회원가입" class="btn btn-lg btn-primary"/>
            </div>
            <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
            <div class="d-grid gap-2">
              <button class="btn btn btn-outline-success btn-social d-flex align-items-center justify-content-center ps-0">
                <img class="me-4" src="${path }/resources/img/naver.png" style="width: 1rem;"/>
                <span class="d-none d-sm-inline">네이버 계정으로 가입하기</span>
              </button>
              <button
                class="btn btn btn-outline-warning btn-social d-flex align-items-center justify-content-center ps-1">
                <img class="me-4" src="${path }/resources/img/kakao.png" style="width: 1rem;"/>
                <span class="d-none d-sm-inline">카카오 계정으로 가입하기</span>
              </button>
            </div>
          </form>
          
        </div>
      </div>
    </div>
  </div>
   <!-- 푸터 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
  <!-- JavaScript files-->
	<script>
		$(document).ready(() => {
			$("#pass2").blur((event) => {
				let pass1 = $("#pass").val();			
				let pass2 = $(event.target).val();
				
				if(pass1.trim() != pass2.trim()) {
					alert("비밀번호가 일치하지 않습니다.");
					
					$("#pass").val("");
					$(event.target).val("");
					$("#pass").focus();
				}
			});
	    	
		    $("#enrollSubmit").on("click", () => {
		    	// TODO 전송하기 전에 각 영역에 유효성 검사로직을 추가하는 부분!
		    	//return false;
		    });
		    
		 	// 아이디 중복을 확인 처리 콜백함수
			$("#checkDuplicate1").on("click", () => {
				let id = $("#id").val().trim();
				
				if (id.length < 4) {
					alert("아이디는 최소 4글자 이상 입력하셔요.")
					
					return;
				}
				
				$.ajax({
					type: "get",
					url: "${path}/member/idCheck",
					dataType: "json",
					data: {
						id // 속성의 키값과 변수명이 동일할 경우
					},
					success: 
					function(data) {
						console.log(data);
						
						if(data.validate === true) {
							alert("이미 사용중인 아이디 입니다.");
						} else {
							alert("사용 가능한 아이디 입니다.");							
						}
					},
					error: function(e) {
						console.log(e);
					}
				});
			});
		});
	
	</script>
 	<!-- jQuery-->
	<script src="${path }/resources/vendor/jquery/jquery.min.js"></script>
	<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
	<script
		src="${path }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Magnific Popup - Lightbox for the gallery-->
	<script
		src="${path }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Smooth scroll-->
	<script
		src="${path }/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
	<!-- Bootstrap Select-->
	<script
		src="${path }/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
	<script src="${path }/resources/vendor/object-fit-images/ofi.min.js"></script>
	<!-- Swiper Carousel                       -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
	<script>
        var basePath = ''
    </script>
	<!-- Main Theme JS file    -->
	<script src="${path }/resources/js/theme.js"></script>
</body>

</html>