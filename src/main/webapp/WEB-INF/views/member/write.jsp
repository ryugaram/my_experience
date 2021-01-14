<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
 <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
<form method="post">

 <div class="form-row">
      <div class="col-md-6">
         <div class="form-group">
<label class="small mb-1">이름</label>
<input class="form-control py-4" type="text" name="name" /><br />
</div>
</div>


 <div class="col-md-6">
   <div class="form-group">
<label class="small mb-1">나이</label>
<input class="form-control py-4" type="text" name="age" /><br />

   </div>
    </div>
  </div>

<div class="form-group">
<label class="small mb-1">집주소</label>
<input class="form-control py-4" type="text" name="home" /><br />
</div>

 <div class="form-row">
 <div class="col-md-6">
  <div class="form-group">
<label class="small mb-1">전화번호</label>
<input class="form-control py-4" type="text" name="tel" /><br />
</div>
</div>

<div class="col-md-6">
 <div class="form-group">
<label class="small mb-1">성별</label>
<input class="form-control py-4" type="text" name="sex" /><br />

</div>
</div>
</div>


<button type="submit">작성</button>
<button type="button" onclick="location.href='/member/list'">메인</button>
</form>
</div>
</div>
</div>
</div>
</div>
</main>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
</body>
</html>