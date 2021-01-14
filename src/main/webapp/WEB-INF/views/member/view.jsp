<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 조회</title>
<link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- <form method="post"> -->
<div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
 <div class="form-row">
      <div class="col-md-6">
         <div class="form-group">
<label class="small mb-1">이름</label>
<input class="form-control py-4" type="text" name="name" value="${viewlist.name}"/><br />
</div>
</div>

 <div class="col-md-6">
   <div class="form-group">
<label class="small mb-1">나이</label>
<input class="form-control py-4" type="text" name="age" value="${viewlist.age}"/><br />
</div>
</div>
</div>

<div class="form-group">
<label class="small mb-1">주소</label>
<input class="form-control py-4" type="text" name="home" value="${viewlist.home}"/><br />
</div>

 <div class="form-row">
 <div class="col-md-6">
  <div class="form-group">
<label class="small mb-1">전화</label>
<input class="form-control py-4" type="text" name="tel" value="${viewlist.tel}"/><br />
</div>
</div>

<div class="col-md-6">
 <div class="form-group">
<label class="small mb-1">성별</label>
<input class="form-control py-4" type="text" name="sex" value="${viewlist.sex}"/><br />
</div>
</div>
</div>

<!-- <!-- <button type="submit">작성</button>

</form> --> 
<div>
<button type="button" onclick="location.href='/member/modify?bno=${viewlist.bno}'">수정하기</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.href='/member/delete?bno=${viewlist.bno}'">삭제하기</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.href='/member/list'">메인</button>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
</body>
</html>