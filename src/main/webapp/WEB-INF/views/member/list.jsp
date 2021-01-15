<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
 <link href="/resources/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="boardList?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
</head>
<body>
<div id="nav">

</div>
 <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Member table
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
<div class="table-responsive">
 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
 <thead>
  <tr>
   <th>이름</th>
   <th>나이</th>
   <th>성별</th>
   <th>주소</th>
  </tr>
 </thead>
 
 <tbody >
  
  <c:forEach items="${lists}" var="list">
 <tr>

  <td>
  	<a href="/member/view?bno=${list.bno}"> ${list.name} </a>
  	</td>
  <td>${list.age}</td>
  <td>${list.sex}</td>
  <td>${list.home}</td>
 </tr>
</c:forEach>

 </tbody>
<button type="button" onclick="location.href='/member/write'">글쓰기</button> 
<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/member/list?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/member/list?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/member/list?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
	
</table>
</div>
</div>
</div>
</div>
 
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <!--  <script src="/resources/assets/demo/datatables-demo.js"></script> // 테이블 핸들링 js--> 
    
</body>
</html>