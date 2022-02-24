<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<body style="padding-top: 72px;">
  <!-- 메인 -->
  <section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p class="subtitle text-primary">새로운 글을 작성해주세요</p>
          <h1 class="h2 mb-5">게시판</h1>
        </div>
	      <form action="${ path }/community/boardWrite" method="get">
	        <div class="col-lg-8">
	          <div class="row">
	            <div class="col-md-4">
	              <label class="form-label" for="form_type">게시판 선택</label>
	              <select class="selectpicker form-control" name="type" id="type" data-style="btn-selectpicker"
	                title="" aria-describedby="propertyTypeHelp">
	                <option value="category_0">방문후기</option>
	                <option value="category_1">자유게시판</option>
	                <option value="category_2">1:1 문의 게시판</option>
	                <option value="category_3">스탬프인증</option>
	              </select><small class="form-text text-muted" id="propertyTypeHelp"></small>
	            </div>
	            <div class="col-md-4">
	              <div class="mb-4">
	                <label class="form-label" for="form_country">명산이름</label>
	                <select class="selectpicker form-control" name="topMountain" id="topMountain" data-style="btn-selectpicker"
	                  title=" " data-live-search="true">
	                  <option value="가리왕산">가리왕산</option>
	                  <option value="가리산">가리산</option>
	                </select>
	              </div>
	            </div>
	          </div> <!-- row -->
	        </div> <!-- col -->
	        <div class="row form-block py-sm-3">
	          <div class="col-lg-8">
	            <div class="mb-3">
	              <label class="form-label" for="form_street">제목</label>
	              <input class="form-control" name="title" id="title"><br>
	              <label class="form-label" for="form_street">작성자</label>
	              <input class="form-control" name="writerId" value="${loginMember.id}" readonly><br>
			        <label class="form-label" for="form_street">글작성</label>
			        	<textarea class="form-control border border-light-gray mb-4" name="content" id="content" placeholder="글을 작성해주세요" rows="8"
			        	  maxlength="1000" required></textarea>
			        <label class="form-label" for="form_street">첨부파일</label><br>
			            <input type="file" name="upfile">
	          	  <div class="col text-center text-sm-end"><input type="submit" class="btn btn-primary ps-3" value="저장하기"></div>
	            </div>
	          </div>
	        </div>
	      </form>
      </div> <!-- row -->
    </div>
  </section>
    <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>