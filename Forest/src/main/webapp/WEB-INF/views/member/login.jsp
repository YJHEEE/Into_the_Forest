<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

	<!-- 메인 -->
	<div class="container-fluid px-6">
		<div class="row min-vh-100 justify-content-center">
			<div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
				<div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
					<div class="mb-4">
						<img class="img-fluid mb-4" src="${path }/resources/img/logo/logo_name.png" alt="로고" style="max-width: 13rem;">
					</div>
					<form class="form-validate" id="loginForm" action="${path}/member/login" method="post">
						<div class="mb-4">
							<label class="form-label" for="loginUserId">아이디</label> 
							<input class="form-control" name="userId" id="loginUserId" type="text" placeholder="아이디" autocomplete="off" required
								data-msg="Please enter your email">
						</div>
						<div class="mb-4">
							<label class="form-label" for="loginPassword">비밀번호</label> 
							<input class="form-control" name="userPwd" id="loginPassword"
								placeholder="비밀번호" type="password" required
								data-msg="Please enter your password">
						</div>
						<div class="d-grid">
							<input type="submit" value="로그인" class="btn btn-lg btn-primary">
						</div>
					</form>
					<hr class="my-3 hr-text letter-spacing-2" data-content="OR">
					<div class="d-grid gap-2">
						<button
							class="btn btn btn-outline-success btn-social d-flex align-items-center justify-content-center ps-0">
							<img class="me-4" src="${path }/resources/img/naver.png" style="width: 1rem;">
							</img> <span class="d-none d-sm-inline">네이버 로그인</span>
						</button>
						<button
							class="btn btn btn-outline-warning btn-social d-flex align-items-center justify-content-center ps-1">
							<img class="me-4" src="${path }/resources/img/kakao.png" style="width: 1rem;">
							</img> <span class="d-none d-sm-inline">카카오 로그인</span>
						</button>
					</div>
					<hr class="my-4">
					<p class="text-center">
						<small class="text-muted text-center">아직 회원이 아니신가요? &nbsp;
							<a href="${path}/member/signup">회원가입</a>
						</small>
					</p>
					<a class="close-absolute me-md-5 me-xl-6 pt-5" href="5main2.html">
						<svg class="svg-icon w-3rem h-3rem">
                          <use xlink:href="#close-1"> </use>
                      </svg>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>