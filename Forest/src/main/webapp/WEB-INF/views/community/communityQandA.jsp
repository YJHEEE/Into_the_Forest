<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
  <section class="py-6">
    <div class="container">
      <div class="row">
        <div class="d-flex justify-content-center align-items-center">
          <h1 class="hero-heading mb-0">문의사항</h1>
        </div>
        <ol class="breadcrumb ps-0 fs-5 justify-content-center my-5">
          <li class="mx-5"><a href="${path }/community/communityQandAFandA">FAQ</a></li>
          <li class="mx-5"><a href="${path }/community/communityQandANotice">NOTICE</a></li>
          <li class="mx-5 fw-bold active border-bottom border-dark pb-1">Q&A</li>
        </ol>
      </div>
      <div class="table mb-4">
        <form action="${path}/community/communityQandA" method="get">
          <div class="row px-4 mt-1">
            <div class="d-flex justify-content-between align-items-center">
              <div class="col-5 float-start align-items-center">
                <p class="mb-3 mb-md-0 fs-5"><i class="fa fa-clipboard-list me-1"></i>&nbsp총 게시글</p>
              </div>
              <div class="d-flex">
                <div class="me-2 align-items-center">
                  <select class="form-select focus-shadow-0" name="searchType">
                    <option value="0" disabled hidden selected>구분</option>
                    <option value="title">제목</option>
                    <option value="wrtier">작성자</option>
                  </select>
                </div>
                <div class="me-4">
                  <div class="input-label-absolute input-label-absolute-right">
                    <div class="label-absolute"><i class="fa fa-search"></i></div>
                    <input class="form-control pe-5" type="text" name="searchValue" placeholder="검색어를 입력해주세요." id="form_search">
                  </div>
                </div>
                <div class="float-end">
                  <a class="btn btn-primary float-end ps-3" href="${path}/community/boardWrite"><i class="fa-pen fa me-1"></i>글쓰기</a>
                </div>
              </div>
            </div>
          </div>
        </form>
        <table class="table text-gray-800 table-striped table-hover">
          <tr class="no-hover no-stripe border-top">
            <td class="py-4 text-center align-middle">No</td>
            <td class="py-4 text-center align-middle" colspan="2">제목</td>
            <td class="py-4 text-center align-middle">조회수</td>
            <td class="py-4 text-center align-middle">작성자</td>
            <td class="py-4 text-center align-middle">작성일</td>
          </tr>
          <c:if test="${list==null}">
          	<td class="py-4 w-50 align-" colspan="2">조회된 게시글이 없습니다.</td>
          </c:if>
          <c:if test="${list!=null}">
         	 <c:forEach var="board" items="${list}">
		         <tr>
		           <td class="py-4 text-center align-middle"><c:out value="${board.no}"/></td>
		           <td class="py-4 text-center w-40 align-middle" colspan="2"><c:out value="${board.title}"/></td>
		           <td class="py-4 text-center align-middle"><c:out value="${board.readCount}"/></td>
		           <td class="py-4 text-center align-middle"><c:out value="${board.writerId}"/></td>
		           <td class="py-4 text-center align-middle text-gray-600">22.02.08</td>
		         </tr>
	         </c:forEach>
          </c:if>
        </table>
      </div>
      <!-- 페이지 넘기기 및 검색바 -->
      <nav aria-label="Page navigation example">
			<ul
				class="pagination pagination-template d-flex justify-content-center">
				<li class="page-item"><a class="page-link" href="${path}/community/communityQandA?page=${pageInfo.prvePage}"> <i
						class="fa fa-angle-left"></i></a></li>
					<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" step="1" varStatus="status">
						<c:if test="${ pageInfo.currentPage == status.current}">
							<button class="page-link action" disabled><c:out value="${ status.current }"/></button>
						</c:if>
						<c:if test="${ pageInfo.currentPage != status.current}">
							<button class="page-link" onclick="location.href='${ path }/community/communityQandA?page=${ status.current }'">
								<c:out value="${ status.current }"/>
							</button>
						</c:if>
					</c:forEach>
				<li class="page-item"><a class="page-link" href="${ path }/community/communityQandA?page=${ pageInfo.nextPage }"> <i
						class="fa fa-angle-right"></i></a></li>
			</ul>
		</nav>
    </div>
  </section>
    <!-- 푸터 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>